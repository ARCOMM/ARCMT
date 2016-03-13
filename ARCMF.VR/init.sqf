enableSaving [false, false];
enableSentences false;

// Briefing
f_script_briefing = [] execVM "briefing.sqf";

// Group IDs
f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// Buddy Team Colours
f_script_setTeamColours = [] execVM "f\setTeamColours\f_setTeamColours.sqf";

// Fireteam Member Markers
[] spawn f_fnc_SetLocalFTMemberMarkers;

// Group Markers
[true, false] call ARC_fnc_initTracker;

// ORBAT Notes
[] execVM "f\briefing\f_orbatNotes.sqf";

// Loadout Notes
[] execVM "f\briefing\f_loadoutNotes.sqf";

// Join Group Action
[false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// Mission Timer/Safe Start
[] execVM "f\safeStart\f_safeStart.sqf";

// AI Unit Caching
[30] spawn f_fnc_cInit;

// Note: Caching aggressiveness is set using the f_var_cachingAggressiveness variable; possible values:
// 1 - cache only non-leaders and non-drivers
// 2 - cache all non-moving units, always exclude vehicle drivers
// 3 - cache all units, incl. group leaders and vehicle drivers
f_var_cachingAggressiveness = 2;

// Radio Systems Support
[] execVM "f\radios\acre2\acre2_init.sqf";

// Disable random button on Virtual Arsenal to prevent breaking ACRE
[missionNamespace, "arsenalOpened", {
	disableSerialization;
	_display = _this select 0;
	_button = (_display displayCtrl 44150);
	_button ctrlRemoveAllEventHandlers "buttonclick";
	_button ctrlEnable false;
	_button ctrlSetTooltip "Random is disabled because it breaks ACRE";
	_display displayAddEventHandler ["KeyDown", "if ((_this select 1) in [19,29]) then {true}"];
}] call BIS_fnc_addScriptedEventHandler;

// You are free to add/edit/delete anything below this line.