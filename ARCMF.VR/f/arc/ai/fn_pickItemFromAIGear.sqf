_faction = param [0, "blufor"];
_category = param [1, "uniforms"];
_itemarr = [];
_result = [];
_proarr = [];
_proportion = [];
_tot = 0;
_probl = 0;
_probu = 0;
_items = getArray (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> _category);

if (count _items > 0) then {
	_rand = random 1;

	{
		_prob = _x select 1;
		_proportion pushBack _prob;
	} forEach _items;
	
	{_tot = _tot + _x} forEach _proportion;
	
	{
		if (_tot != 0) then {
			_proarr pushBack (_x / _tot);
		} else {
			_proarr pushBack _x;
		};
	} forEach _proportion;
	 
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

_result