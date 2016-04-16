/*
 * Author: Kingsley
 * Toggles adversarial mode
 *
 * Arguments:
 * 0: Turn on? <BOOL>
 *
 * Return Value:
 * None
 *
 * Example:
 * [true] call ARC_fnc_toggleAdversarial;
 *
 * Public: Yes
 */

params [["_on",false]];

ARC_adversarialMode = _on;
publicVariable "ARC_adversarialMode";

hint (["Adversarial mode disabled","Adversarial mode enabled"] select _on);