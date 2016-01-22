if (isDedicated) exitWith{};
if (!isDedicated && (isNull player)) then {
    waitUntil {sleep 0.1; !isNull player};
};
private ["_nearUnit", "_nearGroup", "_actionDistance", "_allowDifferentSide"];
_actionDistance = 2.5;
_allowDifferentSide = [_this,0,false] call bis_fnc_param;
while {true} do {
	waitUntil {sleep 0.5; isNil "f_groupJoinAction"};
	if (vehicle player == player && {isPlayer cursorTarget && player distance cursorTarget < _actionDistance && cursorTarget isKindOf "CAManBase"}) then {
		_nearUnit = cursorTarget;
		_nearGroup = group cursorTarget;
		if (group player != _nearGroup && alive _nearUnit && {(_allowDifferentSide || side player == side _nearGroup)}) then {
				_actionString = format["Join %1 (%2)", name _nearUnit,_nearGroup];
				f_groupJoinAction = player addAction [_actionString, {
				_unit = player;
				_grp = (_this select 3);
				[player] joinSilent _grp;
				["JIP",[format ["You have joined %1 (%2).",name leader _grp,_grp]]] call BIS_fnc_showNotification;
				{
					if (isPlayer _x) then {[["JIP",[format ["%1 has joined your group.",name _unit]]],"BIS_fnc_showNotification",_x] call BIS_fnc_MP};
				} forEach (units _grp - [_unit]);
				[[_grp, leader _grp], "selectLeader", leader _grp, false] call BIS_fnc_mp;
				player removeAction f_groupJoinAction;
				f_groupJoinAction = nil;
			}, _nearGroup, 0, false, true, "", "_this == player"];
			waitUntil {sleep 0.5;(group player == _nearGroup || cursorTarget != _nearUnit)};
			if !(isNil "f_groupJoinAction") then {
				player removeAction f_groupJoinAction;
				f_groupJoinAction = nil;
			};
		};
	};
};
