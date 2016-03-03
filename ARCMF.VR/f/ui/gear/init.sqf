private ["_display","_unit"];

disableSerialization;

_display = _this select 0;
_caller = player;
_label = _display displayCtrl 1100;
_unitList = _display displayCtrl 2100;
_gearTextBox = _display displayCtrl 1400;

_label ctrlSetStructuredText (parseText "<t size='0.8' font='RobotoCondensed'>Enter the loadout name defined in f_assignGear_X - common values are 'r', 'co', 'ar' etc. Ask the mission maker, they should know what to do!</t>");

{
	_index = _unitList lbAdd (name _x);
	_unitList lbSetData [_index, (getPlayerUID _x)];
	
	if (_x == _caller) then {
		_unitList lbSetCurSel _index;
	};
} forEach (allPlayers - entities "HeadlessClient_F");