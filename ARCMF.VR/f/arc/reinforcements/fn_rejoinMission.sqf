/*
 * Author: Kingsley
 * Creates new unit for player to rejoin into
 * Must be executed where player is local
 * Cannot be executed before entering spectator
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ARC_fnc_rejoinMission;
 *
 * Public: Yes
 */

params [
    ["_setPos", true],
    ["_applyLoadout", true],
    ["_clearGroup", true],
    ["_removeFromList", true],
    ["_code", {}],
    ["_args", []]
];

private _unit = player;

_unit allowDamage true;
_unit enableSimulation true;

if (_setPos) then {
    if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
        _startPos = [(call ARC_fnc_getStartingPos), 20] call CBA_fnc_randPos;
        _unit setPos _startPos;
    } else {
        if (isNil "ARC_reinforcementPosition") then {
            _unit setPos ARC_cam_preCamPos;
        } else {
            _unit setPos ARC_reinforcementPosition;
        };
    };
};

// Apply loadout
if (_applyLoadout) then {
    if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
        _unit setUnitLoadout [ARC_cam_preCamLoadout_new, true];
    } else {
        ["r", _unit] call f_fnc_assignGear;
    };
};

// Shutdown spectator
[false] call f_fnc_ForceExit;
{[_x] call hyp_fnc_traceFireRemove;false} count allUnits;
[] spawn {uiSleep 2;{[_x] call hyp_fnc_traceFireRemove;false} count allUnits;};
[false] call acre_api_fnc_setSpectator;

// Join empty group
if (_clearGroup) then {
    [_unit] joinSilent grpNull;
};

// Rebuild briefing
call compile preprocessFileLineNumbers "briefing.sqf";
call compile preprocessFileLineNumbers "f\briefing\f_orbatNotes.sqf";

[{[false] call acre_api_fnc_setSpectator}, [], 3] call CBA_fnc_waitAndExecute;

[_unit, _args] call _code;

if (_removeFromList) then {
    private _playerIndex = ARC_spectatorUnits find _unit;
    if (_playerIndex > -1) then {
        ARC_spectatorUnits deleteAt _playerIndex;
        publicVariable "ARC_spectatorUnits";
    };
};

_unit setVariable ["ARC_rejoinFinished", true, true];