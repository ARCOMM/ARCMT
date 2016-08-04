/*
 * Author: Kingsley
 * Sets up the client when they have loaded into an adversarial mission
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ARC_adv_fnc_setupClient;
 *
 * Public: No
 */

#include "script_component.hpp"

if (!ARC_isAdv) exitWith {};

[player] call FUNC(resetPlayerToStart);

private _markerName = switch (side group player) do {
    case west: {"respawn_west"};
    case east: {"respawn_east"};
    case resistance: {"respawn_guerrila"};
};

// Groups
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

// Arsenal crate
private _arsenal = call compile format ["ARC_adv_%1_arsenal", _markerName];
[_arsenal] call FUNC(addArsenalActions);

// Direction
player setDir (player getDir _arsenal);

// Disable firing
[true] call f_fnc_safety;

// Disable ACRE spectator
[false] call acre_api_fnc_setSpectator;
