/* 
// HALO PREP SCRIPT//
// By tryteyker //
// Usage:
// [side] spawn arc_fnc_haloprep;
// Example:
// [WEST] spawn arc_fnc_haloprep;
// This script is a light version of the HALO Drop one, with the unit only being given a parachute.
*/

_side = _this select 0; // Which side this loops through
{
  if (((side _x) == _side) && isPlayer _x) then {
    _unit = _x;
    // Gather backpack items
    _bpkitems = backpackItems _unit;
    _bpkType = backpack _unit;
    // AttachTo does not work on a backpack itself, so we create an empty shell to hold it.
    _emptyShell = createVehicle ["GroundWeaponHolder", getposATL _unit, [], 0, "can_collide"];
    _emptyShell addBackpackCargoGlobal [_bpkType,1];
	removeBackpack _unit;
    // And then attach it to the player.
    _emptyShell attachTo [_unit, [-0.1, 0.8, 0.8]];
	_emptyShell SetVectorDirAndUp [[0,0,-1],[0,1,0]];
	_unit addBackpack "B_Parachute"; // Add a parachute.

	// We now spawn a new thread keeping track of when to discard the empty shell.
	[_emptyShell, _bpkType, _bpkitems, _unit] spawn {
		_emptyShell = _this select 0; // Empty shell
		_bpkType = _this select 1; // What type of backpack
		_bpkitems = _this select 2; // Backpack items
		_unit = _this select 3; // The unit
		while {(backpack _unit) == "B_Parachute"} do {
			// Check unit stance
			switch (stance _unit) do {
			case "STAND":
			{
				_emptyShell attachTo [_unit, [-0.1, 0.8, 0.8]];
			};
			case "CROUCH":
			{
				_emptyShell attachTo [_unit, [-0.1, 0.9, 0.38]];
			};
			case "UNDEFINED": // Parachuting
			{
				_emptyShell SetVectorDirAndUp [[0,-1,0],[0,0,-1]];
				_emptyShell attachTo [_unit, [-0.1, -0.1, -0.6]];
			};
			};
			sleep 1;
		};
		// This adds an empty backpack (same class) and adds the items back into it
		_unit addBackpack _bpkType;
		clearAllItemsFromBackpack _unit;
		{_unit addItemToBackpack _x} foreach _bpkitems;
		deleteVehicle _emptyShell;
	};
  };
} foreach allUnits;

// STAND
// _emptyShell attachTo [_unit, [-0.1, 0.8, 0.8]];

// CROUCH
// _emptyShell attachTo [_unit, [-0.1, 0.9, 0.38]];

// UNDEFINED (SWIMMING, HALO DROP ETC)
//_emptyShell SetVectorDirAndUp [[0,-1,0],[0,0,-1]];
//_emptyShell attachTo [_unit, [-0.1, -0.1, -0.6]];