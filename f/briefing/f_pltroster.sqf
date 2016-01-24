waitUntil {scriptDone f_script_setGroupIDs};

_groups = [];
_finalText = "";

{
    if ((side _x == side group player) && !(_x in _groups) && ({_x in playableUnits} count units _x) > 0) then {
		_groups pushBack _x;
	};
} forEach allGroups;

while {count _groups > 0} do {
	{
		_grp = _x;
	    _name = groupID _grp;
		_color = (missionConfigFile >> "ARC_Groups" >> _name >> "color") call BIS_fnc_getCfgData;
		_longText = (missionConfigFile >> "ARC_Groups" >> _name >> "title") call BIS_fnc_getCfgData;
		_shortText = (missionConfigFile >> "ARC_Groups" >> _name >> "initial") call BIS_fnc_getCfgData;
		_header = (missionConfigFile >> "ARC_Groups" >> _name >> "header") call BIS_fnc_getCfgData;
		_order = (missionConfigFile >> "ARC_Groups" >> _name >> "order") call BIS_fnc_getCfgData;

		if (isNull _grp && _header) then {
			_finalText = _finalText + format ["<br/><br/><font size='14' face='PuristaBold' color='#FFFFFF'>%1</font>", _longText];
		} else {
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
		};
	} forEach _groups;
	sleep 0.1;
};

_sets = [];

{
	if (!isNil (_x select 0)) then {
		_grp = call compile format ["%1", _x select 0];
		_color = _x select 1;
		_longText = _x select 2;
		_shortText = _x select 3;
		_header = _x select 4;

		if (side _grp == side player) then {
			if (isNull _grp && _header) then {
				_finalText = _finalText + format ["<br/><br/><font size='14' face='PuristaBold' color='#FFFFFF'>%1</font>", _longText];
			} else {
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
			};
		};
	};
} forEach _sets;

player createDiaryRecord ["PltRoster", ["Roster", _finalText]];
