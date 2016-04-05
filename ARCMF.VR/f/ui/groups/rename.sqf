private ["_display","_unit"];

disableSerialization;

_display = findDisplay 2001;
_caller = player;
_groupCombo = _display displayCtrl 2100;
_groupEdit = _display displayCtrl 1400;

_selectedGroupData = _groupCombo lbData (lbCurSel _groupCombo);
_groupString = ctrlText _groupEdit;

{
    if ((getPlayerUID _x) == _selectedGroupData) exitWith {
        _grp = group _x;
        _grp setGroupIdGlobal [_groupString, "GroupColor0"];
        _grp setVariable ["ARC_groupHandled", true, true];
    };
} forEach (allPlayers - entities "HeadlessClient_F");

closeDialog 1;
createDialog "GUI_Groups";