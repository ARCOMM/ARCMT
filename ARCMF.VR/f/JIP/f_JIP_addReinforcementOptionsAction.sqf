private ["_unit","_textAction"];

_unit = _this select 0;
_textAction = localize "Select Reinforcement Options";
_unit disableAI "move";

if (_unit == player) then {
	F3_JIP_reinforcementOptionsAction = player addaction ["<t color='#dddd00'>" + _textAction + "</t>","f\JIP\f_JIP_reinforcementOptions.sqf",[],6,true,false,"","_target == player"];
};
