private["_unit", "_westOffset", "_eastOffset", "_resistanceOffset", "_selectedOffset", "_lrFrequencies", "_lrFreq", "_srFrequencies", "_srFreq"];

_unit = player;

if (!f_radios_settings_acre_disableFrequencySplit) then {
	_westOffset = 0.2;
	_eastOffset = 0.4;
	_resistanceOffset = 0.6;

	switch (side _unit) do {
		case west: {
			_selectedOffset = _westOffset;
		};
		case east: {
			_selectedOffset = _eastOffset;
		};
		case resistance: {
			_selectedOffset = _resistanceOffset;
		};
	};

	_lrFrequencies = [];
	_lrFreq = 0;
	for "_x" from 1 to 100 do {
		_lrFreq = ((36) + _x) + _selectedOffset;
		_lrFrequencies set [_x - 1, _lrFreq];
	};

	_srFrequencies = [];
	_srFreq = 0;
	for "_x" from 1 to 16 do {
		_srFreq = ((2400) + _x) + _selectedOffset;
		_srFrequencies set [_x - 1, _srFreq];
	};
} else {
	_lrFrequencies = [];
	_lrFreq = 0;
	for "_x" from 1 to 100 do {
		_lrFreq = ((30) + _x);
		_lrFrequencies set [_x - 1, _lrFreq];
	};

	_srFrequencies = [];
	_srFreq = 0;
	for "_x" from 1 to 16 do {
		_srFreq = ((2400) + _x);
		_srFrequencies set [_x - 1, _srFreq];
	};
};

_ret = ["ACRE_PRC117F", _lrFrequencies] call acre_api_fnc_setDefaultChannels;
_ret = ["ACRE_PRC119", _lrFrequencies] call acre_api_fnc_setDefaultChannels;
_ret = ["ACRE_PRC148", _lrFrequencies] call acre_api_fnc_setDefaultChannels;
_ret = ["ACRE_PRC152", _lrFrequencies] call acre_api_fnc_setDefaultChannels;
_ret = ["ACRE_PRC343", _srFrequencies] call acre_api_fnc_setDefaultChannels;