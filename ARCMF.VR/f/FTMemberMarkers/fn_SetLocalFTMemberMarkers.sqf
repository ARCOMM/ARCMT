if (!isDedicated && (isNull player)) then {
    waitUntil {sleep 0.1; !isNull player};
};

f_fnc_SetTeamValue = {
	_unit = _this select 0;
	_color = _this select 1;
	_unit setVariable ["assignedTeam", _color];
};

[] spawn {
	f_var_HandlerGroup = [];
	while {!isNull player} do {
		{
			if (!(_x in f_var_HandlerGroup) && alive _x) then {
				[_x] execVM "f\FTMemberMarkers\f_localFTMemberMarker.sqf";
				f_var_HandlerGroup pushBack _x;
			};
		} forEach units (group player);
		sleep 5;
	};
};

if (player == leader (group player)) then {
	[group player, player] spawn f_fnc_LocalFTMarkerSync;
};