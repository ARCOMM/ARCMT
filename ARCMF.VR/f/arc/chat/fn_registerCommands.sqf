["loadout", {
    params ["_name"];
    [_name, player] call f_fnc_assignGear;
    [player, format ["%1 received loadout '%2' from chat", name player, _name]] remoteExecCall ["globalChat", 0];
}, "all"] call CBA_fnc_registerChatCommand;

["groupname", {
    params ["_name"];
    group player setGroupId [_name, "GroupColor0"];
    group player setVariable ["ARC_groupHandled", true, true];
}, "all"] call CBA_fnc_registerChatCommand;

["groupcolor", {
    params ["_color"];
    group player setVariable ["ARC_groupColour", format ["Color%1", _color], true];
    group player setVariable ["ARC_groupHandled", true, true];
}, "all"] call CBA_fnc_registerChatCommand;

["radio", {
    params ["_type"];
    [player, _type] call ARC_fnc_addMissingRadio;
}, "all"] call CBA_fnc_registerChatCommand;

["rp", {
    [player] call ARC_fnc_resetPosition;
}, "all"] call CBA_fnc_registerChatCommand;
