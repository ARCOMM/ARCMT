[{isDedicated || !isNull player}, {
    [{
        {
            private _unit = _x;
            private _markerName = format ["ARC_unitMarker_%1", _unit];

            if (alive _unit) then {
                private _markerColor = ["ColorWhite","ColorRed","ColorGreen","ColorBlue","ColorYellow"] select (["MAIN","RED","GREEN","BLUE","YELLOW"] find assignedTeam _unit) max 0;
                private _markerIcon = [_unit] call f_fnc_GetMarker;
                private _markerPos = getPosATL _unit;
                private _markerAlpha = linearConversion [
                    0,
                    getNumber (missionConfigFile >> "CfgARCMF" >> "markers" >> (side (group _unit) call ARC_fnc_getFactionFromSide) >> "fireteamMemberFadeDistance"),
                    (_unit distance player),
                    1,
                    0,
                    true
                ];

                if (_markerName in allMapMarkers) then {
                    // Marker already exists
                    _markerName setMarkerPosLocal _markerPos;
                    _markerName setMarkerTypeLocal _markerIcon;
                    _markerName setMarkerColorLocal _markerColor;
                    _markerName setMarkerDirLocal (direction _unit);
                    _markerName setMarkerAlphaLocal _markerAlpha;
                } else {
                    // Marker doesn't exist
                    _markerName = createMarkerLocal [_markerName, _markerPos];
                    _markerName setMarkerShapeLocal "ICON";
                    _markerName setMarkerTypeLocal _markerIcon;
                    _markerName setMarkerColorLocal _markerColor;
                    _markerName setMarkerSizeLocal [0.8, 0.8];
                    _markerName setMarkerDirLocal (direction _unit);
                    _markerName setMarkerAlphaLocal _markerAlpha;
                };
            } else {
                deleteMarkerLocal _markerName;
            };
        } count units (group player);
    }, 0.1, []] call CBA_fnc_addPerFrameHandler;
}, []] call CBA_fnc_waitUntilAndExecute;
