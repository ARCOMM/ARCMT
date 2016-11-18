/*
	Author: tryteyker
	This function changes ready status of side - once both sides have called ready, weapons are live.

	PARAMETERS:
	0: SIDE - Side to change readiness status of.
	RETURNS
	0: BOOL - True or false depending on success.
*/

params ["_assignedUnit","_caller","_ID"];

if (_caller != _assignedUnit) exitWith {false}; // If somebody else managed to call it.

_assignedUnit removeAction _ID; // Remove ready call.
private _side = side _assignedUnit;

missionNamespace setVariable [format ["ARCMF_%1_RDY_STATUS",_side], true];

format ["%1 has called ready!",_side] remoteExecCall ["systemChat",0];

call ARC_fnc_checkGlobalReadiness;

true