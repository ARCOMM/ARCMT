/*
	Author: tryteyker
	Checks global readiness during pvp. This function is standalone because it's easier to shift over to coop if it gains traction.

	PARAMETERS:
	0: NONE - No parameters
	RETURN:
	0: BOOL- True or false depending on if global readiness is true or not.
*/

_sides = [];
_sidesReady = missionNamespace getVariable ["ARCMF_SIDES_RDY",0];
{
	if (_x countSide allPlayers > 1) then {
		_sides = + _x;
	};
} foreach [west, east, resistance, civilian];

{
	_ready = missionNamespace getVariable [format ["ARCMF_%1_RDY_STATUS",_x], false];
	if (_ready) then {
		missionNamespace setVariable ["ARCMF_SIDES_RDY",_sidesReady + 1];
	};
} foreach _sides;

if (_sidesReady == count _sides) then {
	ARC_briefingTimeEnd = true;
	publicVariable "ARC_briefingTimeEnd";
	"ALL SIDES READY - MISSION GO IN 5 SECONDS!" remoteExecCall ["systemChat",0];
} else {
	false
};

true