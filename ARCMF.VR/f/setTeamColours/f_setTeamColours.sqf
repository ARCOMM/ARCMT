[{isDedicated || !isNull player && {isNull _x} count units (group player) == 0}, {
    private _leaders = ["_FTL"];
    private _white = ["_FTL"];
    private _red = ["_AR","_AAR"];
    private _blue = ["_AT","_R","_R_1"];
    private _yellow = [];
    private _green = [];

    private _unit = player;
    private _isFireteam = false;

    {
        if ([_x, str (leader _unit)] call BIS_fnc_inString) exitWith {_isFireteam = true};
    } forEach _leaders;

    if (!_isFireteam) exitWith {};

    {
        private _unit = _x;

        {
            if ([_x, str _unit] call BIS_fnc_inString) then {
                _unit assignTeam "RED";
            };
        } forEach _red;

        {
            if ([_x, str _unit] call BIS_fnc_inString) then {
                _unit assignTeam "blue";
            };
        } forEach _blue;

        {
            if ([_x, str _unit] call BIS_fnc_inString) then {
                _unit assignTeam "yellow";
            };
        } forEach _yellow;

        {
            if ([_x, str _unit] call BIS_fnc_inString) then {
                _unit assignTeam "green";
            };
        } forEach _green;

        {
            if ([_x, str _unit] call BIS_fnc_inString) then {
                _unit assignTeam "white";
            };
        } forEach _white;
    } forEach units (group _unit);
}, []] call CBA_fnc_waitUntilAndExecute;
