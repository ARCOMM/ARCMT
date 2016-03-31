/*
 * Author: Kingsley
 * Handles tracer unit caching
 *
 * Arguments:
 * None
 *
 * Return Value:
 * PFH Handle
 *
 * Example:
 * [] call f_fnc_handleTracers;
 *
 * Public: Yes
 */

_handle = [{
    _units = switch (f_cam_tracersButton) do {
        case 0: {[]};
        case 1: {(allPlayers - (entities "HeadlessClient_F")) - f_cam_cachedTracers};
        case 2: {(allUnits - (allPlayers - (entities "HeadlessClient_F"))) - f_cam_cachedTracers};
        case 3: {(allUnits - (entities "HeadlessClient_F")) - f_cam_cachedTracers};
    };
    
    if (count _units > 0) then {
        {[_x] call f_fnc_addToTracers;false} count _units;
    };
}, 5, []] call CBA_fnc_addPerFrameHandler;

_handle