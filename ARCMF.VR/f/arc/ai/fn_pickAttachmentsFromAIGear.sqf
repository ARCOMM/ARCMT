private _faction = param [0, "blufor"];
private _category = param [1, "uniforms"];
private _result = [];

private _items = if (arc_param_theme != "Default" && {getNumber (missionConfigFile >> "Header" >> "sandbox") == 1}) then {
    getArray (missionConfigFile >> "CfgSandboxThemes" >> arc_param_theme >> "AIGear" >> _faction >> _category);
} else {
    getArray (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> _category);
};

if (count _items > 0) then {
    {
        _class = _x select 0;
        _prob = _x select 1;
        _rand = random 1;
        
        if (_rand <= _prob) exitWith {
            _result pushBack _class;
        };
    } forEach _items;
} else {
    _result = [];
};

_result