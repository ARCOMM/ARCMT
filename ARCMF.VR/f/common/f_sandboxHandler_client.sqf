if ((call ARC_fnc_isRespawnEnabled)) then {
	if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
		waitUntil {!isNull player};
		["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
		player setPos ([(call ARC_fnc_getStartingPos), 20] call CBA_fnc_randPos);
		hint "Use the 'U' key to open the group manager. See 'Map >> ARCMF' for some added functionality.";
		
		_camo = getText (missionConfigFile >> "CfgSandbox" >> worldName >> "camouflage");
		[player, _camo] call ARC_fnc_switchCamo;
	};
};