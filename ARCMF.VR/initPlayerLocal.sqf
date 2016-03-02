// Executed locally when player joins mission (includes both mission start and JIP). See initialization order for details about when the script is exactly executed.
// Params: [player:Object, didJIP:Boolean]
if ((_this select 1) && !(player getVariable ["f_var_assignGear_done", false])) then {
	waitUntil {!isNull player};
	["r", player] call f_fnc_assignGear;
};