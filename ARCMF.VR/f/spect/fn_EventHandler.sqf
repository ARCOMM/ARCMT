_type = _this select 0;
_args = _this select 1;
_handled = true;

switch (_type) do
{
    case "MouseButtonDown": {
        if (_args select 1 == 1 && f_cam_mode != 1) then {
            _button = _args select 1;
            f_cam_MouseButton set [_button, true];
        };
        
        if (_args select 1 == 1) then {
            if (f_cam_mode == 1) then {
                f_cam_ads = true;
                f_cam_curTarget switchCamera "gunner";
            };
        };
    };
    case "MouseButtonUp": {
        if (_args select 1 == 1 && f_cam_mode != 1) then {
            _button = _args select 1;
            f_cam_MouseButton set [_button, false];
            [] spawn f_fnc_HandleCamera;
        };
        
        if (_args select 1 == 1) then {
            if (f_cam_mode == 1) then {
                f_cam_ads = false;
                f_cam_curTarget switchCamera "internal";
            };
        };
    };
    case "MapZoom": {
        f_cam_map_zoom = f_cam_map_zoom + ((_args select 1) * 0.05);
        if (f_cam_map_zoom > 0.5) then {
            f_cam_map_zoom = 0.5;
        };
        
        if  (f_cam_map_zoom < 0.05) then {
            f_cam_map_zoom = 0.05;
        };
        
        _handled = true;
    };
    case "MouseMoving": {
        _x = _args select 1;
        _y = _args select 2;
        f_cam_mouseCord = [_x, _y];
        [] spawn f_fnc_HandleCamera;
    };
    case "MouseZChanged": {
        if (!f_cam_ctrl_down) then {
            switch (f_cam_mode) do {
                case 0: {
                    f_cam_zoom = ((f_cam_zoom - ((_args select 1) * f_cam_zoom / 5)) max 0.1) min 650;
                };
                case 3: {
                    f_cam_scrollHeight = (_args select 1);
                };
            };
        } else {
            f_cam_fovZoom = ((f_cam_fovZoom - ((_args select 1) * f_cam_fovZoom / 5)) max 0.1) min 1;
        };
    };
    case "LBListSelChanged": {
        if (count f_cam_listUnits > (_args select 1)) then {
            _unit = f_cam_listUnits select (_args select 1);
            if (!isNil "_unit") then {
                if (typeName _unit == "GROUP") then {_unit = leader _unit};
                if (f_cam_mode == 0 || f_cam_mode == 1) then {
                    f_cam_curTarget = _unit;
                    if (f_cam_toggleCamera) then {f_cam_curTarget switchCamera "INTERNAL";};
                    //ctrlSetText [1000,format ["%1", name f_cam_curTarget]];
                };
                
                if (f_cam_mode == 3) then {
                    _pos = getpos _unit;
                    _x = _pos select 0;
                    _y = _pos select 1;
                    f_cam_freecamera setPosASL [_x, _y, ((getposASL f_cam_freecamera) select 2 ) max ((getTerrainHeightASL [_x, _y]) + 1)];
                };
            };
        };
    };
    case "KeyDown": {
        _key = _args select 1;
        _handled = false;
        if (!isNull (findDisplay 49)) exitWith {if (_key == 1) then {true}};
        
        switch (_key) do {
            // Numpad +
            case 78: {
                f_cam_zoom = f_cam_zoom - 1;
                _handled = true;
            };
            case 1: {
                _handled = false;
            };
            case f_cam_zeusKey: {
                if (serverCommandAvailable "#kick" || !isNull (getAssignedCuratorLogic player)) then {
                    [] spawn {
                        _done = false;
                        waitUntil {sleep 0.1; !isNull (findDisplay 312)};
                        while {!_done} do {
                            waitUntil {sleep 0.1; isNull (findDisplay 312)};
                            if (isNil "bis_fnc_moduleRemoteControl_unit") then {
                                [player, player, player, 0, true] spawn f_fnc_CamInit;
                                _done = true;
                            };
                        };
                    };

                    [] call f_fnc_ForceExit;

                    ["F_ScreenSetup", false] call BIS_fnc_blackOut;
                    
                    if (isNull (getAssignedCuratorLogic player)) then {
                        [[player, true, playableUnits], "f_fnc_zeusInit", false] spawn BIS_fnc_MP;
                    };
                    
                    [] spawn {
                        waitUntil {!isNull (getAssignedCuratorLogic player)};
                        ["F_ScreenSetup"] call BIS_fnc_blackIn;
                        openCuratorInterface;
                    };
                    
                    _handled = true;
                } else {
                    _handled = true;
                };
            };
            // Numpad -
            case 74:
            {
                f_cam_zoom = f_cam_zoom + 1;
                f_cam_zoom = 0.3 max f_cam_zoom;
                _handled = true;
            };
            // T
            case 20: {
                f_cam_tracerOn = !f_cam_tracerOn;
                
                if (f_cam_tracerOn) then {
                    systemChat "Tracers on map activated.";
                } else {
                    systemChat "Tracers on map deactivated.";
                };
                
                _handled = true;
            };
            // U
            case 22: {
                f_cam_hideUI = !f_cam_hideUI;
                [] spawn f_fnc_ToggleGUI;
                _handled = true;
            };
            // W
            case 17: {
                f_cam_freecam_buttons set [0, true];
                _handled = true;
            };
            // S
            case 31: {
                f_cam_freecam_buttons set [1, true];
                _handled = true;
            };
            // A
            case 30: {
                f_cam_freecam_buttons set [2, true];
                _handled = true;
            };
            // D
            case 32: {
                f_cam_freecam_buttons set [3, true];
                _handled = true;
            };
            // N
            case 49: {
                if (f_cam_nvOn) then {
                    f_cam_tiWHOn = true;
                    f_cam_tiBHOn = false;
                    f_cam_nvOn = false;
                    true setCamUseTi 0;
                    camUseNVG false;
                } else {
                    if (f_cam_tiWHOn) then {
                        f_cam_tiWHOn = false;
                        f_cam_tiBHOn = true;
                        f_cam_nvOn = false;
                        true setCamUseTi 1;
                        camUseNVG false;
                    } else {
                        if (f_cam_tiBHOn) then {
                            f_cam_tiWHOn = false;
                            f_cam_tiBHOn = false;
                            f_cam_nvOn = false;
                            false setCamUseTi 0;
                            camUseNVG false;
                        } else {
                            if (!f_cam_nvOn) then {
                                camUseNVG true;
                                f_cam_tiWHOn = false;
                                f_cam_tiBHOn = false;
                                f_cam_nvOn = true;
                                false setCamUseTi 0;
                            };
                        };
                    };
                };

                _handled = true;
            };
            // Q
            case 16: {
                f_cam_freecam_buttons set [4, true];
                _handled = true;
            };
            // Z
            case 44: {
                f_cam_freecam_buttons set [5, true];
                _handled = true;
            };
            // Space
            case 57: {
                f_cam_freecamOn = !f_cam_freecamOn;
                
                if (f_cam_freecamOn) then {
                    f_cam_angleY = 10;
                    [f_cam_freecamera, f_cam_angleY, 0] call BIS_fnc_setPitchBank;
                    f_cam_freecamera cameraEffect ["internal", "BACK"];
                    f_cam_mode = 3;
                    f_cam_freecamera setPosASL (getPosASL f_cam_camera);
                    cameraEffectEnableHUD true;
                    showCinemaBorder false;
                } else {
                    f_cam_freecamera cameraEffect ["Terminate", "BACK"];
                    f_cam_angleY = 45;
                    f_cam_camera cameraEffect ["internal", "BACK"];
                    f_cam_mode = 0;
                    cameraEffectEnableHUD true;
                    showCinemaBorder false;
                };
                
                _handled = true;
            };
            // H
            case 35: {
                hintSilent (parseText f_cam_helptext);
                [] spawn {sleep 10; hintSilent "";};
                _handled = true;
            };
            // Shift
            case 42: {
                f_cam_shift_down = true;
                [] spawn f_fnc_HandleCamera;
                _handled = true;
            };
            case 25: {
                f_cam_muteSpectators = !f_cam_muteSpectators;
                [f_cam_muteSpectators] call acre_api_fnc_setSpectator;
            };
            // Ctrl
            case 29: {
                f_cam_ctrl_down = true;
                [] spawn f_fnc_HandleCamera;
                _handled = true;
            };
            // M
            case 50: {
                f_cam_mapMode = f_cam_mapMode + 1;
                
                if (f_cam_mapMode > 2) then {
                    f_cam_mapMode = 0;
                };
                
                switch (f_cam_mapMode) do {
                    case 0: {
                        ctrlShow [2110, true];
                        ctrlShow [2010, true];
                        ctrlShow [5534, true];
                        ctrlShow [2236, true];
                        ctrlShow [1350, false];
                        ctrlShow [1360, false];
                    };
                    case 1: {
                        ctrlShow [2110, true];
                        ctrlShow [2010, true];
                        ctrlShow [1350, true];
                        ctrlShow [5534, true];
                        ctrlShow [2236, true];
                        ctrlShow [1360, false];
                    };
                    case 2: {
                        ctrlShow [2110, false];
                        ctrlShow [2010, false];
                        ctrlShow [1350, false];
                        ctrlShow [5534, false];
                        ctrlShow [2236, false];
                        ctrlShow [1360, true];
                        
                        _displayDialog = (findDisplay 9228);
                        _fullmapWindow = _displayDialog displayCtrl 1360;
                        ctrlMapAnimClear _fullmapWindow;

                        _fullmapWindow ctrlMapAnimAdd [0.001, 0.1, getPos ([] call f_cam_GetCurrentCam)];
                        ctrlMapAnimCommit _fullmapWindow;
                    };
                };
                
                _handled = true;
            };
        };
        
        _handled
    };
    case "KeyUp": {
        if (!isNull (findDisplay 49)) exitWith {};
        _key = _args select 1;
        _handled = false;
        
        switch (_key) do {
            case 42: {
                f_cam_shift_down = false;
                _handled = true;
            };
            case 1: {
                _handled = false;
            };
            case 29: {
                f_cam_ctrl_down = false;
                _handled = true;
            };
            case 203: {
                _handled = true;
            };
            case 205: {
                _handled = true;
            };
            case 24: {
                _handled = true;
            };
            case 28: {
                _handled = true;
            };
            case 49: {
                _handled = true;
            };
            case 200: {
                _handled = true;
            };
            case 208: {
                _handled = true;
            };
            case 74: {
                _handled = true;
            };
            case 78: {
                _handled = true;
            };
            case 57: {
                _handled = true;
            };
            case 17: {
                f_cam_freecam_buttons set [0, false];
                _handled = true;
            };
            case 31: {
                f_cam_freecam_buttons set [1, false];
                _handled = true;
            };
            case 30: {
                f_cam_freecam_buttons set [2, false];
                _handled = true;
            };
            case 32: {
                f_cam_freecam_buttons set [3, false];
                _handled = true;
            };
            case 16: {
                f_cam_freecam_buttons set [4, false];
                _handled = true;
            };
            case 44: {
                f_cam_freecam_buttons set [5, false];
                _handled = true;
            };
            case 23: {
                f_cam_toggleTags = !f_cam_toggleTags;
                _handled = true;
            };
            case 43: {
                [] call f_fnc_ForceExit;

                [{
                    [player, objNull, 1, 1, true] call f_fnc_CamInit;
                }, [], 2] call CBA_fnc_waitAndExecute;
            };
        };
        
        _handled
    };
    
    _handled
};