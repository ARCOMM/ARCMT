if (!isServer) exitWith {};

if (!isNil "ARC_briefingIntervalPFH") then {
    [ARC_briefingIntervalPFH] call CBA_fnc_removePerFrameHandler;
};

if (!isNil "ARC_briefingEndIntervalPFH") then {
    [ARC_briefingEndIntervalPFH] call CBA_fnc_removePerFrameHandler;
};

[true] remoteExec ["f_fnc_safety", (playableUnits + switchableUnits)];

ARC_briefingTimeEnd = false;

[{
    ARC_briefingTimeStart = time;
    ARC_briefingInterval = 0;
    
    ["Weapons are cold, waiting for admin to trigger start.", 10] remoteExecCall ["ARC_fnc_hint", 0];

    ARC_briefingIntervalPFH = [{
        params ["_args","_handlerID"];
        
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
        
        if (ARC_briefingInterval == 60) then {
            [0] call ARC_fnc_displayBriefingTime;
            ARC_briefingInterval = 0;
        };
        
        ARC_briefingInterval = ARC_briefingInterval + 1;
    }, 1, []] call CBA_fnc_addPerFrameHandler;
}, [], 2] call CBA_fnc_waitAndExecute;
