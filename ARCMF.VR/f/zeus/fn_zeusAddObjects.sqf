private ["_curator","_mode","_objects","_getGlobalVars"];

if !(isServer) exitWith {};

_curator = [_this,0,objNull] call bis_fnc_param;
_mode = [_this,1,[],[true,west,objNull,[]]] call bis_fnc_param;
_groupleaders = [_this,2,false] call bis_fnc_param;

if !(_curator in allCurators) then {
	_curator = getAssignedCuratorLogic _curator;
};

if (isNull _curator || typeOf _curator != "ModuleCurator_F") exitWith {
	player GlobalChat format ["DEBUG (f\zeus\fn_zeusAddAddons.sqf): Could not resolve curator properly, is either null or not the correct type. IsNull = %1, _curator type : %2 (should be ModuleCurator_F)",isNull _curator,typeOf _curator];
};

_objects = [];
switch (typeName _mode) do {
	case "ARRAY": {_objects = _mode};
	case "OBJECT": {_objects = [_mode]};
	case "SIDE": {
		{if (side _x == _mode && {!(vehicle _x in _objects)}) then {_objects pushback (vehicle _x)}} forEach allUnits;
	};
	case "BOOL": {
		 if (_mode) then {
		 	_objects = allMissionObjects "";
		 	if (_objects isEqualTo (curatorEditableObjects _curator)) then {
		 		_objects = [];
		 	};
		 } else {
		 	_curator removeCuratorEditableObjects [curatorEditableObjects _curator, true];
		 };
	 };
};

_leaders = [];
if (_groupLeaders) then {
	{
		if ((isNull group _x) || _x == leader group _x) then {
			_leaders pushBack (vehicle _x);
		};
	} forEach _objects;
	_objects = _leaders;
};

_curator addCuratorEditableObjects [_objects, true];