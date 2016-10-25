/*
	Author: Kingsley, modified by tryteyker
	Returns side string ("blufor","opfor", etc) based on unit side.

	PARAMETERS:
	0: SIDE - Side to return true side name from.
	1: BOOL (OPT) - True or false depending on if side name should be shortned (so "blufor" would become "B", "opfor" would become "O" etc)
	RETURNS:
	0: STRING - String with side name.
*/

_side = param [0, WEST, [WEST]];
_shorten = param [1, false, [true]];

switch (_side) do {
    case west: {if !(_shorten) then {"BLUFOR"} else {"B"}};
    case east: {if !(_shorten) then {"OPFOR"} else {"O"}};
    case resistance: {if !(_shorten) then {"INDFOR"} else {"R"}};
    case civilian: {if !(_shorten) then {"CIVILIAN"} else {"C"}};
    default {"UNKNOWN"};
};