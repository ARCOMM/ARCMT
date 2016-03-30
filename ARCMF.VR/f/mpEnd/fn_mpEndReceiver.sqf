private ["_ending","_state"];

_ending = _this select 0;
_state = if (count _this > 1) then {_this select 1} else {true};

if (isServer) then {
    sleep 3;
    if (f_var_debugMode == 1) then {
        player sideChat "DEBUG (f_fnc_mpEndReciever): This is the server.";
    };
};

if (f_var_debugMode == 1) then {
    player sideChat format ["DEBUG (f_fnc_mpEndReciever): _ending = %1, _state = %2",_ending,_state];
};

switch (_ending) do {
    case 1: {};
    case 2: {};
    case 3: {};
    case 4: {};
    case 5: {};
    case 6: {};
    default {};
};

_ending = format ["end%1",_ending];
[_ending,_state] spawn BIS_fnc_endMission;

if (dialog) then {
    closeDialog 0;
};
