arc_deployOnCarrier = false;
arc_sandbox_arsenal = objNull;

private _spawnPos = call ARC_fnc_getStartingPos;
private _carrier = objNull;

if (call ARC_fnc_isRespawnEnabled) then {
    if (getNumber (missionConfigFile >> "Header" >> "sandbox") == 1) then {
        if (arc_param_aircraft_carrier && !isNull (missionConfigFile >> "CfgSandbox" >> worldName >> "carrierPosition")) then {
            _carrier = createVehicle ["Land_Carrier_01_base_F", (call ARC_fnc_getCarrierPos), [], 0, "NONE"];
            arc_deployOnCarrier = true;
        };
    };

    if (arc_deployOnCarrier) then {
        _spawnPos = _carrier modelToWorld [-20, 108, 23.5];
    };

    {
        if (!(_x call ARC_fnc_markerExists)) then {
            createMarker [_x, _spawnPos];
        };
    } forEach ["respawn_west", "respawn_east", "respawn_guerrila"];
    
    if (getNumber (missionConfigFile >> "Header" >> "sandbox") == 1) then {
        ["Initialize", [true]] call BIS_fnc_dynamicGroups;
        
        if (arc_param_theme == "Default") then {
            arc_sandbox_arsenal = createVehicle ["Land_PaperBox_open_full_F", _spawnPos, [], 0, "CAN_COLLIDE"];
            ["AmmoboxInit", [arc_sandbox_arsenal, true]] spawn BIS_fnc_arsenal;
            arc_sandbox_arsenal allowDamage false;
        };
    };
};

publicVariable "arc_deployOnCarrier";
publicVariable "arc_sandbox_arsenal";
