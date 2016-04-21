if (isNil "f_var_mission_timer") then {
    f_var_mission_timer = (["f_param_mission_timer", 0] call BIS_fnc_getParamValue) * 60;
};

if (f_var_mission_timer > 0) then {
    if (isServer) then {
        [] execVM "f\safeStart\f_safeStartLoop.sqf";
    };

    if (!isDedicated) then {
        [true] call f_fnc_safety;
    };
};
