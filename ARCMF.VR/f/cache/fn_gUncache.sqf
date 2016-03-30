{
    _x enableSimulationGlobal true;
    _x hideObjectGlobal false;

    if (speed leader _this > 0 && vehicle _x == _x) then {
        _x setPosATL [(formationPosition _x) select 0, (formationPosition _x) select 1, 0];
    };

    if (vehicle _x != _x) then {(vehicle _x) hideObjectGlobal false};

    sleep 0.1;
} forEach units _this;

true