private _unit = _this;
private _camo = toLower (getText (missionConfigFile >> "CfgSandbox" >> worldName >> "camouflage"));

if (_camo == "default" || side _unit != west) exitWith {};

_unit setVariable ["ARC_switchCamo_done", false, true];
waitUntil {(_unit getVariable ["f_var_assignGear_done", false])};

private _uniformItems = uniformItems _unit;
private _vestItems = vestItems _unit;
private _backpackItems = backpackItems _unit;
private _hasBackpack = [true,false] select ((backpack _unit) == "");

private _uniformClass = switch (_camo) do {
    case "woodland": {"rhs_uniform_FROG01_wd"};
    case "desert": {"rhs_uniform_FROG01_d"};
    case "mtp": {"rhs_uniform_g3_mc"};
};

private _vestClass = switch (_camo) do {
    case "woodland": {"rhsusf_spc_rifleman"};
    case "desert": {"rhsusf_spc_rifleman"};
    case "mtp": {"rhsusf_spcs_ocp_rifleman"};
};

private _backpackClass = switch (_camo) do {
    case "woodland": {"rhsusf_assault_eagleaiii_coy"};
    case "desert": {"rhsusf_assault_eagleaiii_coy"};
    case "mtp": {"rhsusf_assault_eagleaiii_ocp"};
};

private _headgearClass = switch (_camo) do {
    case "woodland": {"rhsusf_lwh_helmet_marpatwd_ess"};
    case "mtp": {"rhsusf_ach_helmet_ESS_ocp"};
    case "desert": {"rhsusf_lwh_helmet_marpatd_ess"};
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

if (_headgearClass != "") then {
    removeHeadgear _unit;
    _unit addHeadgear _headgearClass;
};

_unit setVariable ["ARC_switchCamo_done", true, true];