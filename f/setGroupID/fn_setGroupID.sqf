private ["_grpID","_grpName","_index","_grp"];

_grpID = _this select 0 select 0;
_grpName = _this select 0 select 1;
_grpLongText = _this select 0 select 2;
_grpShortText = _this select 0 select 3;
_grpColor = _this select 0 select 4;
_grpHeader = _this select 0 select 5;
_index = _this select 1;

if (!isNil _grpID) then {
	_grp = call compile format ["%1", _grpID];
	_grp setGroupId [format ["%1", _grpName],"GroupColor0"];
	_grp setVariable ["ARC_index", _index, true];
	_grp setVariable ["ARC_longtext", _grpLongText, true];
	_grp setVariable ["ARC_shorttext", _grpShortText, true];
	_grp setVariable ["ARC_color", _grpColor, true];
	_grp setVariable ["ARC_header", _grpHeader, true];
};
