[{!isNull player}, {
    if (call ARC_fnc_isRespawnEnabled) then {
        if (getNumber (missionConfigFile >> "Header" >> "sandbox") == 1) then {
            ["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
            if (!(player getVariable ["ARC_switchCamo_done", false])) then {
                player call ARC_fnc_switchCamo;
            };
        };
    };
}, []] call CBA_fnc_waitUntilAndExecute;