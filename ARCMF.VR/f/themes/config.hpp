class CfgSandboxThemes {
    class Vietnam {
        class AssignGear {
            BLUFOR = "f\themes\vietnam\f_assignGear_blufor.sqf";
            OPFOR = "f\themes\vietnam\f_assignGear_opfor.sqf";
            INDFOR = "f\themes\vietnam\f_assignGear_indfor.sqf";
        };
        class AIGear {
            #include "vietnam\ai.hpp"
        };
    };

    class BAF_Woodland {
        class AssignGear {
            BLUFOR = "f\themes\baf_woodland\f_assignGear_blufor.sqf";
            OPFOR = "f\themes\baf_woodland\f_assignGear_opfor.sqf";
            INDFOR = "f\themes\baf_woodland\f_assignGear_indfor.sqf";
        };
        class AIGear {
            #include "baf_woodland\ai.hpp"
        };
    };

    class Gulf_War {
        class AssignGear {
            BLUFOR = "f\themes\gulf_war\f_assignGear_blufor.sqf";
            OPFOR = "f\themes\gulf_war\f_assignGear_opfor.sqf";
            INDFOR = "f\themes\gulf_war\f_assignGear_indfor.sqf";
        };
        class AIGear {
            #include "gulf_war\ai.hpp"
        };
    };

    class BAF_Winter {
        class AssignGear {
            BLUFOR = "f\themes\baf_winter\f_assignGear_blufor.sqf";
            OPFOR = "f\themes\baf_winter\f_assignGear_opfor.sqf";
            INDFOR = "f\themes\baf_winter\f_assignGear_indfor.sqf";
        };
        class AIGear {
            #include "baf_winter\ai.hpp"
        };
    };
};