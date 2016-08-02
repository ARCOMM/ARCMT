[{isDedicated || !isNull player}, {
    private _unitfaction = toLower (faction player);

    if (_unitfaction != toLower (faction (leader group player))) then {
        _unitfaction = toLower (faction (leader group player));
    };

    #include "f\briefing\f_briefing_arcmf.sqf"

    if (!ARC_isAdv) then {
        if (serverCommandAvailable "#kick" || isServer) then {
            #include "f\briefing\f_briefing_admin.sqf"
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
    };
}, []] call CBA_fnc_waitUntilAndExecute;
