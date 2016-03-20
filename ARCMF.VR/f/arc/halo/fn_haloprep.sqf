/*
	Author: tryteyker
	Description: This script is a light version of the HALO Drop one, with the unit only being given a parachute.
	Parameter(s): GROUP, OBJECT or SIDE
	Returns: BOOLEAN - true once all units have been processed
	Example _done = west call ARC_fnc_haloPrep;
*/

private ["_units"];

_units = switch (typeName _this) do {
	case "GROUP": {units _this};
	case "OBJECT": {[_this]};
	case "SIDE": {allUnits};
};

_processUnit = {
	private ["_unit","_backpackItems","_backpackType","_emptyShell"];
	
	_unit = _this;
	_backpackItems = backpackItems _unit;
	_backpackType = backpack _unit;
	_emptyShell = createVehicle ["GroundWeaponHolder", getPosATL _unit, [], 0, "CAN_COLLIDE"];
	_emptyShell addBackpackCargoGlobal [_backpackType,1];
	removeBackpack _unit;
	_emptyShell attachTo [_unit, [-0.1, 0.8, 0.8]];
	_emptyShell setVectorDirAndUp [[0,0,-1], [0,1,0]];
	_unit addBackpack "B_Parachute";

	[_emptyShell, _backpackType, _backpackItems, _unit] spawn {
		private ["_emptyShell","_backpackType","_backpackItems","_unit"];
		
		_emptyShell = _this select 0;
		_backpackType = _this select 1;
		_backpackItems = _this select 2;
		_unit = _this select 3;
		
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
					_emptyShell setVectorDirAndUp [[0,-1,0],[0,0,-1]];
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

if (typeName _this == "SIDE") then {
	{if (side _x == _this) then {_x call _processUnit}} forEach _units;
} else {
	{_x call _processUnit} forEach _units;
};