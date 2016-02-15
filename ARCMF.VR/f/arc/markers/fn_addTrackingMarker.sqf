// If this isn't being executed on the server, exit script
if (!isServer) exitWith {};

private ["_unit","_delay"];

_unit = _this select 0;
_delay = _this select 1;

// Create the marker
_markerName = format ["TrackingMarker_%1", name _unit];
_marker = createMarker [_markerName, (getPos _unit)];
_marker setMarkerShape "ICON";
_marker setMarkerType "mil_dot";
_marker setMarkerColor "ColorRed";

// Execute this code in a scheduled environment
[_unit, _delay, _markerName] spawn {
	// Every X seconds update the marker position if the unit is alive
	while {alive (_this select 0)} do {
		(_this select 2) setMarkerPos (getPos (_this select 0));
		sleep (_this select 1);
	};
	
	// Unit died, delete the marker
	deleteMarker (_this select 2);
};

// Return the marker name
_markerName