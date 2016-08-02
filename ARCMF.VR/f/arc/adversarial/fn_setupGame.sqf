/*
 * Author: Kingsley
 * Setup the game (called by server)
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ARC_adv_fnc_setupGame;
 *
 * Public: No
 */

if (!isServer) exitWith {};
if (!ARC_isAdv) exitWith {};

// Setup starting positions
[] call ARC_adv_fnc_setSideStart;
