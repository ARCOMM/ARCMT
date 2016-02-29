_listBox =  2100;
f_cam_checkIndex = {
	{
		_x setVariable ["f_spect_listBoxIndex", _forEachIndex];
	} forEach f_cam_listUnits;
};

while {true} do {
	ctrlMapAnimClear ((findDisplay 9228) displayCtrl 1350);
	((findDisplay 9228) displayCtrl 1350) ctrlMapAnimAdd [0.3, f_cam_map_zoom,visiblePosition (camTarget f_cam_camera)];
	ctrlMapAnimCommit ((findDisplay 9228) displayCtrl 1350);
	ctrlSetFocus ((findDisplay 9228) displayCtrl 1315);

	if (alive f_cam_curTarget) then {
		ctrlSetText [1000,format ["%1", name f_cam_curTarget]];
	} else {
		ctrlSetText [1000,format ["%1", "Dead"]];
	};

	_groupArr = call f_fnc_GetPlayers;
    f_cam_units = ((_groupArr select 0) + (_groupArr select 1));
	f_cam_players = _groupArr select 0;

	_tempArr = [];
	if (f_cam_playersOnly) then {
		_tempArr = f_cam_players;
	} else {
		_tempArr = f_cam_units;
	};

	{
		if (!(_x in f_cam_listUnits) && ({alive _x} count units _x) > 0 ) then {
			_text = toString(toArray(groupID _x) - [45]);
			_index = lbAdd [_listBox,_text];
			_x setVariable ["f_spect_listBoxIndex",_index];
			f_cam_listUnits pushBack _x;
			lbSetColor [_listBox,_index,[side _x,false] call BIS_fnc_sideColor];
			{
				if (alive _x) then {
					if (!(_x in f_cam_listUnits) && !(_x isKindOf "VirtualMan_F")) then {
						f_cam_listUnits pushBack _x;
						_text = "	" + name _x;
						_index = lbAdd [_listBox,_text];
						_x setVariable ["f_spect_listBoxIndex",_index];
					};
				};
			} forEach units _x;
		};
	} forEach _tempArr;

	{
		_index = _x getVariable ["f_spect_listBoxIndex",-1];
		if (typeName _x == "GROUP") then {
			if (_index >= 0 && ({alive _x} count units _x) > 0 && {lbText [_listBox,_index] != (toString(toArray(groupID _x) - [45]))}) then {
				lbDelete [_listBox,_index];
				f_cam_listUnits = f_cam_listUnits - [_x];
				[] call f_cam_checkIndex;
			};
			if (({alive _x} count units _x) <= 0  && _index >= 0) then {
				lbDelete [_listBox,_index];
				f_cam_listUnits = f_cam_listUnits - [_x];
				[] call f_cam_checkIndex;
			};
		} else {
			_val = lbText [_listBox,_index] != "	" + name _x;
			if (_index >= 0 && alive _x && _val ) then {
				lbDelete [_listBox,_index];
				f_cam_listUnits = f_cam_listUnits - [_x];
				[] call f_cam_checkIndex;
			};
			if (!alive _x) then {
				if (_index >= 0) then {
					lbDelete [_listBox,_index];
					f_cam_listUnits = f_cam_listUnits - [_x];
					[] call f_cam_checkIndex;
				};
			};
		};
	} forEach f_cam_listUnits;
	sleep 1;
};