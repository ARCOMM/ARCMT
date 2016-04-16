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
            [_this, "f_fnc_assignGear", (_this select 1), false, true] call BIS_fnc_MP;
            {(_this select 1) removeAction _x} forEach ((_this select 1) getVariable ["ARC_radioActions", []]);
            [(_this select 1)] call f_acre2_clientInit;
        };
    };

    false
} count (allPlayers - (entities "HeadlessClient_F"));