[{!isNil "f_var_mission_timer"}, {
    if (f_var_mission_timer > 0) then {
        if (isServer) then {
            #include "f_safeStartLoop.sqf"
        };

        if (!isDedicated) then {
            [true] call f_fnc_safety;
        };
    };
}, []] call CBA_fnc_waitUntilAndExecute;
