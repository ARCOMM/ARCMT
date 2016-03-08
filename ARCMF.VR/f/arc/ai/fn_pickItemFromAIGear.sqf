_faction = param [0, "blufor"];
_category = param [1, "uniforms"];
_result = false;

_items = getArray (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> _category);

if (count _items > 0) then {
	_result = _items call BIS_fnc_selectRandom;
} else {
	_result = false;
};

_result