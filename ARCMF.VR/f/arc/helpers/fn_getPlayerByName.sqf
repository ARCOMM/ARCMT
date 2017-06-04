/*
 * Author: Kingsley
 * Gets the player object by their name.
 * Does not need to be full name.
 * Case insensitive.
 *
 * Arguments:
 * 0: Name <STRING>
 *
 * Return Value:
 * Player <OBJECT> or NULL if not found
 *
 * Example:
 * ["king"] call ARC_fnc_getPlayerByName;
 *
 * Public: Yes
 */

params [["_name", "", [""]]];

if (_name isEqualTo "") exitWith {objNull};

((([] call CBA_fnc_players) select {
    ([_name, name _x, false] call BIS_fnc_inString)
}) param [0, objNull]);
