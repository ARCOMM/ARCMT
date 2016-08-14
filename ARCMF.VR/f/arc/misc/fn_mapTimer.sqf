/*
 * Author: Kingsley
 * Handles the map timer
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * None
 *
 * Public: No
 */

#define GRID_W (pixelW * 1.25 * pixelGrid)
#define GRID_H (pixelH * 1.25 * pixelGrid)

private _ctrlMapDisplay = findDisplay 12;
private _ctrlTimer = _ctrlMapDisplay ctrlCreate ["ctrlStructuredText", 65632];

_ctrlTimer ctrlSetPosition [
    safeZoneX + (safeZoneW - (7 * GRID_W)),
    safeZoneY + (4 * GRID_H),
    (7 * GRID_W),
    (5 * GRID_H)
];

_ctrlTimer ctrlSetStructuredText (parseText "<t size='1.5'>00:00</t>");

_ctrlTimer ctrlCommit 0;

uiNamespace setVariable ["ARC_mapTimer", _ctrlTimer];

[{!isNil "ARC_mapTimerServer"}, {
    [{
        private _ctrlTimer = uiNamespace getVariable ["ARC_mapTimer", controlNull];
        _ctrlTimer ctrlSetStructuredText (parseText format ["<t size='1.5'>%1</t>", [ARC_mapTimerServer, "MM:SS"] call BIS_fnc_secondsToString]);
    }, 1, []] call CBA_fnc_addPerFrameHandler;
}] call CBA_fnc_waitUntilAndExecute;
