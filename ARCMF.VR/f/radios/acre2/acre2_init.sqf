f_var_radios = 1;

waitUntil {!isNil "arc_param_babel_west" && !isNil "arc_param_babel_east" && !isNil "arc_param_babel_resistance" && !isNil "arc_param_duplex"};

f_acre2_presetSetup = compile preprocessFileLineNumbers "f\radios\acre2\acre2_setupPresets.sqf";
f_acre2_clientInit = compile preprocessFileLineNumbers "f\radios\acre2\acre2_clientInit.sqf";
f_fnc_GiveSideRadio = compile preprocessFileLineNumbers "f\radios\acre2\fn_giveSideRadio.sqf";

f_radios_acre2_giveRadioAction = {
	private ["_x"];
	_x = _this;
	_unit = player;
    
	[_x] spawn {
		waitUntil {time > 3};
		systemChat format ["[ARCMF] Warning: No room to add radio '%1', report this to the mission maker. You now have a scroll-wheel action to get this radio.", _this select 0];
	};
	
	_radioName = getText (configfile >> "CfgWeapons" >> _x >> "displayName");
	_actionID = _unit addAction [format ["<t color='#3375D6'>[Radios] Give myself a %1 radio</t>", _radioName], {
		_radioToGive = (_this select 3) select 0;
		_unit = (_this select 0),
		if (_unit canAdd _radioToGive) then {
			_unit addItem _radioToGive;
			_unit removeAction (_this select 2);
		} else {
			systemChat format ["[ARCMF] Warning: No room to add radio '%1', remove more stuff and try again.", _radioToGive];
		};
	}, [_x], 0, false, false, "", "(_target == _this)"];
	
	[_actionID, _unit] spawn {
		sleep 300;
		if (!isNull (_this select 1)) then {
			(_this select 1) removeAction (_this select 0);
		};
	};
};

if (!isDedicated && (isNull player)) then {
	waitUntil {sleep 0.1; !isNull player};
};

#include "acre2_settings.sqf"

_presetSetup = [] call f_acre2_presetSetup;

if (hasInterface && !isNull player) then {
	{
		_x call acre_api_fnc_babelAddLanguageType;
	} forEach f_radios_settings_acre2_languages;
	[] call f_acre2_clientInit;
};