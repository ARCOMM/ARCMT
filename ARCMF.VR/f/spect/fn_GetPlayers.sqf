private ["_arr"];
_players = [];
_ai = [];

{
    if (isNil "f_cam_side" || {side _x == f_cam_side}) then {
        if ({isPlayer _x} count (units _x) > 0) then {
            _players pushBack _x
        } else {
            _ai pushBack _x
        };
    };
} forEach allGroups;

[_players, _ai]