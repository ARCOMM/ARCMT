private ["_unit","_camo","_uniformItems","_vestItems","_backpackItems","_hasBackpack","_uniformClass","_vestClass","_backpackClass"];

_unit = _this;
_camo = getText (missionConfigFile >> "CfgSandbox" >> worldName >> "camouflage");
_camo = toLower _camo;

if (_camo == "default" || side _unit != west) exitWith {};

_unit setVariable ["ARC_switchCamo_done", false, true];
waitUntil {(_unit getVariable ["f_var_assignGear_done", false])};

_uniformItems = uniformItems _unit;
_vestItems = vestItems _unit;
_backpackItems = backpackItems _unit;
_hasBackpack = if ((backpack _unit) == "") then {false} else {true};

_uniformClass = switch (_camo) do {
	case "woodland": {"rhs_uniform_FROG01_m81"};
	case "desert": {"rhs_uniform_FROG01_d"};
	case "mtp": {"MNP_CombatUniform_Scorpion_A"};
};

_vestClass = switch (_camo) do {
	case "woodland": {"V_PlateCarrier2_rgr"};
	case "desert": {"MNP_Vest_USMC_2"};
	case "mtp": {"MNP_Vest_Scorpion_1"};
};

_backpackClass = switch (_camo) do {
	case "woodland": {"B_Kitbag_rgr"};
	case "desert": {"B_Kitbag_cbr"};
	case "mtp": {"B_Kitbag_rgr"};
};

if (_uniformClass != "") then {
	removeUniform _unit;
	_unit forceAddUniform _uniformClass;
	{_unit addItemToUniform _x;} forEach _uniformItems;
};

if (_vestClass != "") then {
	removeVest _unit;
	_unit addVest _vestClass;
	{_unit addItemToVest _x;} forEach _vestItems;
};

if (_backpackClass != "" && _hasBackpack) then {
	removeBackpack _unit;
	_unit addBackpack _backpackClass;
	{_unit addItemToBackpack _x;} forEach _backpackItems;
};

_unit setVariable ["ARC_switchCamo_done", true, true];