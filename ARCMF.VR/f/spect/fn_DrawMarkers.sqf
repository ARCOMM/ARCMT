if (f_cam_mapMode == 0) exitWith {};
disableSerialization;

_fullmapWindow = _this select 0;
_camera = ([] call f_cam_GetCurrentCam);
_fullmapWindow drawIcon [
    "\A3\ui_f\data\GUI\Rsc\RscDisplayMissionEditor\iconCamera_ca.paa",
    [0,0,0,1],
    getPos _camera,
    20,
    20,
    getDir _camera,
    "",
    0
];

{
    _pos = getPos _x;
    _x1 = _pos select 0;
    _y = _pos select 1;
    if (alive _x) then {
        _name = "";
        _color = switch (side _x) do {
            case blufor: {f_cam_blufor_color};
            case opfor: {f_cam_opfor_color};
            case independent: {f_cam_indep_color};
            case civilian: {f_cam_civ_color};
            default {f_cam_empty_color};
        };
        
        if (isPlayer _x) then {_name = name _x};
        if (leader _x == _x && {isPlayer _x} count units _x > 0) then {_name = format["%1 - %2",toString(toArray(groupID (group _x)) - [45]),_name]};
        if (vehicle _x != _x && crew (vehicle _x) select 0 == _x || vehicle _x == _x) then {
            _icon = (vehicle _x getVariable ["f_cam_icon",""]);
            if (_icon == "") then {_icon = getText (configFile >> "CfgVehicles" >> typeOf (vehicle _x) >> "icon");vehicle _x setVariable ["f_cam_icon",_icon]};
            _fullmapWindow drawIcon [_icon, _color, getpos _x, 19, 19, getDir (vehicle _x), _name, 1];
        };
    };
} forEach allUnits;

f_cam_fired = f_cam_fired - [objNull];
if (f_cam_tracerOn) then {
    {
        if (!isNull _x) then {
            _pos = getPos _x;
            _newPos = [(_pos select 0) + (3 * sin(getDir _x)), (_pos select 1) + (3 * cos(getDir _x)), _pos select 2];
            _fullmapWindow drawLine [_pos, _newPos, [1,0,0,1]];
        };
    } forEach f_cam_fired;
};