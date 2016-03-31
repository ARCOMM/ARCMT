/*
 * Author: Kingsley
 * Adds given unit to the tracer list (if not already cached)
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [someUnit] call f_fnc_addToTracers;
 *
 * Public: No
 */

params [["_unit", objNull]];

if (isNull _unit || {!alive _unit}) exitWith {};

_color = switch (side _unit) do {
    case west: {f_cam_blufor_color};
    case east: {f_cam_opfor_color};
    case resistance: {f_cam_indep_color};
    case civilian: {[civilian] call BIS_fnc_sideColor};
    case sideUnknown: {[sideUnknown] call BIS_fnc_sideColor};
};

[_unit, _color, 1, 4, 800, 1, false] call hyp_fnc_traceFire;

if !(_unit in f_cam_cachedTracers) then {
    f_cam_cachedTracers pushBack _unit;
};
