// Executed locally when player joins mission (includes both mission start and JIP). See initialization order for details about when the script is exactly executed.
// Params: [player:Object, didJIP:Boolean]
#include "f\assignGear\f_assignGear_jip.sqf"
#include "f\common\f_sandboxHandler_client.sqf"

if ("multiplayer" get3DENMissionAttribute "gametype" == "TDM") then {
	private _side = side (_this select 0);
	private _leaderGroup = [_side] call ARC_fnc_getLeaderGroup;
	if (leader _leaderGroup == _this select 0) then {
		(_this select 0) addAction [format ["<t color='%1'>Call %2 ready.</t>",_side call ARC_fnc_getSideColor,_side call ARC_fnc_getFactionFromSide], {_this call ARC_fnc_changeReadyStatus}];
	};
};

// You are free to add/edit/delete anything below this line.