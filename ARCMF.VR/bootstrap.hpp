class Header {
    gameType = Coop;
    minPlayers = 1;
    maxPlayers = 999;
    ARCMF = 1;
    #ifdef SANDBOX
        sandbox = 1;
    #endif
};

loadScreen = data\splash.paa;
enableDebugConsole = 1;
disabledAI = 1;
respawnDelay = 3;
respawnButton = 1;
respawnOnStart = -1;

#ifdef SANDBOX
    respawn = 3;
    respawnTemplates[] = {"MenuPosition"};
#else
    respawn = 1;
    respawnTemplates[] = {"Seagull", "arcore_spectator"};
#endif

showGroupIndicator = 0;
showHUD[] = {true, true, false, false, true, true, false, true};

corpseManagerMode = 3;
corpseLimit = 15;
corpseRemovalMinTime = 300;
corpseRemovalMaxTime = 900;
minPlayerDistance = 25;

disableRandomization[] = {"All", "AllVehicles"};

class Params {
    class BriefingTimer {
        title = "Briefing Timer";
        values[] = {-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30};
        texts[] = {"Disabled","Infinite","1 Minute","2 Minutes","3 Minutes","4 Minutes","5 Minutes","6 Minutes","7 Minutes","8 Minutes","9 Minutes","10 Minutes","11 Minutes","12 Minutes","13 Minutes","14 Minutes","15 Minutes","16 Minutes","17 Minutes","18 Minutes","19 Minutes","20 Minutes","21 Minutes","22 Minutes","23 Minutes","24 Minutes","25 Minutes","26 Minutes","27 Minutes","28 Minutes","29 Minutes","30 Minutes"};
        #ifdef BRIEFINGTIMER_DEFAULT
            default = BRIEFINGTIMER_DEFAULT;
        #else
            default = 0;
        #endif
    };
};

#ifndef CUSTOMCFGDEBRIEFINGSECTIONS
class CfgDebriefingSections {
    class acex_killTracker {
        title = "Acex Killed Events";
        variable = "acex_killTracker_outputText";
    };
};
#endif
