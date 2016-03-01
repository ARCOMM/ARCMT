/*
	Author: Kingsley
	Description: Generate briefing string from the ARCMF config file
	Parameter(s):
		0: SIDE - which side to use
		1: STRING - which category to return
	Returns: String
	Example _missionString = [west, "mission"] call ARC_fnc_buildBriefingFromConfig;
*/

_side = param [0, sideUnknown];
_category = param [1, ""];

private _faction = switch (_side) do {
	case west: {"blufor"};
	case east: {"opfor"};
	case resistance: {"indfor"};
	case civilian: {"civilian"};
	default {"zeus"};
};

private _output = "";

{
	if (_x != "") then {
		_output = _output + format ["%1<br/><br/>", _x];
	};
} forEach (getArray (missionConfigFile >> "CfgARCMF" >> "briefing" >> _faction >> _category));

_output