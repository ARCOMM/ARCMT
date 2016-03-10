if ((call ARC_fnc_isRespawnEnabled)) then {
	if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
		waitUntil {!isNull player};
		["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
		hint "Use the 'U' key to open the group manager. See 'Map >> ARCMF' for some added functionality.";
		if (!(player getVariable ["ARC_switchCamo_done", false])) then {
			player call ARC_fnc_switchCamo;
		};
	};
};