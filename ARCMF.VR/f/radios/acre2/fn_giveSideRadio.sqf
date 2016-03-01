_unit = _this select 0;
_side = _this select 1;
_radio = _this select 2;

_presetName = switch(_side) do {
	case west: {"default2"};
	case east: {"default3"};
	case resistance: {"default4"};
	case civilian: {"default5"};
	default {"default"};
};

if (!local _unit) ExitWith {};
_ret = [_radio, _presetName] call acre_api_fnc_setDefaultChannels;
_unit addItem _radio;