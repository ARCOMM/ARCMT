/*
 * Author: Kingsley
 * Handles the player respawn event
 *
 * Arguments:
 * See EH
 *
 * Return Value:
 * None
 *
 * Example:
 * N/A
 *
 * Public: No
 */

#include "script_component.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

[_newUnit, _oldUnit, _respawn, _respawnDelay, true] call f_fnc_CamInit;