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

if (!ARC_isAdv) exitWith {};

private _markerName = switch (side group player) do {
    case west: {"respawn_west"};
    case east: {"respawn_east"};
    case resistance: {"respawn_guerrila"};
};

// Position
private _randPos = [(getMarkerPos _markerName), 5] call CBA_fnc_randPos;
player setPos _randPos;

// Groups
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

// Arsenal crate
private _arsenal = call compile format ["ARC_adv_%1_arsenal", _markerName];
[_arsenal] call ARC_adv_fnc_addArsenalActions;

// Direction
player setDir (player getDir _arsenal);