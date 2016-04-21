private ["_unit","_radio","_radioClassname"];

_unit = _this select 0;
_radio = _this select 1;
_radioClassname = "";

if (!local _unit) exitWith {};

switch (_radio) do {
    case ("152"): { _radioClassname = "ACRE_PRC152"; };
    case ("148"): { _radioClassname = "ACRE_PRC148"; };
    case ("343"): { _radioClassname = "ACRE_PRC343"; };
};

if (_unit canAdd _radioClassname) then {
    _unit addItem _radioClassname;
    hint "Radio added";
    [["ARCMF", ["Log", (format ["%1 (%2) retrieved a %3 from the map.", (name _unit), ([_unit] call ARC_fnc_getUnitType), _radioClassname])]], "ARC_fnc_broadcastDiary", true] call BIS_fnc_MP;
} else {
    hint "Not enough room in your inventory to add that radio";
    [["ARCMF", ["Log", (format ["%1 (%2) tried to retrieve a %3 from the map.", (name _unit), ([_unit] call ARC_fnc_getUnitType), _radioClassname])]], "ARC_fnc_broadcastDiary", true] call BIS_fnc_MP;
};
