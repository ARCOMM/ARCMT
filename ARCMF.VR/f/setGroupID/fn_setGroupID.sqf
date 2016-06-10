params ["_grpID", "_name", "_color"];

if (!isNil _grpID) then {
    private _grp = call compile format ["%1", _grpID];
    _grp setGroupId [_name, "GroupColor0"];
    _grp setVariable ["ARC_groupColour", _color, true];
};
