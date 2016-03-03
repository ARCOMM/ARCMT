player createDiarySubject ["ARCMF", "ARCMF"];

_zeus = "<br/><font size='18'>Positional Audio - <execute expression=""[true] call acre_api_fnc_setSpectator"">Enable</execute> / <execute expression=""[false] call acre_api_fnc_setSpectator"">Disable</execute></font><br/>
Toggling positional audio puts you into the ACRE spectator mode which allows you to hear player voices relative to the Zeus perspective.";

player createDiaryRecord ["ARCMF", ["Zeus", _zeus]];

if ((call ARC_fnc_isRespawnEnabled)) then {
	_spect = "<br/><font size='18'>Spectator - <execute expression=""[player, player, 3, 1, true] call f_fnc_CamInit"">Forcefully Start Spectator</execute></font><br/>
	Forcefully starting spectator means your player unit will leave its group and disappear. Exiting the spectator is a complex process and may cause unexpected behaviour.";
	player createDiaryRecord ["ARCMF", ["Spectator", _spect]];
};

_radios = "<br/><font size='18'>Missing Radios</font><br/>
<font size='16'>AN/PRC-343 - <execute expression=""[player, '343'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/>
<font size='16'>AN/PRC-148 - <execute expression=""[player, '148'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/>
<font size='16'>AN/PRC-152 - <execute expression=""[player, '152'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/>
Do not abuse these functions. They are only to be used if you are missing a radio and it's not by mission design.";

player createDiaryRecord ["ARCMF", ["Radios", _radios]];

if (serverCommandAvailable "#kick" || isServer) then {
	_gear = "<br/><font size='18'>Assign Gear to Player</font><br/>
	<font size='16'><execute expression=""openMap false; createDialog 'GUI_Gear';"">Open Gear Manager</execute></font>";

	player createDiaryRecord ["ARCMF", ["Gear", _gear]];
};