#include "acre_settings.sqf"

if (isDedicated) then {
	[] execVM "f\radios\acre\acre_serverInit.sqf";
} else {
	[] execVM "f\radios\acre\acre_clientInit.sqf";
	if ((!isDedicated) && (isServer)) then {[] execVM "f\radios\acre\acre_serverInit.sqf";};
};