private ["_unit"];

_unit = _this select 0;
waitUntil {!isNull _unit};

if (isPlayer _unit || !((side _unit) in [west,east,resistance,civilian])) exitWith {};

_unit disableAI "AUTOCOMBAT";
_unit disableAI "SUPPRESSION";
_unit setBehaviour "AWARE";
_unit setSpeedMode "FULL";
_unit allowFleeing 0;