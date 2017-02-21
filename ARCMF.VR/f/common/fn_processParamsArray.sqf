private _paramArray = paramsArray;

{
    _paramValue = _x;
    _paramName = configName ((missionConfigFile >> "Params") select _forEachIndex);
    _paramCode = getText (missionConfigFile >> "Params" >> _paramName >> "code");
    _code = format [_paramCode, _paramValue];
    call compile _code;
    if (isServer) then {
        publicVariable _paramName;
    };
} forEach _paramArray;
