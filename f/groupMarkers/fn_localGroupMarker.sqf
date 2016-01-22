private ["_grp","_mkrType","_mkrText","_mkrColor","_mkrName","_mkr","_grpName"];

call compile format ["if (!isnil '%1') then {_grp = %1;};",_this select 0];

_grpName = _this select 0;
_mkrType = _this select 1;
_mkrText = _this select 2;
_mkrColor = _this select 3;
_mkrName = format ["mkr_%1",_grpName];

if (isNil "_grp") then {
	call compile format ["
		waitUntil {
		sleep 3;
		if(!isnil '%1') then
		{
			count units %1 > 0
		};
		};
		_grp = %1;

	",_grpName];

};

if (isnil "_grp") exitWith {};

switch (_mkrType) do {
// Platoon HQ
	case 0:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal "b_hq";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Fireteam
	case 1:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_inf";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Machineguns (MMG, HMG)
	case 2:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_support";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Launchers (MAT, HAT, SAM)
	case 3:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_motor_inf";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Sniper Team
	case 4:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_recon";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Mortar Team
	case 5:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_mortar";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Engineers
	case 6:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_maint";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// IFVs and APCs
	case 7:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_mech_inf";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Tanks
	case 8:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_armor";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Transport and Attack Helos
	case 9:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_air";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Planes and jets
	case 10:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_plane";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
// Artillery
	case 11:
	{
		_mkr = createMarkerLocal [_mkrName,[(getPos leader _grp select 0),(getPos leader _grp select 1)]];
		_mkr setMarkerShapeLocal "ICON";
		_mkrName setMarkerTypeLocal  "b_art";
		_mkrName setMarkerColorLocal _mkrColor;
		_mkrName setMarkerSizeLocal [0.8, 0.8];
		_mkrName setMarkerTextLocal _mkrText;
	};
};

while {{!isNull _x} count units _grp > 0} do {
	_mkrName setMarkerPosLocal [(getPos leader _grp select 0),(getPos leader _grp select 1)];
	sleep 2;
};
