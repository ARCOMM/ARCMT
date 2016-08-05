/*
 * Author: Kingsley
 * Extended hint function
 *
 * Arguments:
 * 0: Text <STRING>
 * 1: Duration (seconds) <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * ["Hello Arma", 5] call ARC_fnc_hint;
 *
 * Public: Yes
 */

params [
    ["_text", "", [""]],
    ["_duration", 5, [0]]
];

hintSilent _text;

[{hintSilent ""}, [], _duration] call CBA_fnc_waitAndExecute;

nil