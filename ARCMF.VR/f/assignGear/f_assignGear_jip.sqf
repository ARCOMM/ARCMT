// When a player joins in progress, they get assigned the rifleman loadouts (r). To change this edit line 6.
// This file does not need to be edited by the mission maker. If left untouched, make sure there is always the rifleman loadout defined in each side's file

if ((_this select 1) && !(player getVariable ["f_var_assignGear_done", false])) then {
    waitUntil {!isNull player};
    ["r", player] call f_fnc_assignGear;
};

ARC_reinforcementPosition = getPos player;
