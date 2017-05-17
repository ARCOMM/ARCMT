[{!isNull player && {!isNil "arc_deployOnCarrier"} && {!isNil "arc_sandbox_arsenal"}}, {
    if (call ARC_fnc_isRespawnEnabled) then {
        if (getNumber (missionConfigFile >> "Header" >> "sandbox") == 1) then {
            ["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

            if (!(player getVariable ["ARC_switchCamo_done", false])) then {
                player call ARC_fnc_switchCamo;
            };

            _startPos = [getPos arc_sandbox_arsenal, 10] call CBA_fnc_randPos;
            _startPos set [2, 24];
            player setPos _startPos;
        };
    };
}, []] call CBA_fnc_waitUntilAndExecute;
