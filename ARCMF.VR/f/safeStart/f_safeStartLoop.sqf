if !(isServer) exitWith {};

sleep 2;

while {f_var_mission_timer > 0} do {
	[["SafeStart",[format["Time Remaining: %1 min",f_var_mission_timer]]],"bis_fnc_showNotification",true] call BIS_fnc_MP;
	uisleep 60;
	if (f_var_mission_timer < 0) exitWith {};
	f_var_mission_timer = f_var_mission_timer - 1;
	publicVariable "f_var_mission_timer";
};

if (f_var_mission_timer == 0) then {
		[["SafeStartMissionStarting",["Weapons are live!"]],"bis_fnc_showNotification",true] call BIS_fnc_MP;
		[[false],"f_fnc_safety",playableUnits + switchableUnits] call BIS_fnc_MP;
};
