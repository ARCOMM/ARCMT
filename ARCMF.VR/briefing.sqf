[{isDedicated || !isNull player}, {
    private _unitfaction = toLower (faction player);

    if (_unitfaction != toLower (faction (leader group player))) then {
        _unitfaction = toLower (faction (leader group player));
    };

    #include "f\briefing\f_briefing_arcmf.sqf"

    if (serverCommandAvailable "#kick" || isServer) then {
        #include "f\briefing\f_briefing_admin.sqf"
    } else {
        [{
            params ["_args","_handlerID"];
            
            if (serverCommandAvailable "#kick") then {
                call compile preprocessFileLineNumbers "f\briefing\f_briefing_admin.sqf";
                [_handlerID] call CBA_fnc_removePerFrameHandler;
            };
        }, 5, []] call CBA_fnc_addPerFrameHandler;
    };

    if (_unitfaction == "blu_f") exitWith {
        #include "f\briefing\f_briefing_blufor.sqf"
    };

    if (_unitfaction == "opf_f") exitWith {
        #include "f\briefing\f_briefing_opfor.sqf"
    };

    if (_unitfaction == "ind_f") exitWith {
        #include "f\briefing\f_briefing_indfor.sqf"
    };

    if (_unitfaction == "civ_f") exitWith {
        #include "f\briefing\f_briefing_civ.sqf"
    };
}, []] call CBA_fnc_waitUntilAndExecute;
