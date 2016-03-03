if (!isDedicated && (isNull player)) then {
	waitUntil {sleep 0.1; !isNull player};
};

private ["_unitfaction"];
waitUntil {!isNil "f_var_debugMode"};

_unitfaction = toLower (faction player);

if (_unitfaction != toLower (faction (leader group player))) then {
	_unitfaction = toLower (faction (leader group player));
};

if (f_var_debugMode == 1) then {
	player sideChat format ["DEBUG (briefing.sqf): Player faction: %1", _unitfaction];
};

#include "f\briefing\f_briefing_arcmf.sqf"

if (serverCommandAvailable "#kick" || isServer) then {
	#include "f\briefing\f_briefing_admin.sqf"
	if (f_var_debugMode == 1) then {
		player sideChat format ["DEBUG (briefing.sqf): Briefing for host selected.", _unitfaction];
	};
};

if (_unitfaction == "blu_f") exitWith {
	#include "f\briefing\f_briefing_nato.sqf"
	if (f_var_debugMode == 1) then {
		player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.", _unitfaction];
	};
};

if (_unitfaction == "opf_f") exitWith {
	#include "f\briefing\f_briefing_csat.sqf"
	if (f_var_debugMode == 1) then {
		player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.", _unitfaction];
	};
};

if (_unitfaction == "ind_f") exitWith {
	#include "f\briefing\f_briefing_aaf.sqf"
	if (f_var_debugMode == 1) then {
		player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.", _unitfaction];
	};
};

if (_unitfaction == "civ_f") exitWith {
	#include "f\briefing\f_briefing_civ.sqf"
	if (f_var_debugMode == 1) then {
		player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.", _unitfaction];
	};
};

if (_unitfaction == "") exitWith {
	#include "f\briefing\f_briefing_zeus.sqf"
	if (f_var_debugMode == 1) then {
		player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.", _unitfaction];
	};
};

player globalchat format ["DEBUG (briefing.sqf): Faction %1 is not defined.", _unitfaction];