
// Give Zorro appropriate headgear after safestart.
if (getPlayerUID player == 76561197970511711) then {
    [
        {!([] call TMF_safestart_fnc_isActive)},
        {
            [
                {
                    if (headgear player != "H_Helmet_Skate") then {
                        removeHeadgear player;
                        player addHeadgear "H_Helmet_Skate";
                    };
                },
                10,
                []
            ] call CBA_fnc_addPerFrameHandler;
        },
        []
    ] call CBA_fnc_waitUntilAndExecute;
};
