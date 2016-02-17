_presetName = switch(side player) do {
	case west: {"default2"};
	case east: {"default3"};
	case resistance: {"default4"};
	default {"default"};
};

if (f_radios_settings_acre2_disableFrequencySplit) then {
	_presetName = "default";
};

_ret = ["ACRE_PRC343", _presetName ] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC148", _presetName ] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC152", _presetName ] call acre_api_fnc_setPreset;
_ret = ["ACRE_PRC117F", _presetName ] call acre_api_fnc_setPreset;
_ret = ["ItemRadio", _presetName ] call acre_api_fnc_setPreset;

if (!alive player) exitWith {[true] call acre_api_fnc_setSpectator;};

_unit = player;

switch (side _unit) do {
	case blufor: {
		f_radios_settings_acre2_language_blufor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	case opfor: {
		f_radios_settings_acre2_language_opfor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_opfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	case independent: {
		f_radios_settings_acre2_language_indfor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
	default {
		f_radios_settings_acre2_language_indfor call acre_api_fnc_babelSetSpokenLanguages;
		[f_radios_settings_acre2_language_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	};
};

waitUntil {(player getVariable ["f_var_assignGear_done", false])};
_typeOfUnit = _unit getVariable ["f_var_assignGear", "NIL"];

waitUntil {uiSleep 0.3; !("ItemRadio" in (items _unit + assignedItems _unit))};
uiSleep 1;

waitUntil {[] call acre_api_fnc_isInitialized};
{_unit removeItem _x;} forEach ([] call acre_api_fnc_getCurrentRadioList);

if (_typeOfUnit != "NIL") then {
	if (!f_radios_settings_acre2_disableRadios) then {
		if (isnil "f_radios_settings_acre2_shortRange") then {
			if (_unit canAdd f_radios_settings_acre2_standardSHRadio) then {
				_unit addItem f_radios_settings_acre2_standardSHRadio;
			} else {
				f_radios_settings_acre2_standardSHRadio call f_radios_acre2_giveRadioAction;
			};
		} else {
			if(_typeOfUnit in f_radios_settings_acre2_shortRange) then {
				if (_unit canAdd f_radios_settings_acre2_standardSHRadio) then {
					_unit addItem f_radios_settings_acre2_standardSHRadio;
				} else {
					f_radios_settings_acre2_standardSHRadio call f_radios_acre2_giveRadioAction;
				};
			};
		};

		if (_typeOfUnit in f_radios_settings_acre2_longRange) then {
			if (_unit canAdd f_radios_settings_acre2_standardLRRadio) then {
				_unit addItem f_radios_settings_acre2_standardLRRadio;
			} else {
				f_radios_settings_acre2_standardLRRadio call f_radios_acre2_giveRadioAction;
			};

			if (_typeOfUnit in f_radios_settings_acre2_extraRadios) then {
				if (_unit canAdd f_radios_settings_acre2_extraRadio) then {
					_unit addItem f_radios_settings_acre2_extraRadio;
				} else {
					f_radios_settings_acre2_extraRadio call f_radios_acre2_giveRadioAction;
				};
			};
		};
	};
};