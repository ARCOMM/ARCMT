/*
 * Author: Kingsley
 * Gets an objective position and two attacking start positions
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Array in format [objective pos, attacking pos 1, attacking pos 2] <ARRAY>
 *
 * Example:
 * [] call ARC_adv_fnc_getObjective;
 *
 * Public: No
 */

#include "script_component.hpp"

// Delete previous markers
{deleteMarker _x} forEach ["ARC_adv_objectiveMarker","ARC_adv_attackMarker0","ARC_adv_attackMarker1"];

private _objPos = ["ARC_adv_worldOutline", false] call CBA_fnc_randPosArea;
private _safePositions = [
    getMarkerPos "respawn_west",
    getMarkerPos "respawn_east",
    getMarkerPos "respawn_guerrila"
];

while {
    private _isNearSafePos = false;
    
    {
        if (_x distance _objPos < 2000) then {
            _isNearSafePos = true;
        };
    } forEach _safePositions;
    
    ((surfaceIsWater _objPos) || _isNearSafePos)
} do {
    _objPos = ["ARC_adv_worldOutline", false] call CBA_fnc_randPosArea;
};

GVAR(objPos) = _objPos;

private _markerName = createMarker ["ARC_adv_objectiveMarker", _objPos];
_markerName setMarkerShape "ELLIPSE";
_markerName setMarkerBrush "BORDER";
_markerName setMarkerAlpha 1;
_markerName setMarkerColor "ColorBlack";
_markerName setMarkerSize [500, 500];

private _attackPos1 = _objPos;
private _attackPos2 = _objPos;

while {(surfaceIsWater _attackPos1) || (_attackPos1 distance _objPos < 500) || (_attackPos1 distance _attackPos2 < 500)} do {
    _attackPos1 = [_markerName, true] call CBA_fnc_randPosArea;
};

while {(surfaceIsWater _attackPos2) || (_attackPos2 distance _objPos < 500) || (_attackPos1 distance _attackPos2 < 500)} do {
    _attackPos2 = [_markerName, true] call CBA_fnc_randPosArea;
};

{
    private _markerName = createMarker [format ["ARC_adv_attackMarker%1", _forEachIndex], _x];
    _markerName setMarkerShape "ICON";
    _markerName setMarkerType "mil_dot";
    _markerName setMarkerAlpha 1;
    _markerName setMarkerColor "ColorBlue";
    _markerName setMarkerSize [1,1];
    _markerName setMarkerText _markerName;
} forEach [_attackPos1, _attackPos2];

GVAR(objective) = [_objPos, _attackPos1, _attackPos2];

GVAR(objective)