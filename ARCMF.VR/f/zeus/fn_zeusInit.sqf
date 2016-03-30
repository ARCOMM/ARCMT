if !(isServer) exitWith {};

private ["_unit","_addons","_objects","_curator","_createModule"];

_unit = [_this, 0, objNull] call BIS_fnc_param;
_addons = [_this, 1, true, ["", true, []]] call BIS_fnc_param;
_objects = [_this, 2, [], [objNull, true, [], west]] call BIS_fnc_param;
_announce = [_this, 3, false] call BIS_fnc_param;

if (isNull _unit) exitWith {};

if !(isNull (getAssignedCuratorLogic _unit)) exitWith {
    diag_log format ["DEBUG (f\zeus\fn_zeusInit.sqf): ZEUS already assigned to %1.", _unit];
    systemchat format ["DEBUG (f\zeus\fn_zeusInit.sqf): ZEUS already assigned to %1.", _unit];
};

if !(isPlayer _unit) exitWith {
    diag_log format ["DEBUG (f\zeus\fn_zeusInit.sqf): Did not assign ZEUS to %1 because it is not under control of a player.", _unit];
    systemchat format ["DEBUG (f\zeus\fn_zeusInit.sqf): Did not assign ZEUS to %1 because it is not under control of a player.", _unit];
};

if (isNil "f_var_sideCenter") then {
    f_var_sideCenter = createCenter sideLogic;
    publicVariable "f_var_sideCenter";
};

_curator = (createGroup f_var_sideCenter) createUnit ["ModuleCurator_F", [0,0,0], [], 0, ""];
_unit assignCurator _curator;
[_curator, _addons] spawn f_fnc_zeusAddAddons;
[_curator, _objects] spawn f_fnc_zeusAddObjects;

_curator setCuratorWaypointCost 0;
{_curator setCuratorCoef [_x, 0];} forEach ["place","edit","delete","destroy","group","synchronize"];

if ({!isNil _x} count ["f_param_AISkill_BLUFOR","f_param_AISkill_INDP","f_param_AISkill_OPFOR"] > 0) then {
    _curator addEventHandler ["CuratorObjectPlaced", {{[_x] call f_fnc_setAISkill;} forEach crew (_this select 1)}];
};

if (_announce) then {
    _curator setVariable ["owner", format ["%1", _unit], true];
    [["Alert", [format ["%1 has become curator!", name _unit]]], "BIS_fnc_showNotification", true] call BIS_fnc_MP;
};

_curator