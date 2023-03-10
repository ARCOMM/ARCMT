
// Give Zorro appropriate headgear after safestart.
if (getPlayerUID player == 76561197970511711) then {
    [
        {!([] call TMF_safestart_fnc_isActive)},
        {
            ZorroUK_Helmet = ["CUP_H_USArmy_Helmet_Protec", "H_Helmet_Skate"] select (288520 in (getDLCs 1));
            [
                {
                    if (headgear player != "H_Helmet_Skate") then {
                        removeHeadgear player;
                        player addHeadgear (selectRandomWeighted [ZorroUK_Helmet,99,"H_Hat_Tinfoil_F",1]);
                    };
                },
                10,
                []
            ] call CBA_fnc_addPerFrameHandler;
        },
        []
    ] call CBA_fnc_waitUntilAndExecute;
};
