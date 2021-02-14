class baseMan {
	displayName = "Unarmed";
	uniform[] = {
		"CUP_U_B_BAF_MTP_UBACSLONG",
		"CUP_U_B_BAF_MTP_UBACSLONGKNEE",
		"CUP_U_B_BAF_MTP_UBACSROLLED",
		"CUP_U_B_BAF_MTP_UBACSROLLEDKNEE",
		"CUP_U_B_BAF_MTP_UBACSTSHIRT",
		"CUP_U_B_BAF_MTP_UBACSTSHIRTKNEE"
	};
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Empty"};
	backpack[] = {"CUP_B_Bergen_BAF"};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {"CUP_NVG_HMNVS"};
	faces[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	magazines[] = {};
	items[] = {
		MEDICAL_R,
		"ACE_Flashlight_XL50",
		"ACE_CableTie",
		"ACE_SpraypaintGreen",
		"ACE_IR_Strobe_Item",
		"ACE_EntrenchingTool"
	};
	linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ACE_Altimeter"
	};
};

class r : baseMan {
	displayName = "Rifleman";
	headgear[] = {
		"CUP_H_BAF_MTP_Mk7_PRR",
		"CUP_H_BAF_MTP_Mk6_EMPTY_PRR",
		"CUP_H_BAF_MTP_Mk6_CREW_PRR",
		"CUP_H_BAF_MTP_Mk6_GLASS_PRR",
		"CUP_H_BAF_MTP_Mk6_GOGGLES_PRR",
		"CUP_H_BAF_MTP_Mk6_NETTING_PRR",
		"CUP_H_BAF_MTP_Mk7_PRR_SCRIM_A"
	};
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Rifleman"};
	primaryWeapon[] = {"CUP_arifle_L85A2_NG","CUP_arifle_L85A2_G"};
	scope[] = {"cup_optic_eotech553_black"};
	attachment[] = {"cup_acc_llm_black"};
	silencer[] = {"cup_acc_sffh"};
	magazines[] = {
		LIST_7("CUP_30Rnd_556x45_Emag"),
		LIST_4("CUP_30Rnd_556x45_Emag_Tracer_Red"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell")
	};
};

class g : r {
	displayName = "Grenadier";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Grenadier"};
	primaryWeapon[] = {"CUP_arifle_L85A2_GL"};
	magazines[] += {
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class ga : r {
	displayName = "Grenadier MAT";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Grenadier"};
	primaryWeapon[] = {"CUP_arifle_L85A2_GL"};
	magazines[] += {
		LIST_14("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
	backpackItems[] = {
		LIST_1("CUP_MAAWS_HEDP_M"),
		LIST_1("CUP_MAAWS_HEAT_M")
	};
};

class g2 : r {
	displayName = "Lcpl (Breach/Gren)";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Grenadier"};
	primaryWeapon[] = {"CUP_arifle_L85A2_GL"};
	magazines[] += {
		LIST_14("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
	backpackItems[] = {
		LIST_1("CUP_PipeBomb_M"),
		LIST_3("AMP_Breaching_Charge_Mag"),
		LIST_2("ACE_CTS9"),
		"ACE_Clacker",
		"ACE_DefusalKit"
	};
};

class gb : r {
	displayName = "Grenadier MMG";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Grenadier"};
	primaryWeapon[] = {"CUP_arifle_L85A2_GL"};
	magazines[] += {
		LIST_14("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
	backpackItems[] = {
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class bre : r {
	displayName = "Breacher";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Rifleman"};
	primaryWeapon[] = {"CUP_sgun_M1014_Entry_vfg"};
	scope[] = {"cup_optic_holoblack"};
	attachment[] = {"cup_acc_llm_black"};
	sidearmWeapon[] = {"hlc_pistol_P226R"};
	magazines[] = {
		LIST_14("CUP_6Rnd_B_Beneli_74Pellets"),
		LIST_5("CUP_6Rnd_B_Benelli_74Slug"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell"),
		LIST_3("hlc_15Rnd_9x19_JHP_P226"),
		"ACE_Clacker",
		"ACE_DefusalKit",
		"CUP_PipeBomb_M"
	};
	backpackItems[] = {
		LIST_2("CUP_PipeBomb_M"),
		LIST_3("AMP_Breaching_Charge_Mag"),
		LIST_2("ACE_CTS9")
	};
};

class cls : r {
	displayName = "Combat Life Saver";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Medic"};
	traits[] = {"medic"};
	magazines[] += {
		LIST_4("CUP_30Rnd_556x45_Emag")
	};
	backpack[] = {"CUP_B_Motherlode_MTP"};
	backpackItems[] = { MEDICAL_CLS };
};

class m : cls {
	displayName = "Medic";
	magazines[] = {
		LIST_7("CUP_30Rnd_556x45_Emag"),
		LIST_2("CUP_30Rnd_556x45_Emag_Tracer_Red"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell")
	};
	backpack[] = {"CUP_B_Predator_MTP"};
	backpackItems[] = { MEDICAL_M };
};

class run : r {
	displayName = "Runner";
	sidearmWeapon[] = {"hlc_pistol_P226R"};
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Scout"};
	magazines[] = {
		LIST_7("CUP_30Rnd_556x45_Emag"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell"),
		LIST_3("hlc_15Rnd_9x19_JHP_P226")
	};
	backpack[] = {};
	linkedItems[] += {
		"ItemGPS",
		"Binocular"};
};

class smg : r {
    displayName = "smg";
    primaryWeapon[] = {"CUP_smg_MP5A5"};
    scope[] = {"cup_optic_microt1_low"};
    attachment[] = {};
    sidearmWeapon[] = {"hlc_pistol_P226R"};
    vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Scout"};
    magazines[] = {
        LIST_10("hlc_30Rnd_9x19_GD_MP5"),
        LIST_2("CUP_HandGrenade_L109A1_HE"),
        LIST_2("SmokeShell"),
        LIST_3("hlc_15Rnd_9x19_JHP_P226")
    };
    backpack[] = {};
    linkedItems[] += {"ItemGPS"};
};

class ftl : r {
	displayName = "Fireteam Leader";
	sidearmWeapon[] = {"hlc_pistol_P226R"};
	items[] += {"ACE_MapTools"};
	magazines[] += {
		LIST_2("SmokeShellGreen"),
		LIST_3("hlc_15Rnd_9x19_JHP_P226")
	};
	backpackItems[] = {
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"),
		"ZSN_Whistle"
	};
	linkedItems[] += {"Binocular","ItemGPS"};
};

class sl : ftl {
	displayName = "Squad Leader";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Officer"};
	magazines[] += {
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {
		LIST_1("CUP_MAAWS_HEDP_M"),
		LIST_1("CUP_MAAWS_HEAT_M")};
	linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ACE_Altimeter",
		"ACE_VectorDay",
		"ItemGPS"
	};
};

class sll : ftl {
	displayName = "Squad Leader command base";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Officer"};
	sidearmWeapon[] = {"hlc_pistol_P226R"};
	magazines[] = {
		LIST_6("CUP_30Rnd_556x45_Emag"),
		LIST_3("CUP_30Rnd_556x45_Emag_Tracer_Red"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		LIST_3("hlc_15Rnd_9x19_JHP_P226")
	};
	linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ACE_Altimeter",
		"ACE_VectorDay",
		"ItemGPS"
	};
};

class slb : ftl {
	displayName = "Squad Leader (breacher)";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Officer"};
	magazines[] += {
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {
		"ACE_Clacker",
		"ACE_DefusalKit",
		LIST_1("CUP_PipeBomb_M"),
		LIST_3("AMP_Breaching_Charge_Mag"),
		LIST_2("ACE_CTS9")
		};
	linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ACE_Altimeter",
		"ACE_VectorDay",
		"ItemGPS"
	};
};

class co : sll {
	displayName = "Platoon Leader";
	backpackItems[] = {};
};

class sgt : sll {
	displayName = "Platoon Sgt.";
	backpackItems[] = {};
};

class fac : co {
	displayName = "Forward Air Controller";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Officer"};
	backpack[] = {"CUP_B_Predator_Radio_MTP"};
	backpackItems[] = { FAC_GEAR };
	linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ACE_Altimeter",
		"CUP_LRTV",
		"ItemGPS"
	};
};

class rto : co {
	displayName = "RTO";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Officer"};
	backpack[] = {"CUP_B_Predator_Radio_MTP"};
	linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ACE_Altimeter",
		"ACE_VectorDay",
		"ItemGPS"
	};
};

class enll : sll {
	displayName = "Engineer (logistics) Lead";
	backpack[] = {"CUP_B_Bergen_BAF"};
	traits[] = {
		"engineer"
	};
	backpackItems[] = {
		"ToolKit"
	};
};

class ar : r {
	displayName = "Automatic Rifleman";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_AutomaticRifleman"};
	primaryWeapon[] = {"CUP_lmg_Mk48_nohg"};
	scope[] = {"cup_optic_eotech553_black"};
	attachment[] = {"cup_acc_llm_black"};
	silencer[] = {"hlc_muzzle_mag58_brake"};
	magazines[] = {
		LIST_5("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"),
		LIST_1("CUP_HandGrenade_L109A1_HE"),
		LIST_1("SmokeShell")
	};
};

class aar : r {
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] = {
		LIST_4("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	linkedItems[] += {"Binocular"};
};

class ratl : r {
	displayName = "Rifleman (Light AT)";
	secondaryWeapon[] = {"CUP_launch_NLAW"};
	backpackItems[] = {
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class rat : r {
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = {"CUP_launch_MAAWS"};
	secondaryAttachments[] = {"cup_optic_maaws_scope"};
	magazines[] = {
		LIST_4("CUP_30Rnd_556x45_Emag"),
		LIST_2("CUP_30Rnd_556x45_Emag_Tracer_Red"),
		"CUP_HandGrenade_L109A1_HE",
		"SmokeShell"
	};
	backpackItems[] = {
		LIST_1("CUP_MAAWS_HEAT_M"),
		LIST_1("CUP_MAAWS_HEDP_M")
	};
};

class dm : r {
	displayName = "Designated Marksman";
	primaryWeapon[] = {"CUP_srifle_L129A1_HG"};
	bipod[] = {"cup_bipod_harris_1a2_l_blk"};
	scope[] = {"cup_optic_elcan_specterdr_kf_rmr_black"};
	magazines[] = {
		LIST_10("CUP_20Rnd_762x51_L129_M"),
		"CUP_HandGrenade_L109A1_HE",
		"SmokeShell"
	};
	items[] += {
		"ACE_MapTools",
		"ACE_RangeCard"
	};
};


class vdi : run {
	displayName = "Vehicle Driver (infantry)";
	backpack[] = {"CUP_B_Bergen_BAF"};
	traits[] = {
		"engineer"
	};
	backpackItems[] = {
		"ToolKit"
	};
};

class enl : run {
	displayName = "Engineer (logistics)";
	backpack[] = {"CUP_B_Bergen_BAF"};
	traits[] = {
		"engineer"
	};
	backpackItems[] = {
		"ToolKit"
	};
};

class vgi : run {
	displayName = "Vehicle Gunner (infantry)";
	backpack[] = {"CUP_B_Bergen_BAF"};
	traits[] = {
		"engineer"
	};
	backpackItems[] = {
		"ToolKit"
	};
};
class vd : smg {
	displayName = "Vehicle Driver";
	backpack[] = {"CUP_B_Bergen_BAF"};
	traits[] = {
		"engineer"
	};
	backpackItems[] = {
		"ToolKit"
	};
};

class vg : smg {
	displayName = "Vehicle Gunner";
	backpack[] = {"CUP_B_Bergen_BAF"};
	traits[] = {
		"engineer"
	};
	backpackItems[] = {
		"ToolKit"
	};
};
class vc : smg {
	displayName = "Vehicle Commander";
	backpack[] = {"CUP_B_Bergen_BAF"};
	traits[] = {
		"engineer"
	};
	backpackItems[] = {
		"ToolKit"
	};
		linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ACE_Altimeter",
		"Binocular",
		"ItemGPS"
	};
};

class sn : r {
	displayName = "Sniper";
	uniform[] = {"CUP_U_B_BAF_MTP_GHILLIE"};
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Belt"};
	headgear[] = {"CUP_H_BAF_MTP_Mk7_PRR_SCRIM_B"};
	goggles[] = {"default"};
	primaryWeapon[] = {"srifle_LRR_F"};
	scope[] = {"cup_optic_sb_3_12x50_pmii"};
	sidearmWeapon[] = {"hlc_pistol_P226R_Combat"};
	sidearmAttachments[] = {"cup_muzzle_snds_m9", "cup_acc_cz_m3x"};
	magazines[] = {
		LIST_8("7Rnd_408_Mag"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell"),
		LIST_4("hlc_15Rnd_9x19_JHP_P226")
	};
	backpack[] = {};
	linkedItems[] = {"ItemGPS"};
};

class sp : r {
	displayName = "Spotter";
	uniform[] = {"CUP_U_B_BAF_MTP_GHILLIE"};
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Belt"};
	headgear[] = {"CUP_H_BAF_MTP_Mk7_PRR_SCRIM_B"};
	primaryWeapon[] = {"CUP_arifle_L86A2"};
	scope[] = {"cup_optic_elcan_specterdr_kf_rmr_black"};
	silencer[] = {"cup_muzzle_snds_l85"};
	sidearmWeapon[] = {"hlc_pistol_P226R_Combat"};
	sidearmAttachments[] = {"cup_muzzle_snds_m9", "cup_acc_cz_m3x"};
	items[] += {
		"ACE_MapTools",
		"ACE_RangeCard",
		"ACE_Kestrel4500",
		"ACE_ATragMX"
	};
	magazines[] = {
		LIST_5("CUP_30Rnd_556x45_Emag"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell"),
		LIST_4("hlc_15Rnd_9x19_JHP_P226")
	};
	backpack[] = {};
	linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ACE_Altimeter",
		"Laserdesignator",
		"ItemGPS"
	};
};

class eng : r {
	displayName = "Combat Engineer (Explosives)";
	traits[] = {
		"engineer", 
		"explosiveSpecialist"
	};
	sidearmWeapon[] = {"ACE_VMM3"};
	backpack[] = {"B_Kitbag_rgr"};
	backpackItems[] = {
		"ToolKit",
		"SatchelCharge_Remote_Mag",
		LIST_2("DemoCharge_Remote_Mag"),
		"ACE_DefusalKit",
		"ACE_EntrenchingTool",
		"ACE_DeadManSwitch",
		"ACE_Clacker"
	};
};

class engl : eng {
	displayName = "Combat Engineer(Explosives)Lead";
	items[] += {"ACE_MapTools"};
	linkedItems[] += {
		"Binocular",
		"ItemGPS"
	};
};

class engm : eng {
	displayName = "Combat Engineer(Mines)";
	traits[] = {
		"engineer",
		"explosiveSpecialist"
	};
	backpack[] = {"B_Kitbag_rgr"};
	backpackItems[] = {
		"ToolKit",
		"DemoCharge_Remote_Mag",
		"ACE_DefusalKit",
		"ACE_EntrenchingTool",
		"ACE_DeadManSwitch",
		"ACE_Clacker",
		LIST_2("APERSMineDispenser_Mag"),
	};
};

class engml : engm {
	displayName = "Combat Engineer(Mines)Lead";
	items[] += {"ACE_MapTools"};
	linkedItems[] += {
		"Binocular",
		"ItemGPS"
	};
};

class UAV : co {
	displayName = "UAV Operator";
	traits[] = {"UAVHacker"};
	magazines[] += {LIST_2("ACE_UAVBattery")};
	backpack[] = {"B_UAV_01_backpack_F"};
	linkedItems[] += {"B_UavTerminal"};
};

class mtrg : r {
	displayName = "Mortar Gunner";
	backPack[] = {"CUP_B_Bergen_BAF"};
	backpackItems[] += {
		LIST_3("ACE_1Rnd_82mm_Mo_HE"),
		"ACE_1Rnd_82mm_Mo_Illum",
		"ACE_1Rnd_82mm_Mo_Smoke"
	};
};

class mtrac : r {
	displayName = "Mortar Ammo Carrier";
	backPack[] = {"CUP_B_Bergen_BAF"};
	backpackItems[] = {
		LIST_3("ACE_1Rnd_82mm_Mo_HE"),
		"ACE_1Rnd_82mm_Mo_Illum",
		"ACE_1Rnd_82mm_Mo_Smoke"
	};
};

class mtrtl : sll {
	displayName = "Mortar Team Leader";
	items[] = {
		MTR_GEAR,
		MEDICAL_R,
		"ACE_Flashlight_XL50",
		"ACE_CableTie",
		"ACE_SpraypaintGreen",
		"ACE_IR_Strobe_Item",
		"ACE_EntrenchingTool"
	};
	magazines[] = {
		LIST_5("CUP_30Rnd_556x45_Emag"),
		LIST_2("CUP_30Rnd_556x45_Emag_Tracer_Red"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		LIST_3("hlc_15Rnd_9x19_JHP_P226")
	};
	backPack[] = {"CUP_B_Bergen_BAF"};
	backpackItems[] = {
		LIST_3("ACE_1Rnd_82mm_Mo_HE"),
		"ACE_1Rnd_82mm_Mo_Illum",
		"ACE_1Rnd_82mm_Mo_Smoke"
	};
};

class hc : smg {
	displayName = "Helicopter Copilot";
	uniform[] = {"U_BG_Guerrilla_6_1"};
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Crewman"};
	headgear[] = {"H_PilotHelmetHeli_O"};
	sidearmWeapon[] = {};
	magazines[] = {
		LIST_4("hlc_30Rnd_9x19_GD_MP5"),
		LIST_1("CUP_HandGrenade_L109A1_HE"),
		LIST_1("SmokeShell"),
		"SmokeShellPurple"
	};
	items[] = {
		MEDICAL_R,
		"ACE_Flashlight_XL50",
		"ACE_CableTie",
		"ACE_IR_Strobe_Item",
	};
	linkedItems[] += {"ItemGPS"};
};

class hp : hc {
	displayName = "Helicopter Pilot";
	headgear[] = {"H_PilotHelmetHeli_O"};
};

class hcc : hc {
	displayName = "Helicopter Crew Chief";
	headgear[] = {"H_CrewHelmetHeli_O"};
	traits[] = {"engineer"};
	backpack[] = {"B_AssaultPack_rgr"};
	backpackItems[] = {"ToolKit"};
};

class jp : hc {
	displayName = "Jet pilot";
	traits[] = {"engineer"};
	hmd[] = {};
	uniform[] = {"U_B_PilotCoveralls"};
	headgear[] = {"H_PilotHelmetFighter_B"};
};

class tp : jp {
	displayName = "Transport pilot";
	traits[] = {"engineer"};
	uniform[] = {"U_B_PilotCoveralls"};
	headgear[] = {"MNP_Helmet_STPilot"};
};

class tco : tp {
	displayName = "Transport Copilot";
};

class HMGL : sll {
	displayName = "HMG Team Leader";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_Officer"};
	sidearmWeapon[] = {"hlc_pistol_P226R"};
	backPack[] = {"B_Carryall_mcamo"};
	magazines[] = {
		LIST_2("CUP_30Rnd_556x45_Emag"),
		LIST_1("CUP_HandGrenade_L109A1_HE"),
		LIST_1("SmokeShell"),
		LIST_2("hlc_15Rnd_9x19_JHP_P226"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = {
		LIST_4("CUP_30Rnd_556x45_Emag_Tracer_Red"),
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class HMGG : HMGL {
	displayName = "HMG Gunner";
	vest[] = {"CUP_V_B_BAF_MTP_Osprey_Mk4_AutomaticRifleman"};
	sidearmWeapon[] = {};
	backPack[] = {"B_Carryall_mcamo"};
	magazines[] = {
		LIST_2("CUP_30Rnd_556x45_Emag"),
		LIST_2("CUP_HandGrenade_L109A1_HE"),
		LIST_2("SmokeShell"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = {
		LIST_4("CUP_30Rnd_556x45_Emag_Tracer_Red"),
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class HMGA : HMGG {
	displayName = "HMG Ammo Bearer";
};