/*
 * Author: Kingsley
 * Set the given sides start position for the mission (doesn't change)
 *
 * Arguments:
 * Side <SIDE>
 *
 * Return Value:
 * None
 *
 * Example:
 * [west] call ARC_adv_fnc_setSideStart;
 *
 * Public: No
 */

private _sides = [west, east, resistance];
private _worldSize = worldSize;
private _worldCenter = [_worldSize / 2, _worldSize / 2, 0];
private _places = selectBestPlaces [_worldCenter, _worldSize, "meadow", 100, 3];

{
    _x params ["_pos", "_expResult"];
    
    private _side = _sides select _forEachIndex;
    private _markerName = switch (_side) do {
        case west: {"respawn_west"};
        case east: {"respawn_east"};
        case resistance: {"respawn_guerrila"};
    };
    
    // Move respawn marker
    _markerName setMarkerPos _pos;
    _markerName setMarkerShape "ICON";
    _markerName setMarkerType "hd_start";
    _markerName setMarkerAlpha 1;
    _markerName setMarkerColor "ColorBlack";
    _markerName setMarkerSize [1,1];
    _markerName setMarkerText _markerName;
    
    // Dome
    private _dome = "Land_Dome_Small_F" createVehicle _pos;
    _dome allowDamage false;
    _dome enableSimulationGlobal false;
    _dome setVariable ['BIS_disabled_Door_1', 1, true];
    _dome setVariable ['BIS_disabled_Door_2', 1, true];
    
    // Arsenal crate
    private _arsenal = createVehicle ["Land_PaperBox_open_full_F", _pos, [], 0, "NONE"];
    _arsenal allowDamage false;
    
    // Broadcast arsenal crate
    private _broadcastCrateVar = format ["ARC_adv_%1_arsenal", _markerName];
    _arsenal call compile format ["%1 = _this", _broadcastCrateVar];
    publicVariable _broadcastCrateVar;
    
    // Groups
    ["Initialize", [true]] call BIS_fnc_dynamicGroups;
} forEach _places;
