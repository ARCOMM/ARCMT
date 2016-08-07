disableSerialization;
sleep 1;
if (f_cam_forcedExit) exitWith {};
createDialog "f_spec_dialog";

_displayDialog = (findDisplay 9228);

ctrlSetText [2112, (f_cam_sideNames select f_cam_sideButton)];
ctrlSetText [2113, (f_cam_tagsNames select f_cam_tagsButton)];
ctrlSetText [2236, (f_cam_tracersNames select f_cam_tracersButton)];

if (f_cam_playersOnly) then {
    ctrlSetText [2111, "SHOW AI (NO)"];
} else {
    ctrlSetText [2111, "SHOW AI (YES)"];
};

_mapWindow = _displayDialog displayCtrl 1350;
_fullmapWindow = _displayDialog displayCtrl 1360;
_mapWindow ctrlShow false;
_fullmapWindow ctrlShow false;
_fullmapWindow mapCenterOnCamera false;
_mapWindow mapCenterOnCamera false;

ctrlShow [1315, !ctrlVisible 1315];
ctrlShow [1300, !ctrlVisible 1300];
ctrlShow [1305, !ctrlVisible 1305];

// Auto-size controls
_btnWidth = safeZoneW / (count f_cam_menuControls);
_w = 0 * safeZoneW + safeZoneX;

{
    ((findDisplay 9228) displayCtrl _x) ctrlSetPosition [_w, (0 * safeZoneH + safeZoneY), _btnWidth, (0.03 * safeZoneH)];
    ((findDisplay 9228) displayCtrl _x) ctrlCommit 0;
    _w = _w + _btnWidth;
} forEach f_cam_menuControls;

[] call f_fnc_UpdateValues;