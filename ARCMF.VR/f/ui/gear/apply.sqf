disableSerialization;

private _display = findDisplay 2000;
private _caller = player;
private _unitList = _display displayCtrl 2100;
private _gearTextBox = _display displayCtrl 1400;

private _selectedUnitData = _unitList lbData (lbCurSel _unitList);
private _gearString = ctrlText _gearTextBox;

{
    if ((getPlayerUID _x) == _selectedUnitData) exitWith {
        hint (format ["%1 receiving loadout '%2'", _x, _gearString]);
        
        [_gearString, _x] remoteExecCall ["f_fnc_assignGear", _x];
        {_x removeAction _x} forEach (_x getVariable ["ARC_radioActions", []]);
        [_x] call f_acre2_clientInit;
        
        closeDialog 1;
    };
    
    false
} count (allPlayers - entities "HeadlessClient_F");

closeDialog 1;