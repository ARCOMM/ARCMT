_briefing = "
<br/>
<font size='18'>Admin Section</font><br/>
This briefing section can only be seen by the current admin.
<br/><br/>
";

_briefing = _briefing + "<font size='18'>Ending Controllers</font><br/>";

{
    _title = getText (_x >> "title");
    _description = getText (_x >> "description");
    _index = _forEachIndex + 1;
    _briefing = _briefing + (format ["<execute expression=""[[%1], 'f_fnc_mpEnd', false] spawn BIS_fnc_MP;"">%2</execute> - %3<br/>
    %3<br/>", _index, _title, _description]);
} forEach ("true" configClasses (missionConfigFile >> "CfgDebriefing"));

_briefing = _briefing + "<br/>
<font size='18'>Briefing Control</font><br/>
<execute expression=""f_var_mission_timer = f_var_mission_timer + 60; publicVariable 'f_var_mission_timer';"">
Increase briefing timer by 1 minute</execute><br/>

<execute expression=""f_var_mission_timer = f_var_mission_timer - 60; publicVariable 'f_var_mission_timer';"">
Decrease briefing timer by 1 minute</execute><br/>

<execute expression=""f_var_mission_timer = 300; publicVariable 'f_var_mission_timer';[[[], 'f\safeStart\f_safeStart.sqf'], 'BIS_fnc_execVM', true] call BIS_fnc_MP;
hintSilent 'BRIEFING STARTED!';"">
Begin briefing timer</execute><br/>

<execute expression=""f_var_mission_timer = -1; publicVariable 'f_var_mission_timer';
hint 'WEAPONS ARE LIVE';
[{hintSilent ''}, [], 5] call CBA_fnc_waitAndExecute;
[false] remoteExec ['f_fnc_safety', (playableUnits + switchableUnits)];"">
End briefing timer</execute><br/>

<execute expression=""[true] remoteExec ['f_fnc_safety', (playableUnits + switchableUnits)];
hint 'SAFETY ON!'; [{hintSilent ''}, [], 5] call CBA_fnc_waitAndExecute;"">
Force safety on for all players</execute><br/>

<execute expression=""[false] remoteExec ['f_fnc_safety', (playableUnits + switchableUnits)];
hint 'SAFETY OFF!'; [{hintSilent ''}, [], 5] call CBA_fnc_waitAndExecute;"">
Force safety off for all players</execute><br/><br/>
";

player createDiaryRecord ["diary", ["Admin", _briefing]];