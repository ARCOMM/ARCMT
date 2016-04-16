/*
 * Author: Kingsley
 * Sets starting location of given side in adversarial mode
 *
 * Arguments:
 * 0: Side <SIDE>
 *
 * Return Value:
 * None
 *
 * Example:
 * [west] call ARC_fnc_setAdversarialStart;
 *
 * Public: Yes
 */

params [["_side",sideUnknown]];

if (_side == sideUnknown) exitWith {};

hint "Click a position on the map";

_side onMapSingleClick {
    {
        _unit = _x;

        if (isPlayer _unit && side _unit == _this) then {
            _startPos = [_pos, 10] call CBA_fnc_randPos;
            _unit setPos _startPos;
        };

        false
    } count (allPlayers - (entities "HeadlessClient_F"));
    
    onMapSingleClick "";
    
    false
};
