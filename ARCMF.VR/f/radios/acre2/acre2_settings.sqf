f_radios_settings_acre2_disableRadios = false;
f_radios_settings_acre2_disableFrequencySplit = false;

f_radios_settings_acre2_languages = [["english","English"],["russian","Russian"],["greek","Greek"]];

waitUntil {!isNil "arc_param_babel_west"; !isNil "arc_param_babel_east"; !isNil "arc_param_babel_resistance"; !isNil "arc_param_babel_civ";};
f_radios_settings_acre2_language_blufor = [arc_param_babel_west];
f_radios_settings_acre2_language_opfor = [arc_param_babel_east];
f_radios_settings_acre2_language_indfor = [arc_param_babel_resistance];
f_radios_settings_acre2_language_civ = [arc_param_babel_civ];

f_radios_settings_acre2_groups_blufor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];
f_radios_settings_acre2_groups_opfor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];
f_radios_settings_acre2_groups_indfor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];
f_radios_settings_acre2_groups_civ = ["COMM 1","COMM 2","COMM 3","COMM 4","COMM 5","COMM 6","COMM 7"];

[1] call acre_api_fnc_setLossModelScale;

waitUntil {!isNil "arc_param_duplex"};
[arc_param_duplex] call acre_api_fnc_setFullDuplex;

[false] call acre_api_fnc_setInterference;
[false] call acre_api_fnc_setRevealToAI;