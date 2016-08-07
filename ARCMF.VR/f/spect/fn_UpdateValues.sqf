private _ctrlTree = (findDisplay 9228) displayCtrl 2100;
tvClear _ctrlTree;

{
    private _side = _x;
    private _sidePath = _ctrlTree tvAdd [[], toUpper (_side call ARC_fnc_getFactionFromSide)];
    private _sideGroups = allGroups select {side _x == _side};
    private _isPlayerSide = {{isPlayer _x} count (units _x) > 0} count _sideGroups > 0;
    
    _ctrlTree tvSetValue [[_sidePath], -1];
    
    {
        private _group = _x;
        private _groupPath = _ctrlTree tvAdd [[_sidePath], toUpper (groupID _group)];
        private _groupUnits = (units _group) select {alive _x && {!(_x getVariable ["ARC_cam_isVirtual", false])}};
        private _isPlayerGroup = {isPlayer _x} count _groupUnits > 0;
        
        _ctrlTree tvSetData [[_sidePath, _groupPath], format ["%1_%2", _side, groupID _group]];
        _ctrlTree tvSetValue [[_sidePath, _groupPath], 0];
        
        {
            private _unit = _x;
            private _unitText = format ["%1%2", name _unit, (["", " (leader)"] select (leader _unit == _unit))];
            private _unitPath = _ctrlTree tvAdd [[_sidePath, _groupPath], _unitText];
            
            _ctrlTree tvSetData [[_sidePath, _groupPath, _unitPath], str _unit];
            _ctrlTree tvSetValue [[_sidePath, _groupPath, _unitPath], 1];
            
            false
        } count _groupUnits;
        
        _ctrlTree tvSort [[_sidePath, _groupPath], false];
        
        if (_isPlayerGroup) then {
            _ctrlTree tvExpand [_sidePath, _groupPath];
        } else {
            _ctrlTree tvCollapse [_sidePath, _groupPath];
        };
        
        if (_groupUnits isEqualTo []) then {
            _ctrlTree tvDelete [_sidePath, _groupPath];
        };
        
        false
    } count _sideGroups;
    
    _ctrlTree tvSort [[_sidePath], false];
    
    if (_isPlayerSide) then {
        _ctrlTree tvExpand [_sidePath];
    };
    
    if (_sideGroups isEqualTo []) then {
        _ctrlTree tvDelete [_sidePath];
    };
    
    false
} count [west,east,resistance,civilian];

_ctrlTree tvSort [[], false];
