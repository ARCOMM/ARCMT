private["_unit"];

_unit = player;

if ([_unit] call acre_api_fnc_hasRadio) then {
  waitUntil {!isNil "acre_sys_radio_currentRadioList"};
  waitUntil {(count acre_sys_radio_currentRadioList) > 0};
  {_unit unlinkItem _x;} forEach acre_sys_radio_currentRadioList;
};