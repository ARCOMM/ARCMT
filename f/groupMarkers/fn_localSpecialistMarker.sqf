private ["_unt","_mkrType","_mkrText","_mkrColor","_mkrName","_mkr","_untName"];

call compile format ["if (!isnil '%1') then {_unt = %1;};",_this select 0];

_untName = _this select 0;
_mkrType = _this select 1;
_mkrText = _this select 2;
_mkrColor = _this select 3;
_mkrName = format ["mkr_%1_spec",_untName];

if (isNil "_unt") then {
	call compile format ["
		waitUntil {
		sleep 3;
		!isnil '%1'
		};
		_unt = %1;

	",_untName];
};

if (!alive _unt) exitWith {};

switch (_mkrType) do {
// Medics
	case 0:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPosATL _unt select 0),(getPosATL _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_med";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.5, 0.5];
		_mkrName setMarkerTextLocal _mkrText;
	};
// UAV Operator
	case 1:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPosATL _unt select 0),(getPosATL _unt select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_uav";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.5, 0.5];
		_mkrName setMarkerTextLocal _mkrText;
	};
};

while {alive _unt} do {
	_mkrName setMarkerPosLocal [(getPos _unt select 0),(getPos  _unt select 1)];
	sleep 2;
};

sleep (getNumber (missionconfigfile >> "RespawnDelay")) + 3;

call compile format ["
		waitUntil {
		sleep 0.1;
		!isnil '%1'
		};
		_unt = %1;

	",_untName];

if (alive _unt) exitWith {
	[_untName, _mkrType, _mkrText, _mkrColor] spawn f_fnc_localSpecialistMarker;
};
