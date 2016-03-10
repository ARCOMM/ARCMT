private ["_unit","_hasJIP","_startPos"];

_unit = _this select 0;

if ((call ARC_fnc_isRespawnEnabled)) then {
	if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
		waitUntil {!isNull _unit};
		
		if !(isPlayer _unit) exitWith {};
		if !(local _unit) exitWith {};

		_hasJIP = _unit getVariable ["ARC_hasJIP", false];

		if (_hasJIP) exitWith {};

		_unit allowDamage false;

		_startPos = [(call ARC_fnc_getStartingPos), 20] call CBA_fnc_randPos;
		_unit setPos _startPos;

		sleep 1;

		[_unit, _unit] call ace_medical_fnc_treatmentAdvanced_fullHeal;
		_unit allowDamage true;

		_unit setVariable ["ARC_hasJIP", true, true];
	};
};