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
<font size='18'>Safe Start Control</font><br/>
<execute expression=""f_var_mission_timer = f_var_mission_timer + 60; publicVariable 'f_var_mission_timer';"">
Increase safe start timer by 1 minute</execute><br/>

<execute expression=""f_var_mission_timer = f_var_mission_timer - 60; publicVariable 'f_var_mission_timer';"">
Decrease safe start timer by 1 minute</execute><br/>

<execute expression=""f_var_mission_timer = 300; publicVariable 'f_var_mission_timer';[[[], 'f\safeStart\f_safeStart.sqf'], 'BIS_fnc_execVM', true] call BIS_fnc_MP;
hintSilent 'Safe Start Started!';"">
Begin safe start timer</execute><br/>

<execute expression=""f_var_mission_timer = -1; publicVariable 'f_var_mission_timer';
hint 'Weapons are live!';
[[false], 'f_fnc_safety', playableUnits + switchableUnits] call BIS_fnc_MP;"">
End safe start timer</execute><br/>

<execute expression=""[[true], 'f_fnc_safety', playableUnits + switchableUnits] call BIS_fnc_MP;
hint 'Safety On!' "">
Force safety on for all players</execute><br/>

<execute expression=""[[false], 'f_fnc_safety', playableUnits + switchableUnits] call BIS_fnc_MP;
hint 'Safety Off!' "">
Force safety off for all players</execute><br/><br/>
";

_briefing = _briefing + "
<font size='18'>Zeus Support</font><br/>
<execute expression=""
if !(isNull (getAssignedCuratorLogic player)) then {hintSilent 'Zeus already assigned!'} else {
    [[player, true], 'f_fnc_zeusInit', false] spawn BIS_fnc_MP; hintSilent 'Curator assigned.';
};"">Assign Zeus to host</execute><br/>

<execute expression=""
if (isNull (getAssignedCuratorLogic player)) then {hintSilent 'Assign Zeus first!'} else {[[player, playableUnits], 'f_fnc_zeusAddObjects', false] spawn BIS_fnc_MP; hintSilent 'Added playable units.'};"">Add players and playable units to Zeus object list</execute><br/>

<execute expression=""
if (isNull (getAssignedCuratorLogic player)) then {hintSilent 'Assign Zeus first!'} else {
    [[player, true, true], 'f_fnc_zeusAddObjects', false] spawn BIS_fnc_MP; hintSilent 'Assigned control over all group leaders and empty vehicles.'};"">
Add all group leaders and empty vehicles</execute><br/>

<execute expression=""
if (isNull (getAssignedCuratorLogic player)) then {hintSilent 'Assign Zeus first!'} else {[[player, true], 'f_fnc_zeusAddObjects', false] spawn BIS_fnc_MP; hintSilent 'Add all units.'};"">Add all mission objects</execute> <font color='#FF0000'>(POSSIBLE DESYNC)</font><br/>

<execute expression=""
if (isNull (getAssignedCuratorLogic player)) then {hintSilent 'Assign Zeus first!'} else {(getAssignedCuratorLogic player) removeCuratorEditableObjects [allDead,true]; hintSilent 'Removed dead units.'};"">Remove all dead units from Zeus</execute><br/>

<execute expression=""
if (isNull (getAssignedCuratorLogic player)) then {hintSilent 'Assign Zeus first!'} else {[[player, false], 'f_fnc_zeusAddObjects', false] spawn BIS_fnc_MP; [[player, false], 'f_fnc_zeusAddAddons', false] spawn BIS_fnc_MP; hintSilent 'Removed powers and units.'};"">Remove all powers and objects from Zeus</execute><br/>
<br/>
";

player createDiaryRecord ["diary", ["Admin", _briefing]];