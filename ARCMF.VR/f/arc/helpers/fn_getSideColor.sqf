/*
	Author: tryteyker
	Returns color of specified side (the color used by Arma 3)

	PARAMETERS:
	0: SIDE - Side to return true side name from.
	RETURNS:
	0: STRING - String with side color.
*/

_side = param [0, WEST, [WEST]];

switch (_side) do {
    case west: {"#003264"};
    case east: {"#640000"};
    case resistance: {"#006400"};
    case civilian: {"#640064"};
    default {"#646464"};
};