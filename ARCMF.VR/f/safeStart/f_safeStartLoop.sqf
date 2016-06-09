if (!isServer) exitWith {};

[{
    [{
        params ["_args","_handlerID"];

        _mins = floor (f_var_mission_timer / 60);
        _secs = f_var_mission_timer mod 60;

        format ["BRIEFING TIME: %1:%2", [_mins] call ARC_fnc_zeroPad, [_secs] call ARC_fnc_zeroPad] remoteExec ["hintSilent", 0];

        if (f_var_mission_timer <= 0) exitWith {
            "WEAPONS ARE LIVE" remoteExec ["hintSilent", 0];
            [false] remoteExec ["f_fnc_safety", (playableUnits + switchableUnits)];
            [_handlerID] call CBA_fnc_removePerFrameHandler;
            [{hintSilent ""}, [], 5] call CBA_fnc_waitAndExecute;
        };

        f_var_mission_timer = f_var_mission_timer - 1;
        publicVariable "f_var_mission_timer";
    }, 1, []] call CBA_fnc_addPerFrameHandler;
}, [], 2] call CBA_fnc_waitAndExecute;
