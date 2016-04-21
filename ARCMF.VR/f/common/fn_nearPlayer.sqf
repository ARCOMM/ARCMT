private ["_ent","_distance","_pos","_players"];
_pos = getPosATL (_this select 0);
_distance = _this select 1;

_players = [];

{
    if (isPlayer _x) then {_players pushBack _x};
    false
} count playableUnits;

if (({_x distance _pos < _distance} count _players) > 0) exitWith {true};
false
