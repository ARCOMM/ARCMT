if (!isServer) exitWith {};

private ["_unit","_isMan","_side","_faction","_prioritizeTracerMags","_removeMedicalItems","_uniformItems","_vestItems","_backpackItems","_removeNightVision","_rifleClass","_hasRemovedWeapons","_uniformClass","_vestClass","_backpackClass","_headgearClass","_goggleClass","_faceClass","_voiceClass","_magazines","_standard","_tracers","_launcherClass"];

_unit = _this select 0;
waitUntil {!isNull _unit};

_isMan = _unit isKindOf "CAManBase";
_side = side _unit;
_faction = _side call ARC_fnc_getFactionFromSide;

if (!_isMan || !(_side in [west,east,resistance,civilian])) exitWith {};

_enabled = (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> "enabled") call ARC_fnc_getCfgBool;
if (!_enabled || isPlayer _unit) exitWith {};

_unit setVariable ["ARC_assignedAIGear", false, true];

_prioritizeTracerMags = (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> "prioritizeTracerMags") call ARC_fnc_getCfgBool;
_removeMedicalItems = (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> "removeMedicalItems") call ARC_fnc_getCfgBool;
_removeNightVision = (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> "removeNightVision") call ARC_fnc_getCfgBool;
_rifleClass = [_faction, "rifles"] call ARC_fnc_pickItemFromAIGear;
_hasRemovedWeapons = false;

if (typeName _rifleClass == "STRING") then {
	removeAllWeapons _unit;
	_hasRemovedWeapons = true;
};

_uniformItems = uniformItems _unit;
_vestItems = vestItems _unit;
_backpackItems = backpackItems _unit;

_uniformClass = [_faction, "uniforms"] call ARC_fnc_pickItemFromAIGear;
if (typeName _uniformClass == "STRING") then {
	removeUniform _unit;
	_unit forceAddUniform _uniformClass;
	{_unit addItemToUniform _x} forEach _uniformItems;
};

_vestClass = [_faction, "vests"] call ARC_fnc_pickItemFromAIGear;
if (typeName _vestClass == "STRING") then {
	removeVest _unit;
	_unit addVest _vestClass;
	{_unit addItemToVest _x} forEach _vestItems;
};

_backpackClass = [_faction, "backpacks"] call ARC_fnc_pickItemFromAIGear;
if (typeName _backpackClass == "STRING") then {
	removeBackpack _unit;
	_unit addBackpack _backpackClass;
	{_unit addItemToBackpack _x} forEach _backpackItems;
};

_headgearClass = [_faction, "headgear"] call ARC_fnc_pickItemFromAIGear;
if (typeName _headgearClass == "STRING") then {
	removeHeadgear _unit;
	_unit addHeadgear _headgearClass;
};

_goggleClass = [_faction, "goggles"] call ARC_fnc_pickItemFromAIGear;
if (typeName _goggleClass == "STRING") then {
	removeGoggles _unit;
	_unit addGoggles _goggleClass;
};

_faceClass = [_faction, "faces"] call ARC_fnc_pickItemFromAIGear;
if (typeName _faceClass == "STRING") then {
	_unit setFace _faceClass;
};

_voiceClass = [_faction, "voices"] call ARC_fnc_pickItemFromAIGear;
if (typeName _voiceClass == "STRING") then {
	_unit setSpeaker _voiceClass;
};

if (typeName _rifleClass == "STRING") then {
	if (!_hasRemovedWeapons) then {
		removeAllWeapons _unit;
		_hasRemovedWeapons = true;
	};
	
	_magazines = getArray (configFile >> "CfgWeapons" >> _rifleClass >> "magazines");
	
	if (count _magazines > 0) then {
		_standard = [];
		_tracers = [];
		
		{
			if ((getNumber (configFile >> "CfgMagazines" >> _x >> "tracersEvery")) == 1) then {
				_tracers pushBack _x;
			} else {
				_standard pushBack _x;
			};
		} forEach _magazines;
		
		if (_prioritizeTracerMags && ((count _tracers) > 0)) then {
			while {_unit canAdd (_tracers select 0)} do {
				_unit addMagazine (_tracers select 0);
			};
		} else {
			while {_unit canAdd (_standard select 0)} do {
				_unit addMagazine (_standard select 0);
			};
		};
	};
	
	_unit addWeapon _rifleClass;
};

_attachments = [_faction, "attachments"] call ARC_fnc_pickAttachmentsFromAIGear;
{_unit addPrimaryWeaponItem _x} forEach _attachments;

_launcherClass = [_faction, "launchers"] call ARC_fnc_pickItemFromAIGear;
if (typeName _launcherClass == "STRING") then {
	if (!_hasRemovedWeapons) then {
		removeAllWeapons _unit;
		_hasRemovedWeapons = true;
	};
	
	[_unit, _launcherClass, 2] call BIS_fnc_addWeapon;
};

if (_removeMedicalItems) then {
	{_unit removeItem _x} forEach ["ACE_fieldDressing","ACE_morphine","ACE_epinephrine"];
};

if (_removeNightVision) then {
	{_unit unlinkItem _x} forEach ["rhsusf_ANPVS_14","rhsusf_ANPVS_15","ACE_NVG_Gen1","ACE_NVG_Gen2","NVGoggles_OPFOR","NVGoggles","NVGoggles_INDEP","ACE_NVG_Gen4","ACE_NVG_Wide"];
};

_unit setVariable ["ARC_assignedAIGear", true, true];