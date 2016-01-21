// Function to determine class of unit, to use as marker instead of standard triangle.
// Original function by Dslyecxi in use by STHud.

private "_unit";
_unit = _this;

if (getNumber(configFile >> "CfgVehicles" >> typeOf(_unit) >> "attendant") == 1) exitWith
{
  "ST_STHudM_Medic";
};

if (getNumber(configFile >> "CfgVehicles" >> typeOf(_unit) >> "engineer") == 1) exitWith
{
  "ST_STHudM_Engineer";
};

if (leader(_unit) == _unit) exitWith
{
  "ST_STHudM_Leader";
};

// This appears to be the most consistent way to detect that a weapon is an
// MG of some sort. These pictures are the overlays for the BIS team hud.
if (getText(configFile >> "CfgWeapons" >> primaryWeapon(_unit) >> "UIPicture") == "\a3\weapons_f\data\ui\icon_mg_ca.paa") exitWith
{
  "ST_STHudM_MG";
};

// Do something similar for launchers.
if (getText(configFile >> "CfgWeapons" >> secondaryWeapon(_unit) >> "UIPicture") == "\a3\weapons_f\data\ui\icon_at_ca.paa") exitWith
{
  "ST_STHudM_AT";
};

"ST_STHudM_Rifleman";
