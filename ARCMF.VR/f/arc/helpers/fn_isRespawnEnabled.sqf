/*
	Author: Kingsley
	Description: Checks whether respawn is enabled in the description.ext
	Parameter(s): Nothing
	Returns: BOOLEAN - true if respawn is enabled, false if not
	Example _respawn = call ARC_fnc_isRespawnEnabled;
*/

if ((getNumber (missionConfigFile >> "respawn")) == 3) then {true} else {false};