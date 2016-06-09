params ["_number"];
if (count (str _number) == 1) exitWith {format ["0%1", _number]};
str _number