["loadout", {
    params ["_arg"];
    private _parts = _arg splitString " ";
    if (_parts isEqualTo []) exitWith {};
    _parts params ["_type", "_player"];
    private _unit = [_type] call ARC_fnc_getPlayerByName;

    if (count _parts == 1 && {isNull _unit}) then {
        // Give loadout to local player
        [_type, player] call f_fnc_assignGear;
        format ["%1 received loadout '%2' from chat", name player, _type] remoteExecCall ["systemChat", 0];
    } else {
        if (count _parts == 1 && {!isNull _unit}) then {
            // Get loadout from given player
            private _loadout = getUnitLoadout _unit;
            player setUnitLoadout _loadout;
            format ["%1 copied loadout from %2", name player, name _unit] remoteExecCall ["systemChat", 0];
        } else {
            if (count _parts == 2 && {!isNull _unit}) then {
                // Give loadout from _unit to _recipient
                private _recipient = [_player] call ARC_fnc_getPlayerByName;
                if (isNull _recipient) exitWith {};
                private _loadout = getUnitLoadout _unit;
                _recipient setUnitLoadout _loadout;
                format ["%1 copied loadout from %2 (via %3)", name _recipient, name _unit, name player] remoteExecCall ["systemChat", 0];
            };
        };
    };
}, "all"] call CBA_fnc_registerChatCommand;

["groupname", {
    params ["_name"];

    if (player != leader group player) exitWith {
        systemChat "You need to be the group leader to do that!";
    };

    group player setGroupId [_name, "GroupColor0"];
    group player setVariable ["ARC_groupHandled", true, true];
}, "all"] call CBA_fnc_registerChatCommand;

["groupcolor", {
    params ["_color"];

    if (player != leader group player) exitWith {
        systemChat "You need to be the group leader to do that!";
    };

    group player setVariable ["ARC_groupColour", format ["Color%1", _color], true];
    group player setVariable ["ARC_groupHandled", true, true];
}, "all"] call CBA_fnc_registerChatCommand;

["radio", {
    params ["_type"];
    [player, _type] call ARC_fnc_addMissingRadio;
}, "all"] call CBA_fnc_registerChatCommand;

["rp", {
    params [["_name", ""]];

    if (_name isEqualTo "") then {
        [player] call ARC_fnc_resetPosition;
    } else {
        [([_name] call ARC_fnc_getPlayerByName)] call ARC_fnc_resetPosition;
    };
}, "all"] call CBA_fnc_registerChatCommand;

["heal", {
    params [["_name", ""]];

    if (ARC_briefingTimeEnd) exitWith {
        systemChat "Cannot use heal when not in briefing stage.";
    };

    if (_name isEqualTo "") then {
        [player, player] call ace_medical_fnc_treatmentAdvanced_fullHeal;
        player setDamage 0;
    } else {
        private _unit = [_name] call ARC_fnc_getPlayerByName;
        if (isNull _unit) exitWith {};
        [_unit, _unit] call ace_medical_fnc_treatmentAdvanced_fullHeal;
        _unit setDamage 0;
    };
}, "all"] call CBA_fnc_registerChatCommand;

["whisper", {
    params ["_arg"];

    private _parts = _arg splitString " ";
    private _name = _parts select 0;
    _parts deleteAt 0;
    private _message = _parts joinString " ";
    private _unit = [_name] call ARC_fnc_getPlayerByName;

    if (!isNull _unit) then {
        parseText format ["<t size='1.25'>Whisper from %1</t><br />%2", name player, _message] remoteExecCall ["hint", _unit];
    };
}, "all"] call CBA_fnc_registerChatCommand;

["spec", {
    [player, objNull, 1, 1, true] call f_fnc_CamInit;
}, "all"] call CBA_fnc_registerChatCommand;
