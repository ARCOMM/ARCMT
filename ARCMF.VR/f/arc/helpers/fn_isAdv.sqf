/*
 * Author: Kingsley
 * Returns whether the mission is in adversarial mode
 *
 * Arguments:
 * None
 *
 * Return Value:
 * In adversarial mode <BOOL>
 *
 * Example:
 * [] call ARC_fnc_isAdv;
 *
 * Public: Yes
 */

(getNumber (missionConfigFile >> "Header" >> "adversarial") == 1)