#define RADIO_343 "ACRE_PRC343"
#define RADIO_148 "ACRE_PRC148"
#define RADIO_152 "ACRE_PRC152"
#define RADIO_117F "ACRE_PRC117F"
#define RADIO_77 "ACRE_PRC77"

_presetName = switch (side player) do {
	case west: {"default2"};
	case east: {"default3"};
	case resistance: {"default4"};
	default {"default"};
};

if (f_radios_settings_acre2_disableFrequencySplit) then {
	_presetName = "default";
};

_ret = ["ACRE_PRC343", _presetName] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC148", _presetName] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC152", _presetName] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC117F", _presetName] call acre_api_fnc_setPreset;
_ret = ["ItemRadio", _presetName] call acre_api_fnc_setPreset;

if (!alive player) exitWith {[true] call acre_api_fnc_setSpectator;};

_unit = player;

switch (side _unit) do {
	case west: {
		f_radios_settings_acre2_language_blufor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	case east: {
		f_radios_settings_acre2_language_opfor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_opfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	case resistance: {
		f_radios_settings_acre2_language_indfor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	default {
		f_radios_settings_acre2_language_blufor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
};

waitUntil {(player getVariable ["f_var_assignGear_done", false])};
_typeOfUnit = _unit getVariable ["f_var_assignGear", "NIL"];

waitUntil {uiSleep 0.3; !("ItemRadio" in (items _unit + assignedItems _unit))};
uiSleep 1;

waitUntil {[] call acre_api_fnc_isInitialized};
{_unit removeItem _x;} forEach ([] call acre_api_fnc_getCurrentRadioList);

_AN_PRC_343 = switch (side _unit) do {
	case west: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "nato" >> "AN_PRC_343")};
	case east: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "csat" >> "AN_PRC_343")};
	case resistance: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "aaf" >> "AN_PRC_343")};
	default {[]};
};

_AN_PRC_148 = switch (side _unit) do {
	case west: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "nato" >> "AN_PRC_148")};
	case east: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "csat" >> "AN_PRC_148")};
	case resistance: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "aaf" >> "AN_PRC_148")};
	default {[]};
};

_AN_PRC_152 = switch (side _unit) do {
	case west: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "nato" >> "AN_PRC_152")};
	case east: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "csat" >> "AN_PRC_152")};
	case resistance: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "aaf" >> "AN_PRC_152")};
	default {[]};
};

_AN_PRC_117F = switch (side _unit) do {
	case west: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "nato" >> "AN_PRC_117F")};
	case east: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "csat" >> "AN_PRC_117F")};
	case resistance: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "aaf" >> "AN_PRC_117F")};
	default {[]};
};

_AN_PRC_77 = switch (side _unit) do {
	case west: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "nato" >> "AN_PRC_77")};
	case east: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "csat" >> "AN_PRC_77")};
	case resistance: {getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "aaf" >> "AN_PRC_77")};
	default {[]};
};

if (_typeOfUnit != "NIL") then {
	if (_typeOfUnit in _AN_PRC_343 || (count _AN_PRC_343 == 1 && toLower (_AN_PRC_343 select 0) == "all")) then {
		if (_unit canAdd RADIO_343) then {
			_unit addItem RADIO_343;
		} else {
			RADIO_343 call f_radios_acre2_giveRadioAction;
		};
	};
	
	if (_typeOfUnit in _AN_PRC_148 || (count _AN_PRC_148 == 1 && toLower (_AN_PRC_148 select 0) == "all")) then {
		if (_unit canAdd RADIO_148) then {
			_unit addItem RADIO_148;
		} else {
			RADIO_148 call f_radios_acre2_giveRadioAction;
		};
	};
	
	if (_typeOfUnit in _AN_PRC_152 || (count _AN_PRC_152 == 1 && toLower (_AN_PRC_152 select 0) == "all")) then {
		if (_unit canAdd RADIO_152) then {
			_unit addItem RADIO_152;
		} else {
			RADIO_152 call f_radios_acre2_giveRadioAction;
		};
	};
	
	if (_typeOfUnit in _AN_PRC_117F || (count _AN_PRC_117F == 1 && toLower (_AN_PRC_117F select 0) == "all")) then {
		if (_unit canAdd RADIO_117F) then {
			_unit addItem RADIO_117F;
		} else {
			RADIO_117F call f_radios_acre2_giveRadioAction;
		};
	};
	
	if (_typeOfUnit in _AN_PRC_77 || (count _AN_PRC_77 == 1 && toLower (_AN_PRC_77 select 0) == "all")) then {
		if (_unit canAdd RADIO_77) then {
			_unit addItem RADIO_77;
		} else {
			RADIO_77 call f_radios_acre2_giveRadioAction;
		};
	};
};