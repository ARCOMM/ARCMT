// Executed locally when player respawns in a multiplayer mission. This event script will also fire at the beginning of a mission if respawnOnStart is 0 or 1, oldUnit will be objNull in this instance. This script will not fire at mission start if respawnOnStart equals -1.
// [<newUnit>, <oldUnit>, <respawn>, <respawnDelay>]
#include "f\common\f_loadLoadouts.sqf"
if (ARC_adversarialMode) then {[(_this select 0), (_this select 1), (_this select 2), (_this select 3), true] call f_fnc_CamInit};
// You are free to add/edit/delete anything below this line.
