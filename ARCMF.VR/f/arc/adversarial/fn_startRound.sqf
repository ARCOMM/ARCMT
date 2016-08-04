/*
 * Author: Kingsley
 * Starts a new round with the given round number and time limit
 * Called from server
 *
 * Arguments:
 * 0: Round number <NUMBER>
 * 1: Round time limit (seconds) <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [1, 5] call ARC_adv_fnc_startRound;
 *
 * Public: No
 */

#include "script_component.hpp"

if (!isNil QGVAR(sideDeathHandler)) then {
    [GVAR(sideDeathHandler)] call CBA_fnc_removePerFrameHandler;
};

GVAR(sideDeathHandler) = [{
    params ["_args", "_id"];

    GVAR(aliveWestPlayers) = count (allPlayers select {alive _x && {side group _x == west} && {!(_x getVariable ["ARC_cam_isVirtual", false])}});
    GVAR(aliveEastPlayers) = count (allPlayers select {alive _x && {side group _x == east} && {!(_x getVariable ["ARC_cam_isVirtual", false])}});
    GVAR(aliveGuerPlayers) = count (allPlayers select {alive _x && {side group _x == resistance} && {!(_x getVariable ["ARC_cam_isVirtual", false])}});
    
    private _defendingSide = GVAR(sideRotations) select GVAR(defendingSide);
}, 1, []] call CBA_fnc_addPerFrameHandler;

private _objPos = GVAR(objective);
GVAR(currentRoundTime) = GVAR(timeLimit);

if (!isNil QGVAR(roundTimeHandler)) then {
    [GVAR(roundTimeHandler)] call CBA_fnc_removePerFrameHandler;
};

// Start the time display
if (GVAR(currentRoundTime) > -1) then {
    GVAR(roundTimeHandler) = [{
        params ["_args", "_id"];
        
        if (GVAR(currentRoundTime) <= 0) exitWith {
            [_id] call CBA_fnc_removePerFrameHandler;
            [] call FUNC(endRound);
        };
        
        private _timeStr = [GVAR(currentRoundTime), "MM:SS"] call BIS_fnc_secondsToString;
        [_timeStr] remoteExecCall ["ace_common_fnc_displayTextStructured", 0];
        GVAR(currentRoundTime) = GVAR(currentRoundTime) - 1;
    }, 1, []] call CBA_fnc_addPerFrameHandler;
};

// Setup player positions
private _attackSides = (GVAR(sideRotations) - [GVAR(sideRotations) select GVAR(defendingSide)]);
private _attackSide1 = _attackSides select 0;
private _attackSide2 = _attackSides select 1;

{
    private _unit = _x;
    private _side = side group _unit;
    private _sideIndex = GVAR(sideRotations) find _side;
    
    if (_sideIndex == GVAR(defendingSide)) then {
        _unit setPos ([(_objPos select 0), 10] call CBA_fnc_randPos);
    } else {
        if (_side == _attackSide1) then {
            _unit setPos ([(_objPos select 1), 10] call CBA_fnc_randPos);
        } else {
            if (_side == _attackSide2) then {
                _unit setPos ([(_objPos select 2), 10] call CBA_fnc_randPos);
            };
        };
    };
} forEach allPlayers;