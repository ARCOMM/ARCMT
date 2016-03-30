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
            _color = switch (side _x) do {
                case west: {f_cam_blufor_color};
                case east: {f_cam_opfor_color};
                case resistance: {f_cam_indep_color};
                case civilian: {[civilian] call BIS_fnc_sideColor};
                case sideUnknown: {[sideUnknown] call BIS_fnc_sideColor};
            };
            
            lbSetColor [_listBox,_index,_color];
            
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