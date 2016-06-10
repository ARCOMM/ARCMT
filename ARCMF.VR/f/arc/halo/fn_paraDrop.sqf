/*
 * Author: Kingsley
 * Paradrops the given groups/units at the given position and height
 *
 * Arguments:
 * 0: Units, groups or side to paradrop <GROUP/OBJECT/SIDE>
 * 1: Position to drop units at <POSITION ATL/MARKER NAME>
 * 2: Height to drop units from (meters) <NUMBER>
 * 3: Radius in meters <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [[grpOne, grpTwo, unitOne, unitTwo], [0,0,0], 500] call ARC_fnc_paraDrop;
 * [west, [0,0,0], 250, 1000] call ARC_fnc_paraDrop;
 *
 * Public: Yes
 */

if (!isServer) exitWith {};

params [
    ["_objects", [], [[], sideUnknown]],
    ["_position", [], [[], ""]],
    ["_height", 250, [0]],
    ["_radius", 500, [0]]
];

if (_position isEqualType "") then {_position = getMarkerPos _position};
if (count _position == 0) exitWith {};

_height = _height + round (random 50);

private _dzMarker = createMarker [format ["ARC_paraDropDZ_%1", _position], _position];
_dzMarker setMarkerSize [_radius, _radius];
_dzMarker setMarkerShape "ELLIPSE";
_dzMarker setMarkerAlpha 0;

private _units = [];

if (_objects isEqualType sideUnknown) then {
    {_units pushBackUnique _x; false} count (allUnits select {side _x == _objects});
} else {
    {
        private _item = _x;

        if (_item isEqualType grpNull) then {
            {_units pushBackUnique _x; false} count (units _item);
        } else {
            if (_item isEqualType objNull) then {
                _units pushBackUnique _item;
            };
        };

        false
    } count _objects;
};

{
    private _paraPos = [_dzMarker] call CBA_fnc_randPosArea;
    private _parachute = createVehicle ["Steerable_Parachute_F", (_paraPos vectorAdd [0, 0, _height]), [], 0, "NONE"];
    [_x, _parachute] remoteExec ["moveInDriver", _x];
    false
} count _units;

deleteMarker _dzMarker;