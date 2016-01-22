private ["_faction","_typeofUnit","_unit","_file"];

_typeofUnit = toLower (_this select 0);
_unit = _this select 1;

_faction = toLower (faction _unit);
if (count _this > 2) then {
  _faction = toLower (_this select 2);
};

if !(local _unit) exitWith {};

_unit setVariable ["f_var_assignGear",_typeofUnit,true];
_unit setVariable ["f_var_assignGear_done",false,true];

if (f_var_debugMode == 1) then {
	_unit sideChat format ["DEBUG (assignGear.sqf): unit faction: %1",_faction];
};

if (_faction == "blu_f") then {
	_file = format ["f\assignGear\nato\%1.sqf", _typeofUnit];
	_unit execVM _file;
	_unit unlinkItem "ItemRadioAcreFlagged";
};

if (_faction == "opf_f") then {
	_file = format ["f\assignGear\csat\%1.sqf", _typeofUnit];
	_unit execVM _file;
	_unit unlinkItem "ItemRadioAcreFlagged";
};

if (_faction == "ind_f") then {
	_file = format ["f\assignGear\aaf\%1.sqf", _typeofUnit];
	_unit execVM _file;
	_unit unlinkItem "ItemRadioAcreFlagged";
};

_unit setVariable ["f_var_assignGear_done",true,true];

if (isNil "_file") then {
	player globalchat format ["DEBUG (assignGear.sqf): Faction %1 is not defined.",_faction];
} else {
 	if (f_var_debugMode == 1) then	{
		player sideChat format ["DEBUG (assignGear.sqf): Gear for %1: %1 slot selected.",_unit,_faction,_typeofUnit];
	};
};
