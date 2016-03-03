private ["_display","_unit"];

disableSerialization;

_display = _this select 0;
_caller = player;
_unitList = _display displayCtrl 2100;
_gearTextBox = _display displayCtrl 1400;

{
	_index = _unitList lbAdd (name _x);
	_unitList lbSetData [_index, (getPlayerUID _x)];
} forEach (allUnits - entities "HeadlessClient_F");