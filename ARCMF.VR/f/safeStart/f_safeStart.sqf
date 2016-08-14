[{!isNil "f_var_mission_timer"}, {
    if (f_var_mission_timer != -1) then {
        if (isServer) then {
            call f_fnc_safeStartLoop;
        };
    };
}, []] call CBA_fnc_waitUntilAndExecute;
