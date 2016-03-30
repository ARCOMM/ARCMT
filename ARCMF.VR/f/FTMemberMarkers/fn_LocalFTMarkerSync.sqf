private ["_grp","_colorTeam"];
_grp = _this select 0;
_unit = _this select 1;
waitUntil {!isNil "f_var_debugMode"};

while {_unit == (leader _grp) && alive _unit} do {
    {
        if (alive _x) then {
            _colorTeam = [assignedTeam _x] call f_fnc_GetMarkerColor;
            if ((_x getVariable ["assignedTeam", "ColorWhite"]) != _colorTeam) then {
                if (f_var_debugMode == 1) then {
                    player sideChat format["%1 ---- %2 by %3", (_x getVariable ["assignedTeam","ColorWhite"]), _colorTeam, _unit];
                };
                
                [[_x, _colorTeam], "f_fnc_SetTeamValue", _grp, false] spawn BIS_fnc_MP;
            };
        };
    } forEach units _grp;
    sleep 3;
};

if (!isNil "_grp") then {
    _x = leader _grp;
    [[_grp, _x], "f_fnc_LocalFTMarkerSync", _x, false] spawn BIS_fnc_MP;
};