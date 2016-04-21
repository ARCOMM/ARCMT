/*
 * Author: Kingsley
 * Draws the object bounding box on the map
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Color <STRING>
 * 2: Alpha <FLOAT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [this, "ColorBlack", 0.5] call ARC_fnc_drawOnMap;
 *
 * Public: Yes
 */

if (!isServer) exitWith {};

params [
    ["_object", objNull, [objNull]],
    ["_color", "ColorBlack", [""]],
    ["_alpha", 0.75, [0.00]]
];

private _box = boundingBoxReal _object;
private _pos = getPos _object;
private _uname = format ["bounding_box_marker_%1", str _pos];
private _marker = createMarker [_uname, _pos];

_marker setMarkerPos _pos;
_marker setMarkerBrush "Solid";
_marker setMarkerShape "RECTANGLE";
_marker setMarkerColor _color;
_marker setMarkerAlpha _alpha;
_marker setMarkerDir (getDir _object);

_marker setMarkerSize [
    (_object modelToWorldVisual (_box select 0)) distance (_object modelToWorldVisual [(_box select 1 select 0), (_box select 0 select 0), (_box select 0 select 0)]),
    (_object modelToWorldVisual (_box select 0)) distance (_object modelToWorldVisual [(_box select 0 select 0), (_box select 0 select 0), (_box select 1 select 2)])
];

nil