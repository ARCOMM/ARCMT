/*
 * Author: Kingsley
 * Starts the briefing time
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ARC_adv_fnc_startBriefing;
 *
 * Public: No
 */

#include "script_component.hpp"

[] call FUNC(getObjective);

{
    // Disable player firing
    [true] remoteExecCall ["f_fnc_safety", _x];
} forEach allPlayers;

GVAR(currentBriefingTime) = GVAR(briefingTime);

if (!isNil QGVAR(briefingTimeHandler)) then {
    [GVAR(briefingTimeHandler)] call CBA_fnc_removePerFrameHandler;
};

GVAR(briefingTimeHandler) = [{
    params ["_args", "_id"];
    
    if (GVAR(currentBriefingTime) <= 0) exitWith {
        [_id] call CBA_fnc_removePerFrameHandler;
        [] call FUNC(startRound);
        
        {
            // Enable player firing
            [false] remoteExecCall ["f_fnc_safety", _x];
        } forEach allPlayers;
    };
    
    private _timeStr = [GVAR(currentBriefingTime), "MM:SS"] call BIS_fnc_secondsToString;
    [_timeStr] remoteExecCall ["ace_common_fnc_displayTextStructured", 0];
    GVAR(currentBriefingTime) = GVAR(currentBriefingTime) - 1;
}, 1, []] call CBA_fnc_addPerFrameHandler;
