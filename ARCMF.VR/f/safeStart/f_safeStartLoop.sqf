if !(isServer) exitWith {};

sleep 2;

_zeroPad = {
    params ["_number"];
    if (count (str _number) == 1) exitWith {format ["0%1", _number]};
    str _number
};

while {f_var_mission_timer > 0} do {
    _mins = floor (f_var_mission_timer / 60);
    _secs = f_var_mission_timer mod 60;
    [(format ["BRIEFING TIME: %1:%2", [_mins] call _zeroPad, [_secs] call _zeroPad]),"hintSilent",true] call BIS_fnc_MP;
    uiSleep 1;
    if (f_var_mission_timer < 0) exitWith {};
    f_var_mission_timer = f_var_mission_timer - 1;
    publicVariable "f_var_mission_timer";
};

if (f_var_mission_timer == 0) then {
    ["WEAPONS ARE LIVE","hint",true] call BIS_fnc_MP;
    [[false],"f_fnc_safety",playableUnits + switchableUnits] call BIS_fnc_MP;
};
