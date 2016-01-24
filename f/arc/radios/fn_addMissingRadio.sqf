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
} else {
	hint "Not enough room in your inventory to add that radio";
};
