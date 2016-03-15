f_radios_settings_acre2_disableRadios = false;
f_radios_settings_acre2_disableFrequencySplit = false;

f_radios_settings_acre2_languages = [["english","English"],["russian","Russian"],["greek","Greek"]];

if (arc_param_babel_west == "config") then {
	f_radios_settings_acre2_language_blufor = (getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "blufor" >> "languages"));
} else {
	f_radios_settings_acre2_language_blufor = [arc_param_babel_west];
};

if (arc_param_babel_east == "config") then {
	f_radios_settings_acre2_language_opfor = (getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "opfor" >> "languages"));
} else {
	f_radios_settings_acre2_language_opfor = [arc_param_babel_east];
};

if (arc_param_babel_resistance == "config") then {
	f_radios_settings_acre2_language_indfor = (getArray (missionConfigFile >> "CfgARCMF" >> "acre" >> "indfor" >> "languages"));
} else {
	f_radios_settings_acre2_language_indfor = [arc_param_babel_resistance];
};

f_radios_settings_acre2_groups_blufor = ["COMMAND","1ST PLATOON","2ND PLATOON","ALPHA","BRAVO","CHARLIE","DELTA","ECHO","FOXTROT","PHANTOM","RAVEN","GAMBLER","MMG","MAT","BACKUP 1","BACKUP 2"];
f_radios_settings_acre2_groups_opfor = ["COMMAND","1ST PLATOON","2ND PLATOON","ALPHA","BRAVO","CHARLIE","DELTA","ECHO","FOXTROT","PHANTOM","RAVEN","GAMBLER","MMG","MAT","BACKUP 1","BACKUP 2"];
f_radios_settings_acre2_groups_indfor = ["COMMAND","1ST PLATOON","2ND PLATOON","ALPHA","BRAVO","CHARLIE","DELTA","ECHO","FOXTROT","PHANTOM","RAVEN","GAMBLER","MMG","MAT","BACKUP 1","BACKUP 2"];

[1] call acre_api_fnc_setLossModelScale;
[arc_param_duplex] call acre_api_fnc_setFullDuplex;

[false] call acre_api_fnc_setInterference;
[arc_param_acre_reveal] call acre_api_fnc_setRevealToAI;