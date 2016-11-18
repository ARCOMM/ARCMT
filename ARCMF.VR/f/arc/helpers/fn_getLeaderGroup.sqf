/*
	Author: tryteyker
	This function finds the highest leadership group present on given side. 
	Example:
	[playerSide] call ARC_fnc_getLeaderGroup
	Returns:
	Highest leadership group present on side (can be Company Commander, 1PLT CO, 2PLT CO, any SL)

	PARAMETERS:
	0: SIDE - Side to check leadership.
	RETURNS:
	0: GROUP - Highest leadership group present on side
*/

_side = param [0, WEST, [WEST]];

_allGroupsWithPlayers = [];
{_allGroupsWithPlayers pushBackUnique group _x} forEach allPlayers - entities "HeadlessClient_F";

_leaderGroup = grpNull;

_allLeaderGroups = [];
_blacklist = [];
{
	_blacklist pushBack format ["%1 %2",[_side, true] call ARC_fnc_getFactionFromSide,_x]; // Necessary blacklist because otherwise pilots may end up grabbing 'leadership' instead of 1PLT/2PLT CO.
} foreach ["PH1","PH2","PH3","PH4"];

for "_i" from 0 to count _allGroupsWithPlayers - 1 do {
	_group = _allGroupsWithPlayers select _i; // Get group we want to check
	_leader = leader _group; // Get leader of group
	_rank = rankID _leader; // Get rankID - 0 is Private, 6 is Colonel.
	if (_rank > 0 && !(str(_group) in _blacklist)) then { // As blacklist is stringified we need to do a string comparison (it's also faster than grpNull comparison)
		_allLeaderGroups = _allLeaderGroups + [[_rank,_group]]; // Add rank and group if not in blacklist
	};
};

_allLeaderGroups sort false; // Sort in descending order (highest number first)

_leaderGroup = (_allLeaderGroups select 0) select 1; // Select actual grup from array [[rank, group]];

_leaderGroup