private ["_text","_stuff","_weps","_items","_fnc_wepMags","_wepMags","_magArr","_s","_mags","_bp","_maxload"];

_fnc_wepMags = {
		private ["_w","_magarr"];
		_w = _this select 0;
		_wepMags = getArray (configFile >> "CfgWeapons" >> _w >> "magazines");
  		_magArr = [];
  		{
  			_s = [_mags,_x] call BIS_fnc_findInPairs;
  			if (_s != -1) then {
  				_magArr set [count _magArr,([_mags,[_s, 1]] call BIS_fnc_returnNestedElement)];
  				_mags = [_mags, _s] call BIS_fnc_removeIndex;
  			};
  		} forEach _wepMags;

  		if (count _magArr > 0) then {
  			_text = _text + " [";

  			{
  				_text = _text + format ["%1",_x];
  				if (count _magarr > (_forEachIndex + 1)) then {_text = _text + "+";}
  			} forEach _magArr;

  			_text = _text + "]";
  		};
};

_text = "<br />NOTE: The loadout shown below is only accurate at mission start.<br />
<br />";
_stuff = [];

_weps = weapons player - ["Rangefinder","Binocular","Laserdesignator"];
_wepItems = weaponsItems player;
_mags = (magazines player) call BIS_fnc_consolidateArray;
_items = (items player) call BIS_fnc_consolidateArray;

if (count _weps > 0) then {
	_text = _text + "<font size='18'>WEAPONS [#MAGAZINES]:</font>";
	{
		_text = _text + format["<br/>%1",getText (configFile >> "CfgWeapons" >> _x >> "displayname")];
  		[_x] call _fnc_wepMags;
		if ({_x in ["GL_3GL_F","EGLM","UGL_F"]} count (getArray (configFile >> "CfgWeapons" >> _x >> "muzzles")) > 0) then {
			_text = _text + "<br/> |- UGL";
			["UGL_F"] call _fnc_wepMags;
		};

		_attachments = _wepItems select (([_wepItems,_x] call BIS_fnc_findNestedElement) select 0);
		_attachments = [_attachments,0] call BIS_fnc_removeIndex;

		{
			if (typeName _x != typeName [] && {_x != ""}) then {
				_text = _text + format["<br/> |- %1",getText (configFile >> "CfgWeapons" >> _x >> "displayname")];
			};
		} forEach _attachments;

	} forEach _weps;
	_text = _text + "<br/>";
};

if (count _mags > 0) then {
	_text = _text + "<br/><font size='18'>OTHER [#]:</font><br/>";

	{
		_text = _text + format["%1 [%2]<br/>",getText (configFile >> "CfgMagazines" >> _x select 0 >> "displayname"),_x select 1];
	} forEach _mags;
};

if !(backpack player == "") then {
	_text = _text + "<br/><font size='18'>BACKPACK [%FULL]:</font><br/>";
	_bp = backpack player;
	_text = _text + format["%1 [%2",getText (configFile >> "CfgVehicles" >> _bp >> "displayname"), 100*loadBackpack player]+"%]<br/>";
};

if (count _items > 0) then {
	_text = _text + "<br/><font size='18'>ITEMS [#]:</font><br/>";

	{
		_text = _text + format["%1 [%2]<br/>",getText (configFile >> "CfgWeapons" >> _x select 0 >> "displayname"),_x select 1];
	} forEach _items;

	{
		_text = _text + format["*%1<br/>",getText (configFile >> "CfgWeapons" >> _x >> "displayname")];
	} forEach assignedItems player;

	_text = _text + "<br/>*Indicates an equipped item.";
};

waitUntil {scriptDone f_script_briefing};
player createDiaryRecord ["diary", ["Loadout", _text]];