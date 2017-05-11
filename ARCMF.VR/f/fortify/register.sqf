if (!isServer) exitWith {};

private _config = (missionConfigFile >> "CfgARCMF" >> "Fortify");

{
    _x params ["_faction", "_side"];

    private _budget = getNumber (_config >> _faction >> "budget");
    private _objects = getArray (_config >> _faction >> "objects");

    [_side, _budget, _objects] call acex_fortify_fnc_registerObjects;
} forEach [
    ["BLUFOR", west],
    ["OPFOR", east],
    ["INDFOR", resistance],
    ["CIVILIAN", civilian]
];
