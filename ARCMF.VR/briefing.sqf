[{isDedicated || !isNull player}, {
    call compile preprocessFileLineNumbers "f\briefing\f_briefing_arcmf.sqf";

    if (serverCommandAvailable "#kick" || isServer || player == UnitGM) then {
        call compile preprocessFileLineNumbers "f\briefing\f_briefing_admin.sqf";
    } else {
        [{
            params ["_args","_handlerID"];
            
            if (serverCommandAvailable "#kick") then {
                call compile preprocessFileLineNumbers "f\briefing\f_briefing_admin.sqf";
                [_handlerID] call CBA_fnc_removePerFrameHandler;
            };
        }, 5, []] call CBA_fnc_addPerFrameHandler;
    };

    private _briefSide = side group player;

    if (player == UnitGM) then {
        _briefSide = "gm";
    };
    
    _briefSide call compile preprocessFileLineNumbers "f\briefing\f_briefing_side.sqf";
}, []] call CBA_fnc_waitUntilAndExecute;
