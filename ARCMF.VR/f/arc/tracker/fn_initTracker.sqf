if (!isServer) exitWith {};

ARC_tracker_markers = [];
ARC_tracker_enabled = param [0, true];
ARC_tracker_hideAiGroups = param [1, true];

[ARC_fnc_updateTracker, 2, []] call CBA_fnc_addPerFrameHandler;