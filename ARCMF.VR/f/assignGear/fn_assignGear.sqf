diag_log (format ["[ARCMF] f_fnc_assignGear executed with parameters: %1", str _this]);
/*
if (!local player) exitWith {
	diag_log "[ARCMF] f_fnc_assignGear: player is not local; exited";
};
*/
_this spawn {
	diag_log (format ["[ARCMF] f_fnc_assignGear: entered spawn with parameters: %1", str _this]);
	
	private ["_typeofUnit", "_unit"];

	_typeofUnit = toLower (_this select 0);
	_unit = _this select 1;
	_isAI = param [2, false];
	this = _unit;
	
	if (_isAI) then {
		diag_log "[ARCMF] f_fnc_assignGear: _isAI = true";
		waitUntil {!isNull _unit};
		diag_log "[ARCMF] f_fnc_assignGear: _unit is no longer null";
	} else {
		diag_log "[ARCMF] f_fnc_assignGear: _isAI = false";
		waitUntil {(call ARC_fnc_isPlayerReady) && player == _unit && time > 0};
		diag_log "[ARCMF] f_fnc_assignGear: player is ready, player is _unit, time is > 0";
	};

	_unit setVariable ["f_var_assignGear", _typeofUnit, true];
	_unit setVariable ["f_var_assignGear_done", false, true];
	
	diag_log "[ARCMF] f_fnc_assignGear: setup _unit variables";

	switch (side _unit) do {
		case west: {
			#include "f_assignGear_blufor.sqf"
		};
		case east: {
			#include "f_assignGear_opfor.sqf"
		};
		case resistance: {
			#include "f_assignGear_indfor.sqf"
		};
	};
	
	diag_log "[ARCMF] f_fnc_assignGear: finished loadout code";

	_unit setVariable ["f_var_assignGear_done", true, true];
	
	diag_log "[ARCMF] f_fnc_assignGear: flagged _unit";
};