private ["_display","_unit"];

disableSerialization;

_display = _this select 0;
_caller = player;
_groupCombo = _display displayCtrl 2100;
_groupEdit = _display displayCtrl 1400;

{
    if (isPlayer (leader _x)) then {
        _index = _groupCombo lbAdd (format ["%1 (%2)", groupID _x, name (leader _x)]);
        _groupCombo lbSetData [_index, (getPlayerUID (leader _x))];
        
        if (_x == (group _caller)) then {
            _groupCombo lbSetCurSel _index;
        };
    };
    
    false
} count allGroups;