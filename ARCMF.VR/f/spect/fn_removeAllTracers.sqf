/*
 * Author: Kingsley
 * Removes all units from tracer pool
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call f_fnc_removeAllTracers;
 *
 * Public: Yes
 */

{
    [_x] call hyp_fnc_traceFireRemove;
    f_cam_cachedTracers = f_cam_cachedTracers - [_x];
    false
} count allUnits;

[] spawn {
    uiSleep 2;
    {
        [_x] call hyp_fnc_traceFireRemove;
        f_cam_cachedTracers = f_cam_cachedTracers - [_x];
        false
    } count allUnits;
};