private ["_unit","_isFireteam","_white","_red","_blue","_yellow","_green"];

if (!isDedicated && (isNull player)) then {
    waitUntil {sleep 0.1; !isNull player};
};

_leaders = ["_FTL"];
_white = ["_FTL"];
_red = ["_AR","_AAR"];
_blue = ["_AT","_R","_R_1"];
_yellow = [];
_green = [];

sleep 10;

_unit = player;
_isFireteam = false;

{
    if ([_x, format["%1",(leader (group _unit))]] call BIS_fnc_inString) exitWith {_isFireteam = true;}
} forEach _leaders;

if (!_isFireteam) exitWith {};

{
    private ["_unit"];
    _unit = _x;

    {
        if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
            _unit assignTeam "RED";
        };
    } forEach _red;

    {
        if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
            _unit assignTeam "blue";
        };
    } forEach _blue;

    {
        if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
            _unit assignTeam "yellow";
        };
    } forEach _yellow;

    {
        if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
            _unit assignTeam "green";
        };
    } forEach _green;

    {
        if ([_x, format ["%1",_unit]] call BIS_fnc_inString) then {
            _unit assignTeam "white";
        };
    } forEach _white;

} foreach units (group _unit);
