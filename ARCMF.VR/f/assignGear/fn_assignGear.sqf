[{!isNil "arc_param_theme"}, {
    private _typeOfUnit = toLower (_this select 0);
    private _unit = _this select 1;
    this = _unit;

    if (!local _unit) exitWith {};

    _unit setVariable ["f_var_assignGear", _typeOfUnit, true];
    _unit setVariable ["f_var_assignGear_done", false, true];

    if (arc_param_theme != 0) exitWith {
        switch (arc_param_theme) do {
            case 1: {
                // Vietnam
                switch (side _unit) do {
                    case west: {
                        #include "..\themes\vietnam\f_assignGear_blufor.sqf"
                    };
                    case east: {
                        #include "..\themes\vietnam\f_assignGear_opfor.sqf"
                    };
                    case resistance: {
                        #include "..\themes\vietnam\f_assignGear_indfor.sqf"
                    };
                };
            };
        };
        
        _unit setVariable ["f_var_assignGear_done", false, true];
    };

    switch (side _unit) do {
        case west: {
            #include "f_assignGear_blufor.sqf"
        };
        case east: {
            #include "f_assignGear_opfor.sqf"
        };
        case resistance: {
            #include "f_assignGear_indfor.sqf"
        };
    };

    // Error Checking
    // Check if the unit has been assigned an ACRE radio in the loadout, if so display an error
    {
        if (_x in (items _unit)) then {
            diag_log (format ["[ARCMF] %1 has been added via the loadouts. DO NOT DO THIS! To edit radios use the config.hpp instead!", _x]);
            hintSilent parseText (format ["<t size='2'>[ARCMF] %1 has been added via the loadouts. DO NOT DO THIS! To edit radios use the config.hpp instead!</t>", _x]);
            systemChat (format ["[ARCMF] %1 has been added via the loadouts. DO NOT DO THIS! To edit radios use the config.hpp instead!", _x]);
        };
    } forEach ["ACRE_PRC343","ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F","ACRE_PRC77","ItemRadioAcreFlagged"];

    _unit setVariable ["f_var_assignGear_done", true, true];

    if ((call ARC_fnc_isRespawnEnabled)) then {
        if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
            _unit call ARC_fnc_switchCamo;
        };
    };
}, _this] call CBA_fnc_waitUntilAndExecute;
