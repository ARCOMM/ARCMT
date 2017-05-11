enableSaving [false, false];
enableSentences false;

// Environment
if (isServer && {((date select 3) == 12 || getNumber (missionConfigFile >> "Header" >> "sandbox") == 1)}) then {
    [] call ARC_fnc_randomEnvironment;
};

// Briefing
call compile preprocessFileLineNumbers "briefing.sqf";

// Group IDs
call compile preprocessFileLineNumbers "f\setGroupID\f_setGroupIDs.sqf";

// Buddy Team Colours
call compile preprocessFileLineNumbers "f\setTeamColours\f_setTeamColours.sqf";

// Fireteam Member Markers
[] call f_fnc_SetLocalFTMemberMarkers;

// Group Markers
[true, true] call ARC_fnc_initTracker;

// ORBAT Notes
call compile preprocessFileLineNumbers "f\briefing\f_orbatNotes.sqf";

// Mission Timer/Safe Start
call compile preprocessFileLineNumbers "f\safeStart\f_safeStart.sqf";

// Fortifications
call compile preprocessFileLineNumbers "f\fortify\register.sqf";

// Adversarial Mode
if (isNil "ARC_adversarialMode") then {
    ARC_adversarialMode = false;
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

// Chat Commands
[] call ARC_fnc_registerCommands;

// Map Timer
/*if (isServer) then {
    [{
        ARC_mapTimerServer = time;
        publicVariable "ARC_mapTimerServer";
    }, 1, []] call CBA_fnc_addPerFrameHandler;
};

if (hasInterface) then {
    [] call ARC_fnc_mapTimer;
};*/

// You are free to add/edit/delete anything below this line.
