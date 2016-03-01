if (isNil "f_param_caching" || {f_param_caching == 0}) exitWith {};

sleep 0.1;
waitUntil {time > (_this select 0)};

if (!isDedicated && !(group player getVariable ["f_cacheExcl", false])) then {
	(group player) setVariable ["f_cacheExcl", true, true];
};

if !(isServer) exitWith {};

if (missionNameSpace getVariable ["f_cInit", false]) exitWith {};
f_cInit = true;

{
	if ({_x in playableUnits} count units _x > 0) then {_x setVariable ["f_cacheExcl",true,true];};
} forEach allGroups;

_range = f_param_caching;
f_var_cacheSleep = 6;
f_var_cacheRun = true;

[_range] spawn f_fnc_cTracker;

if (f_var_debugMode == 1) then {
	player globalchat format ["f_fnc_cInit DBG: Starting to track %1 groups, %2 range, %3 sleep",count allGroups,_range,f_var_cacheSleep];

	[] spawn {
		sleep (f_var_cacheSleep * 1.1);
		while {f_var_cacheRun} do {
			_str1 = "f_fnc_cache DBG:<br/>";
			_str2 = format["Total groups: %1<br/>",count allGroups];
			_str3 = format ["Cached groups:%1<br/>",{_x getvariable "f_cached"} count allGroups];
			_str4 = format ["Activated groups:%1<br/>",{!(_x getvariable "f_cached")} count allGroups];
			_str5 = format ["Excluded groups:%1<br/>",{(_x getvariable "f_cacheExcl")} count allGroups];

			hintsilent parseText (_str1+_str2+_str3+_str4+_str5);
			diag_log (_str1+_str2+_str3+_str4+_str5);

			sleep f_var_cacheSleep;
		};
	};
};