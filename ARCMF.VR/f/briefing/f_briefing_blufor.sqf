private _side = west;

player createDiaryRecord ["diary", ["Credits", (format ["%1<br/>Made with ARCMF (https://github.com/ARCOMM/ARCMF)", getText (missionConfigFile >> "author")])]];
player createDiaryRecord ["diary", ["Administration", ([_side, "administration"] call ARC_fnc_buildBriefingFromConfig)]];

player createDiaryRecord ["diary", ["Execution", (
	format [
		"<font size='18' font='PuristaBold'>Commanders Intent</font><br/>%1<br/><font size='18' font='PuristaBold'>Movement Plan</font><br/>%2<br/><font size='18' font='PuristaBold'>Fire Support Plan</font><br/>%3<br/><font size='18' font='PuristaBold'>Special Tasks</font><br/>%4<br/>",
		[_side, "commandersIntent"] call ARC_fnc_buildBriefingFromConfig,
		[_side, "movementPlan"] call ARC_fnc_buildBriefingFromConfig,
		[_side, "fireSupportPlan"] call ARC_fnc_buildBriefingFromConfig,
		[_side, "specialTasks"] call ARC_fnc_buildBriefingFromConfig
	]
)]];

player createDiaryRecord ["diary", ["Mission", ([_side, "mission"] call ARC_fnc_buildBriefingFromConfig)]];

player createDiaryRecord ["diary", ["Situation", (
	format [
		"%1<br/><font size='18' font='PuristaBold'>Enemy Forces</font><br/>%2<br/><font size='18' font='PuristaBold'>Friendly Forces</font><br/>%3<br/>",
		[_side, "situation"] call ARC_fnc_buildBriefingFromConfig,
		[_side, "enemyForces"] call ARC_fnc_buildBriefingFromConfig,
		[_side, "friendlyForces"] call ARC_fnc_buildBriefingFromConfig
	]
)]];