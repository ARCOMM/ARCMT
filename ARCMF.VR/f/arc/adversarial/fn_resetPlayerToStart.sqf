/*
 * Author: Kingsley
 * Resets the given players position to the start location
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call ARC_adv_fnc_resetPlayerToStart;
 *
 * Public: No
 */

#include "script_component.hpp"

params [["_unit", objNull, [objNull]]];

if (isNull _unit) exitWith {};

private _markerName = switch (side group _unit) do {
    case west: {"respawn_west"};
    case east: {"respawn_east"};
    case resistance: {"respawn_guerrila"};
};

// Position
private _randPos = [(getMarkerPos _markerName), 5] call CBA_fnc_randPos;
_unit setPos _randPos;
