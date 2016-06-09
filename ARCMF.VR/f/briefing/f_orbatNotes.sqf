private ["_orbatText", "_groups", "_precompileGroups","_maxSlots","_freeSlots"];

_orbatText = "<br />NOTE: The roster below is only accurate at mission start.<br /><br /><font size='18'>GROUP LEADERS + MEDICS</font><br /><br />";
_groups = [];
_hiddenGroups = [];

{
    if ((side _x == side group player) && !(_x in _groups) && ({_x in playableUnits} count units _x) > 0) then {
        _groups pushBack _x;
    };

    false
} count allGroups;

_groups = _groups - _hiddenGroups;

{
    _color = "#FFFFFF";

    if (_x == group player) then {
        _color = switch (side player) do {
             case west: {"#0080FF"};
             case east: {"#B40404"};
             case resistance: {"#298A08"};
             default {"#8904B1"};
         };
    };

    _orbatText = _orbatText + format ["<font color='%3'>%1 %2</font>", _x, name leader _x, _color] + "<br />";

    {
        if (_x getVariable ["f_var_assignGear",""] == "m" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format ["|- %1 [M]", name _x] + "<br />";
        };

        false
    } count units _x;

    false
} count _groups;

_vehArray = [];

{
    if ({vehicle _x != _x} count units _x > 0) then {
        {
            if (vehicle _x != _x && {!(vehicle _x in _vehArray)}) then {
                _vehArray pushBack vehicle _x;
            };

            false
        } count units _x;
    };

    false
} count _groups;

if (count _vehArray > 0) then {
    _orbatText = _orbatText + "<br />VEHICLE CREWS + PASSENGERS<br />";

    {
        _vehName = [getText (configFile >> "CfgVehicles" >> typeOf _x >> "displayname"), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_- "] call BIS_fnc_filterString;

        _orbatText = _orbatText + "<br />" + format ["%1 ", _vehName];

        _maxSlots = getNumber (configfile >> "CfgVehicles" >> typeof _x >> "transportSoldier") + (count allTurrets [_x, true] - count allTurrets _x);
        _freeSlots = _x emptyPositions "cargo";

        if (_maxSlots > 0) then {
            _orbatText = _orbatText + format ["[%1/%2]", (_maxSlots - _freeSlots), _maxSlots];
        };

        _orbatText = _orbatText  + "<br />";

        {
            if ((assignedVehicleRole _x select 0) != "CARGO") then {
                _veh = vehicle _x;
                _crewrole = switch (true) do {
                    case (driver _veh == _x && !((vehicle _x isKindOf "helicopter") || (vehicle _x isKindOf "plane"))): {" [D]"};
                    case (driver _veh == _x && ((vehicle _x isKindOf "helicopter") || (vehicle _x isKindOf "plane"))): {" [P]"};
                    case (commander _veh == _x): {" [CO]"};
                    case (gunner _veh == _x): {" [G]"};
                    case (assignedVehicleRole _x select 0 == "Turret" && commander _veh != _x && gunner _veh != _x && driver _veh != _x): {" [C]"};
                    default {" [C]"};
                };

                _orbatText = _orbatText + format ["|- %1", name _x] + _crewrole + "<br/>";
            };

            false
        } count crew _x;

        _groupList = [];

        {
            if (!(group _x in _groupList) && {(assignedVehicleRole _x select 0) == "CARGO"} count (units group _x) > 0) then {
                _groupList pushBack group _x;
            };

            false
        } count crew _x;

        if (count _groupList > 0) then {
            {
                _orbatText = _orbatText + format ["|- %1", _x] + " [CARGO] <br />";

                false
            } count _groupList;
        };

        false
    } count _vehArray;
};

player createDiaryRecord ["diary", ["Platoon Roster", _orbatText]];