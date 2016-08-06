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
<execute expression=""[] remoteExecCall ['f_fnc_safeStartLoop', 2]"">
Start briefing stage</execute><br/>

<execute expression=""ARC_briefingTimeEnd = true; publicVariable 'ARC_briefingTimeEnd';"">
End briefing stage</execute><br/>

<execute expression=""[true] remoteExec ['f_fnc_safety', (playableUnits + switchableUnits)];"">
Force safety on for all players</execute><br/>

<execute expression=""[false] remoteExec ['f_fnc_safety', (playableUnits + switchableUnits)];"">
Force safety off for all players</execute><br/><br/>
";

player createDiaryRecord ["diary", ["Admin", _briefing]];