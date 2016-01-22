private ["_unit","_textAction","_grp","_joinDistance","_loadout"];

["JIP",["Select the group to join."]] call BIS_fnc_showNotification;

f_var_JIP_state = 0;
createDialog "GrpPicker";
waitUntil {f_var_JIP_state == 1};
_grp = (player getVariable "f_var_JIP_grp");

f_var_JIP_state = 2;
if (f_var_JIP_GearMenu) then {
	["JIP",["Select your gear kit."]] call BIS_fnc_showNotification;

	createDialog "KitPicker";
	waitUntil {f_var_JIP_state == 3};

	_loadout = (player getVariable "f_var_JIP_loadout");
	[_loadout,player] call f_fnc_assignGear;
};

player removeAction F3_JIP_reinforcementOptionsAction;
F3_JIP_reinforcementOptionsAction = nil;

_joinDistance = 10;

if (_grp != group player) then {
	[player] joinSilent grpNull;

	if (!isNull _grp) then {
		[_grp,_joinDistance] execVM "f\JIP\f_JIP_nearTargetGroupCheck.sqf";
		["JIP",[format ["Selection successful. Get within %2m of %1 to link up.",name leader _grp,_joinDistance]]] call BIS_fnc_showNotification;
	};
};
