params ["_grpID", "_color"];

if (!isNil _grpID) then {
    private _grp = call compile format ["%1", _grpID];
    _grp setVariable ["ARC_groupColour", _color, true];
};