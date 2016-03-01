sleep 3;

if (alive player) then {
	[] call f_fnc_acre_removeRadios;
	[] call f_fnc_acre_setRadioFrequencies;
	waitUntil {(player getVariable ["f_var_assignGear_done", false])};
	[] call f_fnc_acre_addRadios;
	[] call f_fnc_acre_configureSpectatorChat;
} else {
	[] call f_fnc_acre_configureSpectatorChat;
};