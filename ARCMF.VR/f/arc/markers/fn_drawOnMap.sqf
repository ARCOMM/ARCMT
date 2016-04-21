/*
 * Author: Kingsley
 * Draws the object bounding box on the map
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Color <ARRAY>
 *
 * Return Value:
 * None
 *
 * Example:
 * [this, [0,0,0,1]] call ARC_fnc_drawOnMap;
 *
 * Public: Yes
 */

if (!isServer) exitWith {};

params [
    ["_object", objNull, [objNull]],
    ["_color", [0,0,0,1], [[]]]
];

private _box = boundingBoxReal _object;
private _pos = getPos _object;
private _uname = format ["bounding_box_marker_%1", str _pos];
private _marker = createMarker [_uname, _pos];

_marker setMarkerSize [
    (_object modelToWorldVisual (_box select 0 select 0)) distance (_object modelToWorldVisual (_box select 1 select 0)),
    (_object modelToWorldVisual (_box select 0 select 2)) distance (_object modelToWorldVisual (_box select 1 select 2))
];
