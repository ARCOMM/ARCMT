_unit = _this select 0;
_side = _this select 1;
_radio = _this select 2;

_presetName = switch (_side) do {
	case west: {"preset_blufor"};
	case east: {"preset_opfor"};
	case resistance: {"preset_indfor"};
	default {"default"};
};

if (!local _unit) exitWith {};
_ret = [_radio, _presetName] call acre_api_fnc_setDefaultChannels;
_unit addItem _radio;