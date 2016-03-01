f_radios_settings_acre2_disableRadios = false;
f_radios_settings_acre2_disableFrequencySplit = false;

f_radios_settings_acre2_languages = [["english","English"],["russian","Russian"],["greek","Greek"]];

f_radios_settings_acre2_language_blufor = [arc_param_babel_west];
f_radios_settings_acre2_language_opfor = [arc_param_babel_east];
f_radios_settings_acre2_language_indfor = [arc_param_babel_resistance];

f_radios_settings_acre2_groups_blufor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];
f_radios_settings_acre2_groups_opfor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];
f_radios_settings_acre2_groups_indfor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];

[1] call acre_api_fnc_setLossModelScale;
[arc_param_duplex] call acre_api_fnc_setFullDuplex;

[false] call acre_api_fnc_setInterference;
[false] call acre_api_fnc_setRevealToAI;