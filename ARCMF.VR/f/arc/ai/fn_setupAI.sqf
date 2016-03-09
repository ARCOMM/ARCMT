if (!isServer) exitWith {};

private ["_unit"];

_unit = _this select 0;
waitUntil {!isNull _unit};

_isMan = _unit isKindOf "CAManBase";
_side = side _unit;

if (!_isMan || !(_side in [west,east,resistance,civilian])) exitWith {};

_unit disableAI "AUTOCOMBAT";
_unit disableAI "SUPPRESSION";
_unit setBehaviour "AWARE";
_unit setSpeedMode "FULL";
_unit allowFleeing 0;