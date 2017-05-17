private _pos = getArray (missionConfigFile >> "CfgSandbox" >> worldName >> "startingPosition");

if (arc_deployOnCarrier) then {
    _pos = (call ARC_fnc_getCarrierPos) vectorAdd [0, 0, 24];
};

_pos
