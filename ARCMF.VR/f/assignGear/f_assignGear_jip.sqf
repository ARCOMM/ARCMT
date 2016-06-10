// When a player joins in progress, they get assigned the rifleman loadouts (r). To change this edit line 6.
// This file does not need to be edited by the mission maker. If left untouched, make sure there is always the rifleman loadout defined in each side's file

if (didJIP && !(player getVariable ["f_var_assignGear_done", false])) then {
    [{!isNull player}, {
        ["r", player] call f_fnc_assignGear;
    }, []] call CBA_fnc_waitUntilAndExecute;
};

ARC_reinforcementPosition = getPos player;
