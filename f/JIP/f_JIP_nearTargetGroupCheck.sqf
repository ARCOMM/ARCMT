private ["_grp","_joinDistance"];

_grp = _this select 0;
_joinDistance = _this select 1;

if (isNull _grp) exitWith {
	[player] joinSilent grpNull;
};

while {true} do {
	if ({alive _x} count (units _grp) == 0) exitWith {
		[player] execVM "f\JIP\f_JIP_addReinforcementOptionsAction.sqf";
		["JIP",[format ["All members of %1 have died. Please select a new group",_grp]]] call BIS_fnc_showNotification;
	};

	if (f_var_debugMode == 1) then {
		player sideChat format ["DEBUG (f\JIP\f_JIP_nearTargetGroupCheck.sqf): _alive = %1",_alive];
	};

	sleep 3;

	if (((leader _grp) distance player) < _joinDistance) exitWith {
		[player] joinSilent _grp;

		["JIP",[format ["You have joined %1",_grp]]] call BIS_fnc_showNotification;

		_unit = player;
		[["JIP",[format ["%1 has joined your group.",name _unit]]],"BIS_fnc_showNotification",units (_this select 3) - [_unit]] spawn BIS_fnc_MP;

		sleep 1;
	};
};
