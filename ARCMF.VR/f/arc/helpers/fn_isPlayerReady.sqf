/*
    Author: Kingsley
    Description: Checks whether the player object is ready (used for JIP)
    Parameter(s): Nothing
    Returns: BOOLEAN - true if player is ready, false if not
    Example _ready = call ARC_fnc_isPlayerReady;
*/

if (isNull player) exitWith {
    false
};

true