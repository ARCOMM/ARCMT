/*
    Author: Kingsley
    Description: Generate briefing string from the ARCMF config file
    Parameter(s):
        0: SIDE - which side to use
        1: STRING - which category to return
    Returns: String
    Example _missionString = [west, "mission"] call ARC_fnc_buildBriefingFromConfig;
*/

params [
    ["_side", sideUnknown, [sideUnknown, ""]],
    ["_category", "", [""]]
];

private _faction = switch (_side) do {
    case west: {"blufor"};
    case east: {"opfor"};
    case resistance: {"indfor"};
    case civilian: {"civilian"};
    case "gm": {"game_master"};
};

private _output = "";
private _lines = getArray (missionConfigFile >> "CfgARCMF" >> "briefing" >> _faction >> _category);

{
    private _firstChar = _x select [0, 1];
    private _lineBreak = ["", "<br/><br/>"] select (_forEachIndex != (count _lines - 1));

    if (_firstChar == '-') then {
        _lineBreak = '<br/>';
    };

    _output = _output + format ["%1%2", _x, _lineBreak];
} forEach _lines;

_output
