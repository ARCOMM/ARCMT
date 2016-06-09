params [["_unit", objNull, [objNull]]];

if (isNull _unit) exitWith {""};

if (leader _unit == _unit) exitWith {"ST_STHudM_Leader"};
if (getText (configFile >> "CfgWeapons" >> secondaryWeapon _unit >> "UIPicture") == "\a3\weapons_f\data\ui\icon_at_ca.paa") exitWith {"ST_STHudM_AT"};
if (getText (configFile >> "CfgWeapons" >> primaryWeapon _unit >> "UIPicture") == "\a3\weapons_f\data\ui\icon_mg_ca.paa") exitWith {"ST_STHudM_MG"};
if (getNumber (configFile >> "CfgVehicles" >> typeOf _unit >> "attendant") == 1) exitWith {"ST_STHudM_Medic"};
if (getNumber (configFile >> "CfgVehicles" >> typeOf _unit >> "engineer") == 1) exitWith {"ST_STHudM_Engineer"};

"ST_STHudM_Rifleman"