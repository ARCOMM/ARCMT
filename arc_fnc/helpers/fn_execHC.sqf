/*
	Author: Kingsley
	Description: Execute given code on either the headless client or on server depending on which is present
	Parameter(s): CODE - { ... } or string code
	Returns: Spawned code handle
	Example _handle = { hint "Ran on HC" } call ARC_fnc_execHC;
*/

if (typeName _this != "STRING" && typeName _this != "CODE") exitWith { diag_log "The argument(s) specified in ARC_fnc_execHC are not of type STRING or CODE." };

private "_handle";

_handle = _this spawn {
	private "_code";
	_code = if (typeName _this == "STRING") then {compile _this} else {_this};
	if (!isNil "HC" && isMultiplayer) then {
		if (!isServer && !hasInterface) then {
			call _code;
		};
	} else {
		if (isServer) then {
			call _code;
		};
	};
};

_handle
