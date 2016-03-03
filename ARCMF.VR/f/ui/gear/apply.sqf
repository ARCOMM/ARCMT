private ["_display","_unit"];

disableSerialization;

_display = findDisplay 2000;
_caller = player;
_unitList = _display displayCtrl 2100;
_gearTextBox = _display displayCtrl 1400;

_selectedUnitData = _unitList lbData (lbCurSel _unitList);
_gearString = ctrlText _gearTextBox;

systemChat format ["_selectedUnitData: %1", _selectedUnitData];
systemChat format ["_gearString: %1", _gearString];

{
	if ((getPlayerUID _x) == _selectedUnitData) exitWith {
		hint (format ["%1 receiving %2 loadout", _x, _gearString]);
		[[_gearString, _x], "f_fnc_assignGear", _x, false, true] call BIS_fnc_MP;
	};
} forEach (allUnits - entities "HeadlessClient_F");