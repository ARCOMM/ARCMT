if (!isServer) exitWith {};

if (!isNil "ARC_briefingIntervalPFH") then {
    [ARC_briefingIntervalPFH] call CBA_fnc_removePerFrameHandler;
};

if (!isNil "ARC_briefingEndIntervalPFH") then {
    [ARC_briefingEndIntervalPFH] call CBA_fnc_removePerFrameHandler;
};

[true] remoteExec ["f_fnc_safety", (playableUnits + switchableUnits)];

if (f_var_mission_timer > 0) then {
    format ["Weapons are cold, briefing stage will end in %1 minute%2.", f_var_mission_timer, ["","s"] select (f_var_mission_timer > 1)] remoteExecCall ["hintSilent", 0];
} else {
    "Weapons are cold, waiting for admin to trigger start." remoteExecCall ["hintSilent", 0];
};

ARC_briefingTimeEnd = false;

[{
    ARC_briefingTimeMinutes = 0;
    ARC_briefingInterval = 0;

    ARC_briefingIntervalPFH = [{
        params ["_args","_handlerID"];
        
        if (f_var_mission_timer > 0 && {ARC_briefingTimeMinutes >= f_var_mission_timer}) then {
            ARC_briefingTimeEnd = true;
        };
        
        if (ARC_briefingTimeEnd) exitWith {
            [_handlerID] call CBA_fnc_removePerFrameHandler;
            
            ARC_briefingEndInterval = 5;
            
            ARC_briefingEndIntervalPFH = [{
                params ["_args","_handlerID"];
                
                if (ARC_briefingEndInterval <= 0) exitWith {
                    ["Weapons are live!", 5] remoteExecCall ["ARC_fnc_hint", 0];
                    [false] remoteExec ["f_fnc_safety", (playableUnits + switchableUnits)];
                    [_handlerID] call CBA_fnc_removePerFrameHandler;
                };
                
                format [
                    "Weapons are live in %1 second%2",
                    ARC_briefingEndInterval,
                    ["s",""] select (ARC_briefingEndInterval == 1)
                ] remoteExecCall ["hintSilent", 0];
                
                ARC_briefingEndInterval = ARC_briefingEndInterval - 1;
            }, 1, []] call CBA_fnc_addPerFrameHandler;
        };
        
        if (ARC_briefingInterval == 60) exitWith {
            ARC_briefingTimeMinutes = ARC_briefingTimeMinutes + 1;
            [0, ARC_briefingTimeMinutes] call ARC_fnc_displayBriefingTime;
            ARC_briefingInterval = 0;
        };
        
        ARC_briefingInterval = ARC_briefingInterval + 1;
    }, 1, []] call CBA_fnc_addPerFrameHandler;
}, [], 5] call CBA_fnc_waitAndExecute;
