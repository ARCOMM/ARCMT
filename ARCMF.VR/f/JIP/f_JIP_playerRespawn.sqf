if (isDedicated) exitWith{};

if (!isDedicated && (isNull player)) then {
    waitUntil {sleep 0.1; !isNull player};
};

private ["_unit","_corpse"];

_unit = _this select 0;
_corpse = _this select 1;

if (isNil "_unit") exitWith {};

if (isNil "f_var_JIP_FirstMenu") then {f_var_JIP_FirstMenu = false};
if (isNil "f_var_JIP_GearMenu") then {f_var_JIP_GearMenu = true};
if (isNil "f_var_JIP_RemoveCorpse") then {f_var_JIP_RemoveCorpse = false};

if (!f_var_JIP_FirstMenu && isNull _corpse) exitWith {};

if (!f_var_JIP_GearMenu) then {
	if (typeName (_unit getVariable "f_var_assignGear") == typeName "") then {
		_loadout = (_unit getVariable "f_var_assignGear");
		[_loadout,player] call f_fnc_assignGear;
	};
};

if (isNil "F3_JIP_reinforcementOptionsAction") then {
	[player] execVM "f\JIP\f_JIP_addReinforcementOptionsAction.sqf";
};

if (typeof _unit != "seagull" && {f_var_JIP_RemoveCorpse && !isNull _corpse}) then {
	_corpse spawn {
		hideBody _this;
		sleep 60;
		deleteVehicle _this;
	};
};
