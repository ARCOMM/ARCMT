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

#include "script_component.hpp"

if (!isServer) exitWith {};
if (!ARC_isAdv) exitWith {};

GVAR(totalRounds) = arc_param_adv_totalrounds;
GVAR(currentRound) = 1;
GVAR(timeLimit) = arc_param_adv_timelimit;
GVAR(briefingTime) = arc_param_adv_briefingtime;
GVAR(sideRotations) = [east, west, resistance];
GVAR(defendingSide) = 0;

private _worldSize = worldSize;
private _worldCenter = [_worldSize / 2, _worldSize / 2, 0];
private _worldOutlineMrk = createMarker ["ARC_adv_worldOutline", _worldCenter];
_worldOutlineMrk setMarkerShape "RECTANGLE";
_worldOutlineMrk setMarkerBrush "BORDER";
_worldOutlineMrk setMarkerAlpha 0;
_worldOutlineMrk setMarkerColor "ColorBlack";
_worldOutlineMrk setMarkerSize [_worldSize / 2, _worldSize / 2];

// Setup starting positions
[] call FUNC(setSideStart);

// Start briefing
[] call FUNC(startBriefing);
