_control = _this select 0;
_button = _this select 1;

switch (_button) do {
	case 0: { // Toggle AI BUTTON
		f_cam_playersOnly = !f_cam_playersOnly;
		f_cam_listUnits = [];
		lbClear 2100;
		
		if (f_cam_playersOnly) then {
			_control ctrlSetText "SHOW AI (NO)";
		} else {
			_control ctrlSetText "SHOW AI (YES)";
		};
	};
	case 1: { // Side Filter
		// 0 = ALL, 1 = BLUFOR , 2 = OPFOR, 3 = INDFOR , 4 = Civ
		f_cam_sideButton = f_cam_sideButton +1;
		if (f_cam_sideButton > 4) then {f_cam_sideButton = 0};
		f_cam_side = switch (f_cam_sideButton) do {
			case 0: {nil};
			case 1: {west};
			case 2: {east};
			case 3: {independent};
			case 4: {civilian};
		};
		_control ctrlSetText (f_cam_sideNames select f_cam_sideButton);
		f_cam_listUnits = [];
		lbClear 2100;
	};
	case 2: { // Tags
		// 0 = "Off", 1 = "All Sides", 2 = "All Players", 3 = "BLUFOR", 4 = "OPFOR", 5 = "INDFOR", 6 = "CIV"
		f_cam_tagsButton = f_cam_tagsButton + 1;
		if (f_cam_tagsButton > 6) then {f_cam_tagsButton = 0};
		_control ctrlSetText (f_cam_tagsNames select f_cam_tagsButton);
		if (f_cam_tagsButton > 0) then {
			f_cam_toggleTags = true;
		} else {
			f_cam_toggleTags = false;
		};
	};
	case 3: { // Third/First Person Button
		[] call f_cam_ToggleFPCamera;
		if (f_cam_toggleCamera) then {
			_control ctrlSetText "VIEW (THIRD PERSON)";
		} else {
			_control ctrlSetText "VIEW (FIRST PERSON)";
		}
	};
	case 4: { // Respawn Button
		if (call ARC_fnc_isRespawnEnabled) then {
			_unit = player;
			createCenter west;
			_newGrp = createGroup west;
			_newUnit = _newGrp createUnit ["B_Soldier_F", [0,0,0], [], 0, "FORM"];
			_newUnit allowDamage true;
			_newUnit hideObjectGlobal false;
			_newUnit enableSimulationGlobal true;
			selectPlayer _newUnit;
			waitUntil {player == _newUnit};
			_newUnit setName ARC_cam_preCamName;
			deleteVehicle _unit;
			_newUnit setPos ARC_cam_preCamPos;
			this = _newUnit;
			call compile ARC_cam_preCamLoadout;
			[] call f_fnc_ForceExit;
			[false] call acre_api_fnc_setSpectator;
			[_newUnit] joinSilent ARC_cam_preCamGroup;
			f_script_briefing = [] execVM "briefing.sqf";
			[] execVM "f\briefing\f_orbatNotes.sqf";
			[] execVM "f\briefing\f_loadoutNotes.sqf";
			{[_x] call hyp_fnc_traceFireRemove} forEach allUnits;
			[] spawn {uiSleep 2;{[_x] call hyp_fnc_traceFireRemove} forEach allUnits;};
			[_newUnit, ARC_cam_preCamPos, ARC_cam_preCamLoadout] execVM "onSpectatorRespawn.sqf";
		} else {
			systemChat "Respawn is not enabled.";
		};
	};
	case 5: { // 3D Tracers
		// 0="Off", 1="Players", 2="AI", 3="Both"
		f_cam_tracersButton = f_cam_tracersButton + 1;
		if (f_cam_tracersButton > 3) then {f_cam_tracersButton = 0};
		_control ctrlSetText (f_cam_tracersNames select f_cam_tracersButton);
		
		switch (f_cam_tracersButton) do {
			case 0: {
				// Off
				{[_x] call hyp_fnc_traceFireRemove} forEach allUnits;
				
				// Make sure it has removed all tracers if some left over
				[] spawn {
					uiSleep 2;
					{[_x] call hyp_fnc_traceFireRemove} forEach allUnits;
				};
			};
			case 1: {
				// Players
				{[_x] call hyp_fnc_traceFireRemove} forEach allUnits;
				
				{
					if (alive _x) then {
						_color = switch (side _x) do {
							case west: {f_cam_blufor_color};
							case east: {f_cam_opfor_color};
							case resistance: {f_cam_indep_color};
							case civilian: {[civilian] call BIS_fnc_sideColor};
							case sideUnknown: {[sideUnknown] call BIS_fnc_sideColor};
						};
						
						[_x, _color, 1, 4, 800, 1, false] call hyp_fnc_traceFire;
					};
				} forEach (allPlayers - entities "HeadlessClient_F");
			};
			case 2: {
				// AI
				{[_x] call hyp_fnc_traceFireRemove} forEach allUnits;
				
				{
					if (alive _x) then {
						_color = switch (side _x) do {
							case west: {f_cam_blufor_color};
							case east: {f_cam_opfor_color};
							case resistance: {f_cam_indep_color};
							case civilian: {[civilian] call BIS_fnc_sideColor};
							case sideUnknown: {[sideUnknown] call BIS_fnc_sideColor};
						};
						
						[_x, _color, 1, 4, 800, 1, false] call hyp_fnc_traceFire;
					};
				} forEach (allUnits - (allPlayers - entities "HeadlessClient_F"));
			};
			case 3: {
				// Both
				{[_x] call hyp_fnc_traceFireRemove} forEach allUnits;
				
				{
					if (alive _x) then {
						_color = switch (side _x) do {
							case west: {f_cam_blufor_color};
							case east: {f_cam_opfor_color};
							case resistance: {f_cam_indep_color};
							case civilian: {[civilian] call BIS_fnc_sideColor};
							case sideUnknown: {[sideUnknown] call BIS_fnc_sideColor};
						};
						
						[_x, _color, 1, 4, 800, 1, false] call hyp_fnc_traceFire;
					};
				} forEach (allUnits - (entities "HeadlessClient_F"));
			};
		};
	};
	case 6: {
		f_cam_unitListShow = !f_cam_unitListShow;
		if (f_cam_unitListShow) then {
			_control ctrlSetText "<<";
			_control ctrlSetPosition [(0.15 * safeZoneW + safeZoneX), (0.041 * safeZoneH + safeZoneY), (0.02 * safeZoneW), (0.03 * safeZoneH)];
			_control ctrlCommit 0.15;
			((findDisplay 9228) displayCtrl 2100) ctrlSetPosition [(0 * safeZoneW + safeZoneX), (0.03 * safeZoneH + safeZoneY), (0.15 * safeZoneW), (0.97 * safeZoneH)];
			((findDisplay 9228) displayCtrl 2100) ctrlCommit 0.15;
		} else {
			_control ctrlSetText ">>";
			_control ctrlSetPosition [(0 * safeZoneW + safeZoneX), (0.041 * safeZoneH + safeZoneY), (0.02 * safeZoneW), (0.03 * safeZoneH)];
			_control ctrlCommit 0.15;
			((findDisplay 9228) displayCtrl 2100) ctrlSetPosition [((0 * safeZoneW + safeZoneX) - (0.15 * safeZoneW)), (0.03 * safeZoneH + safeZoneY), (0.15 * safeZoneW), (0.97 * safeZoneH)];
			((findDisplay 9228) displayCtrl 2100) ctrlCommit 0.15;
		};
	};
};