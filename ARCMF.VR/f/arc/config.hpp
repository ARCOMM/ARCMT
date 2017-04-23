class ARC
{
    class misc
    {
        file = "f\arc\misc";
        class ambientAA {};
        class resetPosition {};
        class randomEnvironment {};
        class fullMoonDates {};
        class displayBriefingTime {};
        class hint {};
        class mapTimer {};
    };
    class chat
    {
        file = "f\arc\chat";
        class disableAllChannels {};
        class enableAllChannels {};
        class registerCommands {};
    };
    class ai
    {
        file = "f\arc\ai";
        class applyLoadout {};
        class pickItemFromAIGear {};
        class pickAttachmentsFromAIGear {};
        class garrisonBuilding {};
    };
    class halo
    {
        file = "f\arc\halo";
        class halodrop {};
        class haloprep {};
        class paraDrop {};
    };
    class sandbox
    {
        file = "f\arc\sandbox";
        class toggleAdversarial {};
        class setAdversarialStart {};
    };
    class reinforcements {
        file = "f\arc\reinforcements";
        class toggleReinforcements {};
        class rejoinMission {};
    };
    class helpers
    {
        file = "f\arc\helpers";
        class execHC {};
        class execHC_remote {};
        class fileExists {};
        class getFactionFromSide {};
        class isRespawnEnabled {};
        class buildBriefingFromConfig {};
        class isPlayerReady {};
        class getStartingPos {};
        class getCfgBool {};
        class broadcastDiary {};
        class getUnitType {};
        class zeroPad {};
        class arrayShuffle {};
        class execAfterSafeStart {};
        class getLeaderGroup {};
        class getSideColor {};
        class changeReadyStatus {};
        class checkGlobalReadiness {};
    };
    class radios
    {
        file = "f\arc\radios";
        class addMissingRadio {};
    };
    class markers
    {
        file = "f\arc\markers";
        class addTrackingMarker {};
        class getMarkerType {};
        class getMarkerTexture {};
        class markerExists {};
        class drawOnMap {};
    };
    class tracker
    {
        file = "f\arc\tracker";
        class initTracker {};
        class updateTracker {};
    };
    class gear
    {
        file = "f\arc\gear";
        class switchCamo {};
        class reassignGear {};
    };
};
