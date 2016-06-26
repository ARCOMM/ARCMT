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
    ["_execEH", true]
];

private ["_unit","_newGrp","_className","_newUnit"];

_unit = player;
_className = switch (ARC_cam_preCamSide) do {
    case west: {"B_Soldier_F"};
    case east: {"O_Soldier_F"};
    case resistance: {"I_Soldier_F"};
    default {"B_Soldier_F"};
};

// Create center and group
createCenter ARC_cam_preCamSide;
_newGrp = createGroup ARC_cam_preCamSide;

// Create unit in safe mode
_newUnit = _newGrp createUnit [_className, [0,0,0], [], 0, "FORM"];
_newUnit allowDamage false;
_newUnit hideObjectGlobal true;
_newUnit enableSimulationGlobal true;

// Moves into new unit
selectPlayer _newUnit;
waitUntil {player == _newUnit};

// Set name, position and turns off safe mode, then deletes old unit
_newUnit setName ARC_cam_preCamName;

if (_setPos) then {
    if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
        _startPos = [(call ARC_fnc_getStartingPos), 20] call CBA_fnc_randPos;
        _newUnit setPos _startPos;
    } else {
        if (isNil "ARC_reinforcementPosition") then {
            _newUnit setPos ARC_cam_preCamPos;
        } else {
            _newUnit setPos ARC_reinforcementPosition;
        };
    };
};

_newUnit allowDamage true;
_newUnit hideObjectGlobal false;
deleteVehicle _unit;

// Apply loadout
if (_applyLoadout) then {
    if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
        this = _newUnit;
        call compile ARC_cam_preCamLoadout;
    } else {
        ["r", _newUnit] call f_fnc_assignGear;
    };
};

// Shutdown spectator
[] call f_fnc_ForceExit;
[false] call acre_api_fnc_setSpectator;
{[_x] call hyp_fnc_traceFireRemove;false} count allUnits;
[] spawn {uiSleep 2;{[_x] call hyp_fnc_traceFireRemove;false} count allUnits;};

// Join empty group
[_newUnit] joinSilent grpNull;

// Rebuild briefing
call compile preprocessFileLineNumbers "briefing.sqf";
call compile preprocessFileLineNumbers "f\briefing\f_orbatNotes.sqf";

mars_arcomm_reinforcementUnits pushBackUnique player;
publicVariable "mars_arcomm_reinforcementUnits";