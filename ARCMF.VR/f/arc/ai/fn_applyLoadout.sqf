private ["_unit","_removeMedicalItems","_prioritizeTracerMags","_uniform","_vest","_headgear","_goggles","_backpacks","_rifles","_pistols","_launchers","_items"];

_unit = _this;
_side = side _unit;
_faction = _side call ARC_fnc_getFactionFromSide;

if (isPlayer _unit) exitWith {};

_removeMedicalItems = missionNamespace getVariable [(format ["ARC_ai_gear_%1_removeMedicalItems", _faction]), []];
_prioritizeTracerMags = missionNamespace getVariable [(format ["ARC_ai_gear_%1_prioritizeTracerMags", _faction]), []];
_uniform = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_uniforms", _faction]), []]) call BIS_fnc_selectRandom;
_vest = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_vests", _faction]), []]) call BIS_fnc_selectRandom;
_headgear = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_headgear", _faction]), []]) call BIS_fnc_selectRandom;
_goggles = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_goggles", _faction]), []]) call BIS_fnc_selectRandom;
_backpacks = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_backpacks", _faction]), []]) call BIS_fnc_selectRandom;
_rifles = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_rifles", _faction]), []]) call BIS_fnc_selectRandom;
_pistols = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_pistols", _faction]), []]) call BIS_fnc_selectRandom;
_launchers = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_launchers", _faction]), []]) call BIS_fnc_selectRandom;
_items = (missionNamespace getVariable [(format ["ARC_ai_gear_%1_items", _faction]), []]) call BIS_fnc_selectRandom;

