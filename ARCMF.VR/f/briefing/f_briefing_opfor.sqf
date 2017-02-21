private _side = east;

player createDiaryRecord ["diary", ["Credits", (format ["%1<br/>Made with ARCMF (https://github.com/ARCOMM/ARCMF)", getText (missionConfigFile >> "author")])]];

_outputText = "";
_situation = "<font size='22'>Situation</font><br/>";

_sit = [_side, "situation"] call ARC_fnc_buildBriefingFromConfig;
if (_sit != "") then {
    _situation = format ["%1%2<br/><br/>", _situation, _sit];
};

_ef = [_side, "enemyForces"] call ARC_fnc_buildBriefingFromConfig;
if (_ef != "") then {
    _situation = format ["%1<font size='16'>Enemy Forces</font><br/>%2<br/><br/>", _situation, _ef];
};

_ff = [_side, "friendlyForces"] call ARC_fnc_buildBriefingFromConfig;
if (_ff != "") then {
    _situation = format ["%1<font size='16'>Friendly Forces</font><br/>%2<br/><br/>", _situation, _ff];
};

_outputText = format ["%1%2", _outputText, _situation];

_mission = [_side, "mission"] call ARC_fnc_buildBriefingFromConfig;
if (_mission != "") then {
    _outputText = format ["%1<font size='22'>Mission</font><br/>%2<br/><br/>", _outputText, _mission];
};

_specialTasks = [_side, "specialTasks"] call ARC_fnc_buildBriefingFromConfig;
if (_specialTasks != "") then {
    _outputText = format ["%1<font size='16'>Special Tasks</font><br/>%2<br/><br/>", _outputText, _specialTasks];
};

_commandersIntent = [_side, "commandersIntent"] call ARC_fnc_buildBriefingFromConfig;
if (_commandersIntent != "") then {
    _outputText = format ["%1<font size='22'>Commanders Intent</font><br/>%2<br/><br/>", _outputText, _commandersIntent];
};

_movementPlan = [_side, "movementPlan"] call ARC_fnc_buildBriefingFromConfig;
if (_movementPlan != "") then {
    _outputText = format ["%1<font size='16'>Movement Plan</font><br/>%2<br/><br/>", _outputText, _movementPlan];
};

_fireSupportPlan = [_side, "fireSupportPlan"] call ARC_fnc_buildBriefingFromConfig;
if (_fireSupportPlan != "") then {
    _outputText = format ["%1<font size='16'>Fire Support Plan</font><br/>%2<br/><br/>", _outputText, _fireSupportPlan];
};

_admin = [_side, "logistics"] call ARC_fnc_buildBriefingFromConfig;
if (_admin != "") then {
    _outputText = format ["%1<font size='22'>Logistics</font><br/>%2", _outputText, _admin];
};

player createDiaryRecord ["diary", ["Briefing", _outputText]];
