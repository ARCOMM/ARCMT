// F3 - ACRE2 Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RADIO STRUCTURE

// Whether any radios should be assigned at all, to any units
// TRUE = Disable radios for all units
f_radios_settings_acre2_disableRadios = false;

// Whether or not the radio frequencies should be left as default, and not split per side
// TRUE = Disable frequency seperation across sides
f_radios_settings_acre2_disableFrequencySplit = false;

// Set a list of units that get a short wave
// if its nil, that means all units get a radio
// empty array means that noone gets
f_radios_settings_acre2_shortRange = nil;

// Set the list of units that get a long range
f_radios_settings_acre2_longRange = ["co", "dc", "m", "ftl", "mmgag","hmgag","matag","hatag", "mtrag","msamag","sp","vc", "pp", "eng", "engm", "uav", "div"];

// Unit types you want to give an extra long-range radio
// E.G: ["co", "m"] would give the CO and all medics an extra long-range radios
f_radios_settings_acre2_extraRadios = ["co","m","dc"];

// Standard Short
f_radios_settings_acre2_standardSHRadio = "ACRE_PRC343";
// Standard LongRange
f_radios_settings_acre2_standardLRRadio = "ACRE_PRC148";
// Extra radio
f_radios_settings_acre2_extraRadio = "ACRE_PRC148";

// ====================================================================================
// BABEL API

// Defines the languages that exist in the mission.
// string id, displayname
f_radios_settings_acre2_languages = [["english","English"],["russian","Russian"],["greek","Greek"]];

// defines the language that a player can speak.
// can define multiple
waitUntil {!isNil "arc_param_babel"};
f_radios_settings_acre2_language_blufor = if (arc_param_babel) then { ["english"] } else { ["english","russian","greek"] };
f_radios_settings_acre2_language_opfor = if (arc_param_babel) then { ["russian"] } else { ["english","russian","greek"] };
f_radios_settings_acre2_language_indfor = if (arc_param_babel) then { ["greek"] } else { ["english","russian","greek"] };

// Channels names
// first item in the array will correspond to the first channel
// note these only work if f_radios_settings_acre2_disableFrequencySplit is set to false
f_radios_settings_acre2_groups_blufor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];
f_radios_settings_acre2_groups_opfor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];
f_radios_settings_acre2_groups_indfor = ["ALPHA SQUAD","BRAVO SQUAD","CHARLIE SQUAD","COMMAND","AIR","ARMOR","SPEC"];

// ====================================================================================
// MISC ACRE2 settings, these are all set the ACRE2 defaults

// ACRE Radio loss settings.
// Indiciates how much terrian loss should be modelled.
// Values: 0 no loss, 1 full terrian loss, default: 1
[1] call acre_api_fnc_setLossModelScale;

// ACRE full Duplex
// Sets the duplex of radio transmissions. If set to true, it means that you will receive transmissions even while talking and multiple people can speak at the same time.
// This variable is for param
_duplex = if (arc_param_duplex == 1) then {true} else {false};
[_duplex] call acre_api_fnc_setFullDuplex;

// ACRE Interference
// Sets whether transmissions will interfere with eachother. This, by default, causes signal loss when multiple people are transmitting on the same frequency.
[false] call acre_api_fnc_setInterference;

// ACRE can AI hear players?
// False - AI not hear players, true - AI hear players.
[false] call acre_api_fnc_setRevealToAI;
