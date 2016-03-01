{
	_radioName = _x;

	{
		_channelName = _x;
		[_radioName, "preset_blufor", (_forEachIndex + 1), "label", _x] call acre_api_fnc_setPresetChannelField;
	} forEach f_radios_settings_acre2_groups_blufor;

	{
		_channelName = _x;
		[_radioName, "preset_opfor", (_forEachIndex + 1), "label", _x] call acre_api_fnc_setPresetChannelField;
	} forEach f_radios_settings_acre2_groups_opfor;

	{
		_channelName = _x;
		[_radioName, "preset_indfor", (_forEachIndex + 1), "label", _x] call acre_api_fnc_setPresetChannelField;
	} forEach f_radios_settings_acre2_groups_indfor;
	
	{
		_channelName = _x;
		[_radioName, "preset_civ", (_forEachIndex + 1), "label", _x] call acre_api_fnc_setPresetChannelField;
	} forEach f_radios_settings_acre2_groups_civ;
} forEach ["ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"];