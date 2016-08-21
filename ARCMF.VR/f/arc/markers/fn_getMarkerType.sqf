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
        ["b_recon", "b_recon", "b_recon"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
    } else {
        ["b_inf", "b_inf", "b_inf"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
    };
};

if (getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "attendant") == 1) exitWith {
    ["b_med", "b_med", "b_med"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
};

if (
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "transportRepair") > 0 ||
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "transportFuel") > 0 ||
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "transportAmmo") > 0 ||
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "ACE_canRepair") > 0 ||
    getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "ACE_fuelCapacityCargo") > 0
) exitWith {
    ["b_maint", "b_maint", "b_maint"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
};

if (_vehicle isKindOf "Plane") exitWith {
    ["b_plane", "b_plane", "b_plane"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
};

if (_vehicle isKindOf "Air") exitWith {
    ["b_air", "b_air", "b_air"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
};

if (_vehicle isKindOf "StaticMortar") exitWith {
    ["b_mortar", "b_mortar", "b_mortar"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
};

if (getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "artilleryScanner") == 1) exitWith {
    ["b_art", "b_art", "b_art"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
};

if (_vehicle isKindOf "Car") exitWith {
    ["b_motor_inf", "b_motor_inf", "b_motor_inf"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
};

if (_vehicle isKindOf "Tank") exitWith {
    if (getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "transportSoldier") > 0) then {
        ["b_mech_inf", "b_mech_inf", "b_mech_inf"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
    } else {
        ["b_armor", "b_armor", "b_armor"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
    };
};

if (_vehicle isKindOf "Ship") exitWith {
    ["b_naval", "b_naval", "b_naval"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
};

["b_unknown", "b_unknown", "b_unknown"] select ((["GUER", "WEST", "EAST"] find str _side) max 0)
