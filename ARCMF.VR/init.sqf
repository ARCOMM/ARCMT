enableSaving [false, false];
enableSentences false;

ARC_isAdv = [] call ARC_fnc_isAdv;

// Environment
if (isServer && {((date select 3) == 12 || getNumber (missionConfigFile >> "Header" >> "sandbox") == 1)}) then {
    // [] call ARC_fnc_randomEnvironment;
};

// Briefing
call compile preprocessFileLineNumbers "briefing.sqf";

// Group IDs
call compile preprocessFileLineNumbers "f\setGroupID\f_setGroupIDs.sqf";

// Buddy Team Colours
call compile preprocessFileLineNumbers "f\setTeamColours\f_setTeamColours.sqf";

// Fireteam Member Markers
if (!ARC_isAdv) then {[] call f_fnc_SetLocalFTMemberMarkers};

// Group Markers
[true, true] call ARC_fnc_initTracker;

// ORBAT Notes
if (!ARC_isAdv) then {
    call compile preprocessFileLineNumbers "f\briefing\f_orbatNotes.sqf";
};

// Mission Timer/Safe Start
if (!ARC_isAdv) then {
    call compile preprocessFileLineNumbers "f\safeStart\f_safeStart.sqf";
};

// Adversarial Mode
if (isNil "ARC_adversarialMode") then {
    ARC_adversarialMode = false; // Depreciated?
};

ARC_isSpectating = false;

// Radio Systems Support
call compile preprocessFileLineNumbers "f\radios\acre2\acre2_init.sqf";

// Disable random button on Virtual Arsenal to prevent breaking ACRE
[missionNamespace, "arsenalOpened", {
    disableSerialization;
    private _display = _this select 0;
    private _button = (_display displayCtrl 44150);
    _button ctrlRemoveAllEventHandlers "buttonclick";
    _button ctrlEnable false;
    _button ctrlSetTooltip "Random is disabled because it breaks ACRE";
    _display displayAddEventHandler ["KeyDown", "if ((_this select 1) in [19,29]) then {true}"];
}] call BIS_fnc_addScriptedEventHandler;

// Spectator Chat
setCurrentChannel 1;
if (isServer) then {
    ARC_spectatorChatID = radioChannelCreate [[1,0.75,0,1], "Spectator", "%UNIT_NAME", [], true];
    publicVariable "ARC_spectatorChatID";
};

// You are free to add/edit/delete anything below this line.