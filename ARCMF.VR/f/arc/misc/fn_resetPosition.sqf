/*
 * Author: Kingsley
 * Resets the given units position to the nearest safest location at ground level
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call ARC_fnc_resetPosition;
 *
 * Public: Yes
 */

params [["_unit", objNull, [objNull]]];

if (isNull _unit) exitWith {};

_unit = vehicle _unit;

private _safePos = (getPosATL _unit) findEmptyPosition [0, 25, (typeOf _unit)];

if (count _safePos == 3) exitWith {
    _safePos set [2, 0];
    _unit setPosATL _safePos;
};