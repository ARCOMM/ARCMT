_unit = param [0, objNull];
if (isNull _unit) exitWith {};
_faction = param [1, "opfor"];
_category = param [2, "uniforms"];
_items = getArray (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> _category);
_itemarr = [];
_result = [];
_proarr = [];
_proportion = [];
_tot = 0;
_probl = 0;
_probu = 0;
_isUndefined = false;

_soldiers = ["B_Soldier_F", "O_Soldier_F", "I_Soldier_F"];
_machinegunners = ["B_soldier_AR_F", "O_soldier_AR_F", "I_soldier_AR_F", "B_support_MG_F", "O_support_MG_F", "I_support_MG_F"];
_antitank = ["B_soldier_AT_F", "O_soldier_AT_F", "I_soldier_AT_F", "B_soldier_LAT_F", "O_soldier_LAT_F", "I_soldier_LAT_F"];

_rifleType = switch (true) do {
	case (typeOf _unit in _soldiers): {["AssaultRifle","Rifle","SubmachineGun"]};
	case (typeOf _unit in _machinegunners): {["MachineGun"]};
	case (typeOf _unit in _antitank): {["MissileLauncher","RocketLauncher","Launcher"]};
	default {[]};
};

if (count _rifleType > 0 && _category in ["rifles","launchers"]) then {
	{
		private _class = _x select 0;
		private _itemType = _class call BIS_fnc_itemType;
		if ((_itemType select 0) in ["Weapon","VehicleWeapon"] && (_itemType select 1) in _rifleType) exitWith {
			_result = [_class];
		};
	} forEach _items;
	
	if (count _result <= 0) then {
		_isUndefined = true;
	};
};

if (_isUndefined || !(count _rifleType > 0 && _category in ["rifles","launchers"])) then {
    if (count _items > 0) then {
        _rand = random 1;

        {
            _prob = _x select 1;
            _proportion pushBack _prob;
        } forEach _items;
        
        {
			_tot = _tot + _x;
		} forEach _proportion;
        
		if (count _items > 1) then {
			{
				if (_tot != 0) then {
					_proarr pushBack (_x / _tot);
				} else {
					_proarr pushBack _x;
				};
			} forEach _proportion;
		} else {
			_proarr = _proportion;
		};
        
        {
            _class = _x select 0;
            
            if (_forEachIndex == 0) then {
                _probl = 0;
                _probu = _proarr select 0;
            } else {
                if (_forEachIndex == ((count _items) - 1)) then {
                    _probu = 1;
                    _probl = _probu - (_proarr select _forEachIndex);
                } else {
                    _probl = _probu;
                    _probu = _probl + (_proarr select _forEachIndex);
                };
            };

            if (_rand > _probl && _rand <= _probu) then {
                _itemarr pushBack _class;
            };
        } forEach _items;
    };
	
    if (count _itemarr > 0) then {
        _result = [(_itemarr call BIS_fnc_selectRandom)];
    };
};

_result