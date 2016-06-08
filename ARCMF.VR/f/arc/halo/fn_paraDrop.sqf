/*
 * Author: Kingsley
 * Paradrops the given groups/units at the given position and height
 *
 * Arguments:
 * 0: Units, groups or side to paradrop <GROUP/OBJECT/SIDE>
 * 1: Position to drop units at <POSITION ATL>
 * 2: Height to drop units from (meters) <NUMBER>
 * 3: Spacing in meters between each unit <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [[grpOne, grpTwo, unitOne, unitTwo], [0,0,0], 500] call ARC_fnc_paraDrop;
 * [west, [0,0,0], 250] call ARC_fnc_paraDrop;
 *
 * Public: Yes
 */

if (!isServer) exitWith {
    _this remoteExec ["ARC_fnc_paraDrop", 2];
};

params [
    ["_objects", [], [[], sideUnknown]],
    ["_position", [], [[]]],
    ["_height", 250, [0]],
    ["_spacing", 50, [0]]
];

if (count _position == 0) exitWith {};

_position set [2, _height];

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
    private _parachute = createVehicle ["Steerable_Parachute_F", ([_position, _spacing] call CBA_fnc_randPos), [], 0, "NONE"];
    _x moveInDriver _parachute;
    false
} count _units;