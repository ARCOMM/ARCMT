if ((call ARC_fnc_isRespawnEnabled)) then {
    {
        if (!(_x call ARC_fnc_markerExists)) then {
            createMarker [_x, (call ARC_fnc_getStartingPos)];
        };
    } forEach ["respawn_west", "respawn_east", "respawn_guerrila"];
    
    if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
        ["Initialize", [true]] call BIS_fnc_dynamicGroups;
        //_arsenal = "Land_PaperBox_open_full_F" createVehicle (call ARC_fnc_getStartingPos);
        _arsenal = createVehicle ["Land_PaperBox_open_full_F", (call ARC_fnc_getStartingPos), [], 0, "NONE"];
        ["AmmoboxInit", [_arsenal, true]] spawn BIS_fnc_arsenal;
        _arsenal allowDamage false;
    };
};