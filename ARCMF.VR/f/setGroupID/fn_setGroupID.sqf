private ["_grp","_name"];

if (!isNil (_this select 0)) then {
	_grp = call compile format ["%1", _this select 0];
	_name = _this select 1;
	_grp setGroupId [format ["%1", _name], "GroupColor0"];
	_grp setVariable ["ARC_groupColour", (_this select 2), true];
	_grp setVariable ["ARC_groupHandled", true, true];
};