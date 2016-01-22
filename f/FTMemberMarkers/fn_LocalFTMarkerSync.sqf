private ["_grp","_colorTeam"];
_grp = _this select 0;
_unit = _this select 1;
waitUntil {!isnil "f_var_debugMode"};

while{_unit == (leader _grp) && alive _unit} do
{
	{
		if(alive _x) then
		{
			_colorTeam = [assignedTeam _x] call f_fnc_GetMarkerColor;
			if((_x getvariable ["assignedTeam","ColorWhite"]) != _colorTeam) then
			{
				if (f_var_debugMode == 1) then {player sidechat format["%1 ---- %2 by %3",(_x getvariable ["assignedTeam","ColorWhite"])	,_colorTeam,_unit];};
				[[_x,_colorTeam] , "f_fnc_SetTeamValue", _grp, false] spawn BIS_fnc_MP;
			};
		};
	} foreach units _grp;
	sleep 3;
};
if(!isnil "_grp") then
{
	_x = leader _grp;
	[[_grp,_x] , "f_fnc_LocalFTMarkerSync",_x, false] spawn BIS_fnc_MP;
};
