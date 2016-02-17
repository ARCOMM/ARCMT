/*
	Author: Kingsley
	Description: Add a marker that tracks a certain unit until that unit dies
	Parameter(s):
		0: OBJECT - unit to track
		1: SCALAR - delay in seconds
		2: SCALAR - accuracy in meters (0 is 100% accurate)
		3: ARRAY - marker parameters
			0: STRING - shape (https://community.bistudio.com/wiki/setMarkerShape)
			1: STRING - brush (https://community.bistudio.com/wiki/setMarkerBrush)
			2: STRING - type (https://community.bistudio.com/wiki/setMarkerType)
			3: STRING - color (https://community.bistudio.com/wiki/setMarkerColor)
			4: SCALAR - alpha (https://community.bistudio.com/wiki/setMarkerAlpha)
			5: STRING - text (https://community.bistudio.com/wiki/setMarkerText)
			6: ARRAY - size (https://community.bistudio.com/wiki/setMarkerSize)
	Returns: Marker name
	Example: _marker = [player, 60, 100, ["ELLIPSE", "SolidFull", "", "ColorRed", 0.75, "", [200, 200]]] call ARC_fnc_addTrackingMarker;
*/

if (!isServer) exitWith {};

params ["_unit", "_delay", "_accuracy", "_marker"];

_pos = if (_accuracy > 0) then { ([(getPos _unit), _accuracy] call CBA_fnc_randPos) } else { (getPos _unit) };
_mrkName = format ["TrackingMarker_%1", name _unit];
_mrk = createMarker [_mrkName, _pos];

if (count _marker == 0) then { _marker = ["ELLIPSE", "SolidFull", "", "ColorRed", 1, "", [200, 200]]; };
if (!isNil (_marker select 0)) then { _mrk setMarkerShape (_marker select 0); };
if (!isNil (_marker select 1)) then { _mrk setMarkerBrush (_marker select 1); };
if (!isNil (_marker select 2)) then { _mrk setMarkerType (_marker select 2); };
if (!isNil (_marker select 3)) then { _mrk setMarkerColor (_marker select 3); };
if (!isNil (_marker select 4)) then { _mrk setMarkerAlpha (_marker select 4); };
if (!isNil (_marker select 5)) then { _mrk setMarkerText (_marker select 5); };
if (!isNil (_marker select 6)) then { _mrk setMarkerSize (_marker select 6); };

[_unit, _delay, _accuracy, _mrkName] spawn {
	params ["_unit", "_delay", "_accuracy", "_mrkName"];
	
	while {alive _unit} do {
		_pos = if (_accuracy > 0) then { ([(getPos _unit), _accuracy] call CBA_fnc_randPos) } else { (getPos _unit) };
		_mrkName setMarkerPos _pos;
		sleep _delay;
	};

	deleteMarker _mrkName;
};

_mrkName