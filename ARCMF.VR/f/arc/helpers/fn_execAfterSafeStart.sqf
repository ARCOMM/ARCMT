/*
 * Author: Kingsley
 * Executes the given code with the given arguments after safe start has ended
 *
 * Arguments:
 * 0: Code <CODE>
 * 1: Arguments <ANY>
 * 2: 
 *
 * Return Value:
 * None
 *
 * Example:
 * [{ hint "Safe start has ended"; hint str _this; }, 0] call ARC_fnc_execAfterSafeStart;
 *
 * Public: Yes
 */

params [
    ["_code", {}, [{}]],
    ["_args", []]
];

[{!isNil "ARC_briefingTimeEnd" && {ARC_briefingTimeEnd}}, _code, _args] call CBA_fnc_waitUntilAndExecute;
