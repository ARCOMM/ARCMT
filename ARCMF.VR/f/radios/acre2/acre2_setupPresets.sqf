{
	_radioName = _x;
	_nameField = switch (_radioName) do {
		case "ACRE_PRC152": {"description"};
		case "ACRE_PRC148": {"label"};
		case "ACRE_PRC117F": {"name"};
		default {""};
	};

	_counter = 1;
	{
		_channelName = _x;
		[_radioName, "default2", _counter, "label", _x] call acre_api_fnc_setPresetChannelField;
		_counter = _counter + 1;
	} forEach f_radios_settings_acre2_groups_blufor;

	_counter = 1;
	{
		_channelName = _x;
		[_radioName, "default3", _counter, "label", _x] call acre_api_fnc_setPresetChannelField;
		_counter = _counter + 1;
	} forEach f_radios_settings_acre2_groups_opfor;

	_counter = 1;
	{
		_channelName = _x;
		[_radioName, "default4", _counter, "label", _x] call acre_api_fnc_setPresetChannelField;
		_counter = _counter + 1;
	} forEach f_radios_settings_acre2_groups_indfor;
	
	_counter = 1;
	{
		_channelName = _x;
		[_radioName, "default5", _counter, "label", _x] call acre_api_fnc_setPresetChannelField;
		_counter = _counter + 1;
	} forEach f_radios_settings_acre2_groups_civ;
} forEach ["ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"];