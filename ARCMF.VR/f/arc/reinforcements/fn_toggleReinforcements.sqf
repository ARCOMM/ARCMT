/*
 * Author: Kingsley
 * Toggles the spectator reinforcement option
 *
 * Arguments:
 * Toggle - true enabled, false disabled <BOOL>
 *
 * Return Value:
 * missionNamespace value <BOOL>
 *
 * Example:
 * [true] call ARC_fnc_toggleReinforcements;
 *
 * Public: Yes
 */

params [["_toggle", false]];

hint format ["Reinforcements %1", (["Disabled","Enabled"] select _toggle)];

ARC_reinforcements = _toggle;
publicVariable "ARC_reinforcements";

ARC_reinforcements