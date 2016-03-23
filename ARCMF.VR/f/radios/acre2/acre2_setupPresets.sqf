{
    _radioName = _x;

    {
        _channelName = _x;
        [_radioName, "default2", (_forEachIndex + 1), "label", _x] call acre_api_fnc_setPresetChannelField;
    } forEach f_radios_settings_acre2_groups_blufor;

    {
        _channelName = _x;
        [_radioName, "default3", (_forEachIndex + 1), "label", _x] call acre_api_fnc_setPresetChannelField;
    } forEach f_radios_settings_acre2_groups_opfor;

    {
        _channelName = _x;
        [_radioName, "default4", (_forEachIndex + 1), "label", _x] call acre_api_fnc_setPresetChannelField;
    } forEach f_radios_settings_acre2_groups_indfor;
} forEach ["ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"];