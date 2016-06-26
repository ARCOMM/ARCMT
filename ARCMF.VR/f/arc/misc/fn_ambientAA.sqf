/*
 * Author: Kingsley
 * Ambient AA fire
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Burst count <NUMBER>
 * 2: Time between shots (seconds) <NUMBER>
 * 3: Time between bursts (seconds) <NUMBER>
 * 4: Random number to add to shots and bursts <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * AAHandle = [this, 6, 0.8, 4] spawn ARC_fnc_ambientAA;
 *
 * Public: Yes
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_burstCount", 10, [0]],
    ["_shotDelay", 0.5, [0]],
    ["_burstDelay", 5, [0]],
    ["_random", 0, [0]],
    ["_broadcast", false, [false]]
];

if (!local _vehicle && {_broadcast}) exitWith {
    _this remoteExec ["ARC_fnc_ambientAA", _vehicle];
};

private _driver = driver _vehicle;
private _gunner = gunner _vehicle;

_target = [getPos _vehicle, 250, getDir _vehicle] call BIS_fnc_relPos;
_gunner lookAt (_target vectorAdd [0, 0, 1000]);
_vehicle disableAI "AUTOTARGET";
_vehicle disableAI "TARGET";
_driver disableAI "MOVE";

sleep 2 + (random 5);

while {alive _vehicle} do {
    for "_i" from 1 to (_burstCount + round (random (_random))) do {
        _vehicle fire ((weapons _vehicle) select 0);
        uiSleep _shotDelay;
    };
    
    uiSleep (round (random _random) + _burstDelay);
    _vehicle setVehicleAmmo 1;
};
