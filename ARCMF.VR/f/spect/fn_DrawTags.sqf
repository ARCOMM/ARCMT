if (f_cam_tagsButton == 0) exitWith {};
if (!f_cam_toggleTags || f_cam_mapMode == 2) exitWith {};

private _camera = [] call f_cam_GetCurrentCam;
private _units = switch (f_cam_tagsButton) do {
    case 1: {allUnits};
    case 2: {allUnits select {isPlayer _x}};
    case 3: {allUnits select {side group _x == west}};
    case 4: {allUnits select {side group _x == east}};
    case 5: {allUnits select {side group _x == resistance}};
    case 6: {allUnits select {side group _x == civilian}};
};

{
    private _color = [
        f_cam_empty_color,
        f_cam_blufor_color,
        f_cam_opfor_color,
        f_cam_indep_color,
        f_cam_civ_color
    ] select (([west, east, resistance, civilian] find (side group _x)) + 1);
    _color set [3, (linearConversion [0, 2000, (_camera distance _x), 1, 0, true])];

    drawIcon3D [
        "\A3\ui_f\data\map\markers\military\dot_CA.paa",
        _color,
        ASLtoAGL ((getPosASLVisual _x) vectorAdd [0, 0, 2]),
        1,
        1,
        0,
        (["", name _x] select (isPlayer _x)),
        2,
        0.03,
        "PuristaBold",
        "center"
    ];

    false
} count (_units select {
    alive _x &&
    {(crew vehicle _x) param [0, _x] == _x}
});