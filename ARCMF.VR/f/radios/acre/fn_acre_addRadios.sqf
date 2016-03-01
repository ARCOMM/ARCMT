private["_unit", "_typeOfUnit", "_longRange"];

_unit = player;
_typeOfUnit = _unit getVariable ["f_var_assignGear", "NIL"];

if (_typeOfUnit != "NIL") then {
	if (!f_radios_settings_acre_disableRadios) then {
		_unit linkItem "ACRE_PRC343";
		_longRange = ["co", "dc", "m", "mmgg", "matg", "mtrg", "sn","vc", "pp", "eng", "engm", "uav", "div"];
		if (_typeOfUnit in _longRange) then {
			_unit addItem "ACRE_PRC148";
			if (_typeOfUnit in f_radios_settings_acre_extraRadios) then {
				_unit addItem "ACRE_PRC148";
			};
		};
	};
};