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

if (isNil "ARC_briefingTimeStart") exitWith {};

params [["_type", 0, [0]]];

private _timeDiff = time - ARC_briefingTimeStart;
private _minutes = floor (_timeDiff / 60);
private _text = switch (_type) do {
    case 0: {
        format [
            "Weapons are cold, waiting for admin to trigger start. (%1 minute%2 since briefing stage started)",
            _minutes,
            ["","s"] select (_minutes > 1)
        ];
    };
};

[_text, 5] remoteExecCall ["ARC_fnc_hint", 0];
