/*
 * Author: Kingsley
 * Applies random environment settings to the mission
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ARC_fnc_randomEnvironment;
 */

params [["_broadcast", false, [false]]];

if (_broadcast) exitWith {
    [false] remoteExecCall ["ARC_fnc_randomEnvironment", 2];
};

if (!isServer) exitWith {};

private _date = [
    random [1982, 2000, 2020],
    random [1, 6, 12],
    random [1, 15, 30],
    random [0, 16, 24],
    random [0, 30, 59]
];

private _hour = _date select 3;
private _isFullMoon = false;

if (_hour > 18 || _hour < 6) then {
    _isFullMoon = true;
    _date = selectRandom ([_date select 0] call ARC_fnc_fullMoonDates);
};

setDate _date;

0 setFog 0;

private _overcast = [random [0, 0.5, 1], 0] select _isFullMoon;
skipTime -24; 86400 setOvercast _overcast; skipTime 24;

0 setFog [
    random [0, 0.033, 0.1],
    random [0, 0.0066, 0.015],
    random [0, 10, 200]
];

0 setWaves random 1;

forceWeatherChange;
