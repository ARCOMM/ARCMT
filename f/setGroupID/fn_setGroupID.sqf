private ["_grp","_name"];

if (!isnil (_this select 0)) then {
	_grp = call compile format ["%1",_this select 0];
	_name = _this select 1;
	_grp setGroupId [format ["%1",_name],"GroupColor0"];
};
