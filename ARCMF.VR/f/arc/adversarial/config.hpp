class CfgAdversarial {
    class Loadouts {
        class BLUFOR {
            class Rifleman {
                displayName = "Rifleman";
                uniform = "rhs_uniform_gorka_r_g";
                vest = "rhs_6b13_EMR_6sh92_vog";
                backpack = "B_Bergen_tna_F";
                weapons[] = {"HLC_wp_M134Painless","Binocular"};
                magazines[] = {"hlc_500rnd_762x51_Belt","hlc_500rnd_762x51_Belt","hlc_500rnd_762x51_Belt"};
                items[] = {};
                linkedItems[] = {"H_HelmetO_ViperSP_ghex_F","ItemMap","ItemCompass","ItemWatch","ItemGPS"};
            };
            class AutomaticRifleman {
                displayName = "Automatic Rifleman";
                uniform = "LOP_U_TKA_Fatigue_02";
                vest = "LOP_V_6Sh92_Vog_OLV";
                backpack = "B_TacticalPack_blk";
                weapons[] = {"rhs_weap_m240G"};
                magazines[] = {"rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhs_mag_m67","rhs_mag_m67","rhs_mag_m67","rhs_mag_m67","rhs_mag_an_m8hc","rhs_mag_an_m8hc","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51_m62_tracer"};
                items[] = {"ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_fieldDressing","ACE_Flashlight_XL50"};
                linkedItems[] = {"rhs_ssh68","ItemMap","ItemCompass","ItemWatch"};
            };
        };
        class OPFOR {};
        class INDFOR {};
    };
};