private ["_unit","_mkrType","_mkrColor","_mkrName","_mkr","_mkrBorder","_pos"];

_unit = _this select 0;
_mkrName = Format ["mkr_%1",_unit];
_mkrborderName = Format ["mkrB_%1",_unit];

_pos = getposATL _unit;
_marker = _unit call f_fnc_GetMarker;

_mkr = createMarkerLocal [_mkrName,_pos];
_mkr setMarkerShapeLocal "ICON";
_mkr setMarkerTypeLocal _marker;
_mkr setMarkerColorLocal (_unit getvariable ["assignedTeam","ColorWhite"]);
_mkr setMarkerSizeLocal [0.8, 0.8];
_mkr setMarkerDirLocal (direction _unit);

while {alive _unit && (_unit in f_var_HandlerGroup)} do {
	_pos = getposATL _unit;
	_dir = (direction _unit);
	if (alive _unit && {_unit in units group player}) then {
		_mkr setMarkerPosLocal _pos;
		_mkr setMarkerDirLocal _dir;
		_mkr setMarkerColorLocal (_unit getvariable ["assignedTeam","ColorWhite"]);
	} else {
		f_var_HandlerGroup = f_var_HandlerGroup - [_unit];
	};
	sleep 0.1;
};

deleteMarkerLocal _mkrBorder;
deleteMarkerLocal _mkr;
