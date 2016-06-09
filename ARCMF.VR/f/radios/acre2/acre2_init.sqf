f_var_radios = 1;

[{!isNil "arc_param_babel_west" && !isNil "arc_param_babel_east" && !isNil "arc_param_babel_resistance" && !isNil "arc_param_duplex"}, {
    f_acre2_presetSetup = compile preprocessFileLineNumbers "f\radios\acre2\acre2_setupPresets.sqf";
    f_acre2_clientInit = compile preprocessFileLineNumbers "f\radios\acre2\acre2_clientInit.sqf";
    f_fnc_GiveSideRadio = compile preprocessFileLineNumbers "f\radios\acre2\fn_giveSideRadio.sqf";

    f_radios_acre2_giveRadioAction = {
        private _radio = _this;
        private _radioDisplayName = getText (configfile >> "CfgWeapons" >> _radio >> "displayName");
        systemChat format ["[ARCMF] Warning: No room to add radio '%1'. Get one from the map (Map > ARCMF > Radios).", _radioDisplayName];
    };

    [{isDedicated || !isNull player}, {
        #include "acre2_settings.sqf"

        _presetSetup = [] call f_acre2_presetSetup;

        if (hasInterface) then {
            {_x call acre_api_fnc_babelAddLanguageType; false} count f_radios_settings_acre2_languages;
            [] call f_acre2_clientInit;
        };
    }, []] call CBA_fnc_waitUntilAndExecute;
}, []] call CBA_fnc_waitUntilAndExecute;
