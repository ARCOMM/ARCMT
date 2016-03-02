_this spawn {
	private ["_typeofUnit", "_unit"];
	
	_isAI = param [2, false];
	
	if (_isAI) then {
		waitUntil {!isNull (_this select 1)};
	} else {
		waitUntil {(call ARC_fnc_isPlayerReady)};
	};

	_typeofUnit = toLower (_this select 0);
	_unit = _this select 1;
	this = _unit;

	if !(local _unit) exitWith {};

	_unit setVariable ["f_var_assignGear", _typeofUnit, true];
	_unit setVariable ["f_var_assignGear_done", false, true];

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

	_unit setVariable ["f_var_assignGear_done", true, true];
};