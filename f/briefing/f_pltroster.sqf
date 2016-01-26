waitUntil {scriptDone f_script_setGroupIDs};

_ARC_groups = [];
_finalText = "";

_countGroupIndexes = {
	(({(_x getVariable ["ARC_index", 100]) == (_this select 0)} count (_this select 1)) > 0)
};

{
	if ((side _x == side group player) && !(_x in _ARC_groups) && ({_x in playableUnits} count units _x) > 0) then {
		_ARC_groups pushBack _x;
	};
} forEach allGroups;

_curIndex = 0;
diag_log (str ["______________________________Group Count: ", count _ARC_groups]);
while {(count _ARC_groups) > 0} do {
	{
		_grp = _x;
	    _name = groupID _grp;
		_index = _grp getVariable ["ARC_index", 100];

		if (_index == _curIndex) then {
			_color = _grp getVariable ["ARC_color", "#FFFFFF"];
			_longText = _grp getVariable ["ARC_longtext", ""];
			_shortText = _grp getVariable ["ARC_shorttext", ""];
			_header = _grp getVariable ["ARC_header", false];
			_leader = leader _grp;
			_grpUnits = (units _grp) - [_leader];

			if (_header) then {
				_finalText = _finalText + format ["<br/><br/><font size='14' face='PuristaBold' color='#FFFFFF'>%1</font><br/>", _longText];
			} else {
				if ((count (toArray _longText)) > 0) then {
					_finalText = _finalText + format ["<br/><font size='14' color='#FFFFFF'>%1</font> ", _longText];
				};
			};

			if ((count (toArray _shortText)) > 0) then {
				_finalText = _finalText + format ["<font size='14' color='#FFFFFF'>%1</font> ", _shortText];
			};

			_finalText = _finalText + format ["<font color='%2' size='14'>%1 (L)</font>", name _leader, _color];

			{
				_icon = "";
				if (_x getVariable ["f_var_assignGear", ""] == "m") then {_icon = " (M)";};
				_finalText = _finalText + format [", <font color='%2' size='14'>%1%3</font>", name _x, _color, _icon];
			} forEach _grpUnits;

			_ARC_groups = _ARC_groups - [_grp];

			if !([_index, _ARC_groups] call _countGroupIndexes) then {
				_curIndex = _curIndex + 1;
			};
		} else {
			if !([_index, _ARC_groups] call _countGroupIndexes) then {
				_curIndex = _curIndex + 1;
			};
		};
	} forEach _ARC_groups;
	sleep 0.1;
};

player createDiaryRecord ["PltRoster", ["Roster", _finalText]];
