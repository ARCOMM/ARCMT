/*
 * Author: Kingsley
 * Gets the type of a unit (rifleman, medic etc.)
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Type <STRING>
 *
 * Example:
 * [player] call ARC_fnc_getUnitType;
 *
 * Public: Yes
 */

params [["_unit", objNull]];

if (isNull _unit) exitWith {};

if (getNumber (configFile >> "CfgVehicles" >> typeOf _unit >> "attendant") == 1) exitWith {"Medic"};
if (getNumber (configFile >> "CfgVehicles" >> typeOf _unit >> "engineer") == 1) exitWith {"Engineer"};
if (leader _unit == _unit) exitWith {"Leader"};
if (getText (configFile >> "CfgWeapons" >> primaryWeapon _unit >> "UIPicture") == "\a3\weapons_f\data\ui\icon_mg_ca.paa") exitWith {"Machinegunner"};
if (getText (configFile >> "CfgWeapons" >> secondaryWeapon _unit >> "UIPicture") == "\a3\weapons_f\data\ui\icon_at_ca.paa") exitWith {"Anti-Tank"};

"Rifleman"