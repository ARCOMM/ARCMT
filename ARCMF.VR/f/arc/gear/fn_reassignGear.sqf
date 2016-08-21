/*
 * Author: Kingsley
 * Reassigns gear using units' loadout variable
 *
 * Arguments:
 * 0: Side <SIDE>
 *
 * Return Value:
 * None
 *
 * Example:
 * [west] call ARC_fnc_reassignGear;
 *
 * Public: Yes
 */

params [["_side", sideUnknown]];

if (_side == sideUnknown) exitWith {};

{
    _unit = _x;

    if (isPlayer _unit && side _unit == _side) then {
        _gearString = _unit getVariable ["f_var_assignGear", "r"];
        [_gearString, _unit] spawn {
            params ["_gearStr", "_unit"];
            [_gearStr, _unit] remoteExecCall ["f_fnc_assignGear", _unit];
            {_unit removeAction _x} forEach (_unit getVariable ["ARC_radioActions", []]);
            [_unit] call f_acre2_clientInit;
        };
    };

    false
} count (allPlayers - (entities "HeadlessClient_F"));