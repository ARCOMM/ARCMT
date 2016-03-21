if (!local player) exitWith {};

{_x enableChannel true} forEach [0,1,2,4,5]; // 3 is group and you can't disable group channel

true