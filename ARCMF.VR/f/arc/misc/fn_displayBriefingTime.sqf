/*
 * Author: Kingsley
 * Displays the briefing time
 * Execute on all machines
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ARC_fnc_displayBriefingTime;
 *
 * Public: No
 */

params [["_type", 0, [0]], ["_minutes", 0, [0]]];

private _text = switch (_type) do {
    case 0: {
        format [
            "%1 minute%2 since briefing stage started",
            _minutes,
            ["","s"] select (_minutes > 1)
        ];
    };
};

_text remoteExecCall ["hintSilent", 0];
