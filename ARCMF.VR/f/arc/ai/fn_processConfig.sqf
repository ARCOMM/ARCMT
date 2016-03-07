{
	_side = _x;
	_attributes = "true" configClasses (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _x);
	
	{
		private _key = configName _x;
		private _value = _x call BIS_fnc_getCfgData;
		private _name = format ["ARC_ai_gear_%1_%2", _side, _key];
		missionNamespace setVariable [_name, _value, true];
	} forEach _attributes;
} forEach ["blufor","opfor","indfor","civilian"];