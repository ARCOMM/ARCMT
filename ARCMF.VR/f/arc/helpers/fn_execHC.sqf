/*
    Author: Kingsley
    Description: Execute given code on either the headless client or on server depending on which is present
    Parameter(s): CODE - { ... } or string code
    Returns: Spawned code handle
    Example _handle = { hint "Ran on HC" } call ARC_fnc_execHC;
*/

[_this, "ARC_fnc_execHC_remote", true, false, false] call BIS_fnc_MP;