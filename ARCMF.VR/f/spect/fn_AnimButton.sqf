disableSerialization;

private ["_ctrl","_hover"];

_ctrl = _this select 0;
_hover = _this select 1;
_pos = ctrlPosition _ctrl; // [x, y, w, h]

if (_hover) then {
    _ctrl ctrlSetPosition [(_pos select 0), (_pos select 1), (_pos select 2), (_pos select 3) + 0.02];
} else {
    _ctrl ctrlSetPosition [(_pos select 0), (_pos select 1), (_pos select 2), (0.03 * safeZoneH)];
};

_ctrl ctrlCommit 0.15;