private ["_faction","_typeofUnit","_unit","_file"];

_typeofUnit = toLower (_this select 0);
_unit = _this select 1;

_faction = toLower (faction _unit);
if (count _this > 2) then {
	_faction = toLower (_this select 2);
};

if !(local _unit) exitWith {};

_unit setVariable ["f_var_assignGear", _typeofUnit, true];
_unit setVariable ["f_var_assignGear_done", false, true];

if (f_var_debugMode == 1) then {
	_unit sideChat format ["DEBUG (assignGear.sqf): unit faction: %1", _faction];
};

if (_faction == "blu_f") then {
	#include "f_assignGear_nato.sqf"
};

if (_faction == "opf_f") then {
	#include "f_assignGear_csat.sqf"
};

if (_faction == "ind_f") then {
	#include "f_assignGear_aaf.sqf";
};

_unit setVariable ["f_var_assignGear_done", true, true];