/*
 * Author: Kingsley
 * Gets the themes assign gear for given side
 *
 * Arguments:
 * 0: Side <SIDE>
 *
 * Return Value:
 * File path <STRING>
 *
 * Example:
 * [west] call f_fnc_getThemeAssignGear;
 *
 * Public: No
 */

params [["_side", sideUnknown]];

private _faction = _side call ARC_fnc_getFactionFromSide;

(getText (missionConfigFile >> "CfgSandboxThemes" >> arc_param_theme))
