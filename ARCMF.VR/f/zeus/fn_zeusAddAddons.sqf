private ["_curator","_mode","_addons","_cfgPatches","_class"];

if !(isServer) exitWith {};

_curator = [_this, 0, objNull] call BIS_fnc_param;
_mode = [_this, 1, true, ["", true, []]] call BIS_fnc_param;

if !(_curator in allCurators) then {
    _curator = getAssignedCuratorLogic _curator;
};

if (isNull _curator || typeOf _curator != "ModuleCurator_F") exitWith {
    player GlobalChat format ["DEBUG (f\zeus\fn_zeusAddAddons.sqf): Could not resolve curator properly, is either null or not the correct type. IsNull = %1, _curator type : %2 (should be ModuleCurator_F)",isNull _curator,typeOf _curator];
};

_addons = [""];
_curator setVariable ["Addons", 0, true];

switch (typeName _mode) do {
    case "ARRAY": {_addons = _mode};
    case "STRING": {_addons = [_mode]};
    case "BOOL": {
        if (_mode) then {
            _curator setVariable ["Addons", 3, true];
            _cfgPatches = configfile >> "cfgpatches";
            for "_i" from 0 to (count _cfgPatches - 1) do {
                _class = _cfgPatches select _i;
                if (isclass _class) then {_addons pushBack (configname _class);};
            };
            _addons call bis_fnc_activateaddons;
            removeallcuratoraddons _curator;
        } else {
            _curator setVariable ["Addons", 0, true];
            removeallcuratoraddons _curator;
        };
    };
};

_curator addcuratoraddons _addons;