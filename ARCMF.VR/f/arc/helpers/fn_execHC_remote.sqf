if (typeName _this != "STRING" && typeName _this != "CODE") exitWith { diag_log "The argument(s) specified in ARC_fnc_execHC are not of type STRING or CODE." };

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