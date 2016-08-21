private _group = _this;
private _leader = leader _group;
private _vehicle = vehicle _leader;
private _side = side _leader;

if (_vehicle == _leader) exitWith {
    if (
        getNumber (configFile >> "CfgVehicles" >> typeOf _leader >> "detectSkill") > 20 ||
        getNumber (configFile >> "CfgVehicles" >> typeOf _leader >> "camouflage") < 1 ||
        getText   (configFile >> "CfgVehicles" >> typeOf _leader >> "textsingular") == "diver"
    ) then {
        "b_recon"
    } else {
        "b_inf"
    };
};

if (getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "attendant") == 1) exitWith {
    "b_med"
};

if (
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "transportRepair") > 0 ||
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "transportFuel") > 0 ||
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "transportAmmo") > 0 ||
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "ACE_canRepair") > 0 ||
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "ACE_fuelCapacityCargo") > 0
) exitWith {
    "b_maint"
};

if (_vehicle isKindOf "Plane") exitWith {
    "b_plane"
};

if (_vehicle isKindOf "Air") exitWith {
    "b_air"
};

if (_vehicle isKindOf "StaticMortar") exitWith {
    "b_mortar"
};

if (getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "artilleryScanner") == 1) exitWith {
    "b_art"
};

if (_vehicle isKindOf "Car") exitWith {
    "b_motor_inf"
};

if (_vehicle isKindOf "Tank") exitWith {
    if (getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "transportSoldier") > 0) then {
        "b_mech_inf"
    } else {
        "b_armor"
    };
};

if (_vehicle isKindOf "Ship") exitWith {
    "b_naval"
};

"b_unknown"
