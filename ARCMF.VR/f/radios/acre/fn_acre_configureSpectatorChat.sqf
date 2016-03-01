private["_unit"];

_unit = player;

if (alive _unit) then {
	if ([true] call acre_api_fnc_isSpectator) then {
		_ret = [false] call acre_api_fnc_setSpectator;
	};
} else {
	if (!([true] call acre_api_fnc_isSpectator)) then {
		_ret = [true] call acre_api_fnc_setSpectator;
	};
};