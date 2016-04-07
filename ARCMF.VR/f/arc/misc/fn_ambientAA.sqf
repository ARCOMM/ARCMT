/*
 * Author: Kingsley
 * Ambient AA fire
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [_this] call ARC_fnc_ambientAA;
 *
 * Public: Yes
 */

if (!isServer) exitWith {};

params ["_vehicle"];

private _driver = driver _vehicle;
private _gunner = gunner _vehicle;

_target = [getPos _vehicle, 250, getDir _vehicle] call BIS_fnc_relPos;
(gunner _vehicle) lookAt [_target select 0, _target select 1, (_target select 2) + 1000];
_vehicle disableAI "AUTOTARGET";
_vehicle disableAI "TARGET";
_driver disableAI "MOVE";

sleep 2 + (random 5);

while {alive _vehicle} do {
    for "_i" from 0 to (10 + round (random (4))) do {
        _vehicle fire ((weapons _vehicle) select 0);
        uiSleep 0.25;
    };
    
    uiSleep (round (random 4) + 2);
    _vehicle setVehicleAmmo 1;
};
