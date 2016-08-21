/*
 * Author: Kingsley
 * Ends the round and resets all players back to their start positions
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ARC_adv_fnc_endRound;
 *
 * Public: Yes
 */

#include "script_component.hpp"

{
    [_x] call FUNC(resetPlayerToStart);
} forEach (allPlayers - (entities "HeadlessClient_F"));

GVAR(currentRound) = GVAR(currentRound) + 1;

if (GVAR(currentRound) > GVAR(totalRounds)) exitWith {
    // Find winning side
    // End mission
};

[] call FUNC(startBriefing);