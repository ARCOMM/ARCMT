/*
	Author: tryteyker
	Description: This script gives units parachutes, saves their backpackas and drops them at the specified position at the given height.
	Parameter(s):
		0: GROUP, OBJECT or SIDE - units to use
		1: POSITION - positin to drop units at
		2: SCALAR - height to drop at
	Returns: BOOLEAN - true once all units have been processed
	Example _done = [west, 250] call ARC_fnc_haloDrop;
*/

private ["_units","_pos","_height"];

_units = switch (typeName (_this select 0)) do {
	case "GROUP": {units (_this select 0)};
	case "OBJECT": {[(_this select 0)]};
	case "SIDE": {allUnits};
};

_pos = _this select 1;
_height = _this select 2;

_processUnit = {
	private ["_haloPos","_backpackItems","_backpackType","_emptyShell"];
	params ["_unit","_pos","_height"];
	_haloPos = [(_pos select 0) + (random 100), (_pos select 1) + (random 100), (_pos select 2) + _height];
    _backpackItems = backpackItems _unit;
    _backpackType = backpack _unit;
    _emptyShell = createVehicle ["GroundWeaponHolder", getPosATL _unit, [], 0, "CAN_COLLIDE"];
    _emptyShell addBackpackCargoGlobal [_backpackType, 1];
	removeBackpack _unit;
    _emptyShell attachTo [_unit, [-0.1, 0.8, 0.8]];
	_emptyShell setVectorDirAndUp [[0,0,-1], [0,1,0]];
	_unit addBackpack "B_Parachute";
	_unit setPosATL _haloPos;

	[_emptyShell, _backpackType, _backpackItems, _unit] spawn {
		params ["_emptyShell", "_backpackType", "_backpackItems", "_unit"];
		
		while {(backpack _unit) == "B_Parachute"} do {
			sleep 1;
			switch (stance _unit) do {
				case "STAND": {
					_emptyShell attachTo [_unit, [-0.1, 0.8, 0.8]];
				};
				case "CROUCH": {
					_emptyShell attachTo [_unit, [-0.1, 0.9, 0.38]];
				};
				case "UNDEFINED": {
					_emptyShell setVectorDirAndUp [[0,-1,0], [0,0,-1]];
					_emptyShell attachTo [_unit, [-0.1, -0.1, -0.6]];
				};
			};
		};

		_unit addBackpack _backpackType;
		clearAllItemsFromBackpack _unit;
		{_unit addItemToBackpack _x} forEach _backpackItems;
		deleteVehicle _emptyShell;
	};
};

if (typeName (_this select 0) == "SIDE") then {
	{if (side _x == (_this select 0)) then {[_x, _pos, _height] call _processUnit}} forEach _units;
} else {
	{[_x, _pos, _height] call _processUnit} forEach _units;
};