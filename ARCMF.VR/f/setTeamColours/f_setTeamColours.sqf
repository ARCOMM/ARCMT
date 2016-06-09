[{isDedicated || !isNull player && {isNull _x} count units (group player) == 0}, {
    private ["_unit","_isFireteam","_white","_red","_blue","_yellow","_green"];

    _leaders = ["_FTL"];
    _white = ["_FTL"];
    _red = ["_AR","_AAR"];
    _blue = ["_AT","_R","_R_1"];
    _yellow = [];
    _green = [];

    _unit = player;
    _isFireteam = false;

    {
        if ([_x, format["%1", (leader (group _unit))]] call BIS_fnc_inString) exitWith {_isFireteam = true};
        false
    } count _leaders;

    if (!_isFireteam) exitWith {};

    {
        private _unit = _x;

        {
            if ([_x, format ["%1", _unit]] call BIS_fnc_inString) then {
                _unit assignTeam "RED";
            };

            false
        } count _red;

        {
            if ([_x, format ["%1", _unit]] call BIS_fnc_inString) then {
                _unit assignTeam "blue";
            };

            false
        } count _blue;

        {
            if ([_x, format ["%1", _unit]] call BIS_fnc_inString) then {
                _unit assignTeam "yellow";
            };

            false
        } count _yellow;

        {
            if ([_x, format ["%1", _unit]] call BIS_fnc_inString) then {
                _unit assignTeam "green";
            };

            false
        } count _green;

        {
            if ([_x, format ["%1", _unit]] call BIS_fnc_inString) then {
                _unit assignTeam "white";
            };

            false
        } count _white;

        false
    } count units (group _unit);
}, []] call CBA_fnc_waitUntilAndExecute;
