private ["_display","_unit"];

disableSerialization;

_display = findDisplay 2000;
_caller = player;
_unitList = _display displayCtrl 2100;
_gearTextBox = _display displayCtrl 1400;

_selectedUnitData = _unitList lbData (lbCurSel _unitList);
_gearString = ctrlText _gearTextBox;

{
	if ((getPlayerUID _x) == _selectedUnitData) exitWith {
		hint (format ["%1 receiving loadout '%2'", _x, _gearString]);
		
		[_gearString, _x] spawn {
			[_this, "f_fnc_assignGear", (_this select 1), false, true] call BIS_fnc_MP;
			{(_this select 1) removeAction _x;} forEach ((_this select 1) getVariable ["ARC_radioActions", []]);
			[(_this select 1)] call f_acre2_clientInit;
		};
		
		closeDialog 1;
	};
} forEach (allPlayers - entities "HeadlessClient_F");

closeDialog 1;