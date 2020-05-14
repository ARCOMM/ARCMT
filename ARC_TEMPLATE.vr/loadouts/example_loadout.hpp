// If you want to base a loadout on an existing one, this repository contains them all:
// https://github.com/ARCOMM/arc_misc/tree/master/addons/tmf_loadouts

class baseMan {// Weaponless baseclass
	displayName = "Unarmed";
	// All randomized.
	uniform[] = {
		"CUP_U_I_GUE_Flecktarn2",
		"CUP_U_I_GUE_Flecktarn3",
		"CUP_U_I_GUE_Flecktarn",
		"CUP_U_I_GUE_Flecktarn4",
		"CUP_U_I_GUE_Woodland1",
		"CUP_U_I_GUE_WorkU_01",
		"CUP_U_I_GUE_WorkU_02",
		"CUP_U_I_GUE_Anorak_02",
		"CUP_U_I_GUE_Anorak_03"
	};
	vest[] = {
		"V_TacVest_camo",
		"V_TacVest_oli",
		"V_I_G_resistanceLeader_F"
	};
	backpack[] = {"CUP_B_AlicePack_Bedroll"};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {};
	// Leave empty to remove all. "Default" > leave original item.
	faces[] = {"Default"};
	// Leave empty to not change faces.
	insignias[] = {};
	// Leave empty to not change insignias

	// All randomized
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	// Leave empty to remove all. "Default" for primaryWeapon > leave original weapon.

	// Only *Weapons[] arrays are randomized
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// Leave empty to remove all. "Default" for secondaryWeapon or sidearmWeapon > leave original weapon.

	// These are added to the uniform or vest
	magazines[] = {};
	items[] = {MEDICAL_R};
	// These are added directly into their respective slots
	linkedItems[] = {
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch"
	};

	// These are put into the backpack
	backpackItems[] = {};

	// Unit traits, see https://community.bistudio.com/wiki/setUnitTrait
	traits[] = {};

	// This is executed after unit init is complete. argument: _this = _unit.
	code = "";
};
class r : baseMan
{
	displayName = "Rifleman";
	headgear[] = {
		LIST_5("CUP_H_SLA_BeanieGreen"),
		"H_Shemag_olive",
		"H_Booniehat_oli",
		"CUP_H_PMC_Beanie_Khaki"
	};
	primaryWeapon[] = {"CUP_arifle_AKM_Early"};
	scope[] = {};
	attachment[] = {};
	magazines[] =
	{
		LIST_6("CUP_30Rnd_762x39_AK47_bakelite_M"),
		LIST_2("CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"),
		"CUP_HandGrenade_RGD5",
		LIST_2("SmokeShell")
	};
};
class g : r
{
	displayName = "Grenadier";
	primaryWeapon[] = {"CUP_arifle_AKM_GL_Early"};
	magazines[] +=
	{
		LIST_4("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};
class car : r
{
	displayName = "Carabinier";
	vest[] = {
		"CUP_V_O_SLA_M23_1_OD",
		"CUP_V_O_SLA_M23_1_BRN"
	};
	primaryWeapon[] = {"CUP_arifle_AKS"};
	magazines[] =
	{
		LIST_6("CUP_30Rnd_762x39_AK47_bakelite_M"),
		LIST_2("CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"),
		"CUP_HandGrenade_RGD5",
		LIST_2("SmokeShell")
	};
};
class cls : car
{
	displayName = "Combat Life Saver";
	traits[] = {"medic"};
	backpack[] = {"CUP_B_Bergen_BAF"};
	backpackItems[] =
	{
		MEDICAL_CLS
	};
};
class m : cls
{
	displayName = "Medic";
	backpack[] = {"CUP_B_HikingPack_Civ"};
	backpackItems[] =
	{
		MEDICAL_M
	};
};
class smg : r
{
	displayName = "Submachinegunner";
	primaryWeapon[] = {"CUP_smg_SA61"};
	magazines[] =
	{
		LIST_6("CUP_20Rnd_B_765x17_Ball_M"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_2("SmokeShell")
	};
};
class ftl : g
{
	displayName = "Fireteam Leader";
	magazines[] +=
	{
		LIST_2("CUP_1Rnd_SmokeGreen_GP25_M"),
		LIST_2("CUP_IlumFlareWhite_GP25_M")
	};
	items[] += {"ACE_MapTools"};
	linkedItems[] += {"Binocular","ItemGPS"};
};
class sl : ftl
{
	displayName = "Squad Leader";
	backpack[] = {"CUP_B_Kombat_Radio_Olive"};
	sidearmWeapon[] = {"CUP_hgun_TaurusTracker455"};
	magazines[] +=
	{
		LIST_2("CUP_6Rnd_45ACP_M")
	};
};
class co : sl
{
	displayName = "Platoon Leader";
	headgear[] = {"CUP_H_NAPA_Fedora"};
};
class fac : co
{
	displayName = "Forward Air Controller";
	backpack[] = {"CUP_B_Kombat_Radio_Olive"};
	backpackItems[] = {
		LIST_4("SmokeShellRed"),
		LIST_4("SmokeShellGreen"),
		LIST_4("SmokeShellPurple")
	};
	linkedItems[] =
	{
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch",
		"CUP_SOFLAM",
		"ItemGPS"
	};
};
class ar : r
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = {"CUP_lmg_UK59"};
	magazines[] =
	{
		LIST_6("CUP_50Rnd_UK59_762x54R_Tracer"),
		"CUP_HandGrenade_RGD5",
		"SmokeShell"
	};
};
class aar : car
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] =
	{
		LIST_4("CUP_50Rnd_UK59_762x54R_Tracer"),
		"ACE_EntrenchingTool"
	};
	linkedItems[] += {"Binocular"};
};
class rat : r
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = {"CUP_launch_RPG18"};
};
class dm : r
{
	displayName = "Designated Marksman";
	primaryWeapon[] = {"CUP_srifle_CZ550"};
	magazines[] =
	{
		LIST_11("CUP_5x_22_LR_17_HMR_M"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_2("SmokeShell")
	};
};
class mmgg : ar
{
	displayName = "MMG Gunner";
	primaryWeapon[] = {"CUP_lmg_PKM"};
	magazines[] =
	{
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M"),
		"CUP_HandGrenade_RGD5",
		"SmokeShell"
	};
};
class mmgac : car
{
	displayName = "MMG Ammo Carrier";
	backpack[] = {"B_Kitbag_rgr"};
	backpackItems[] =
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M")
	};
};
class mmgag : aar
{
	displayName = "MMG Assistant Gunner";
	linkedItems[] =
	{
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch",
		"Binocular",
		"ItemGPS"
	};
	items[] += {"ACE_MapTools"};
	backpackItems[] =
	{
		LIST_2("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M")
	};
};
class hmgg : car
{
	displayName = "HMG Gunner";
	backPack[] = {"CUP_B_DShkM_Gun_Bag"};
};
class hmgac : car
{
	displayName = "HMG Ammo Carrier";
	backPack[] = {"CUP_B_DShkM_TripodHigh_Bag"};
};
class hmgag : car
{
	displayName = "HMG Assistant Gunner";
	backPack[] = {"CUP_B_DShkM_TripodLow_Bag"};
	items[] += {"ACE_MapTools"};
	linkedItems[] =
	{
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch",
		"Binocular",
		"ItemGPS"
	};
};
class matg : car
{
	displayName = "MAT Gunner";
	backpack[] = {"CUP_B_RPGPack_Khaki"};
	secondaryWeapon[] = {"CUP_launch_RPG7V"};
	secondaryAttachments[] = {"cup_optic_pgo7v"};
	magazines[] +=
	{
		LIST_3("CUP_PG7VM_M")
	};
};
class matac : car
{
	displayName = "MAT Ammo Carrier";
	backpack[] = {"CUP_B_RPGPack_Khaki"};
	backpackItems[] +=
	{
		LIST_2("CUP_PG7VM_M"),
		LIST_2("CUP_OG7_M")
	};
};
class matag : car
{
	displayName = "MAT Assistant Gunner";
	backpack[] = {"CUP_B_RPGPack_Khaki"};
	items[] += {"ACE_MapTools"};
	linkedItems[] =
	{
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch",
		"Binocular",
		"ItemGPS"
	};
	backpackItems[] +=
	{
		LIST_2("CUP_PG7VM_M"),
		LIST_2("CUP_OG7_M")
	};
};
class hatg : car
{
	displayName = "HAT Gunner";
	backPack[] = {"CUP_B_SPG9_Gun_Bag"};
};
class hatac : car
{
	displayName = "HAT Ammo Carrier";
	backPack[] = {"CUP_B_SPG9_Gun_Bag"};
};
class hatag : car
{
	displayName = "HAT Assistant Gunner";
	backPack[] = {"CUP_B_SPG9_Tripod_Bag"};
	linkedItems[] =
	{
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch",
		"Binocular",
		"ItemGPS"
	};
};
class mtrg : car
{
	displayName = "Mortar Gunner";
	backPack[] = {"I_Mortar_01_weapon_F"};
	linkedItems[] =
	{
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch",
		"ItemGPS"
	};
};
class mtrac : car
{
	displayName = "Mortar Ammo Carrier";
	backPack[] = {"I_Mortar_01_weapon_F"};
};
class mtrag : car
{
	displayName = "Mortar Assistant Gunner";
	backPack[] = {"I_Mortar_01_support_F"};
	items[] += {"ACE_RangeTable_82mm","ACE_MapTools"};
	linkedItems[] =
	{
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch",
		"Rangefinder",
		"ItemGPS"
	};
};
class samg : r
{
	displayName = "AA Missile Specialist";
	secondaryWeapon[] = {"CUP_launch_9K32Strela"};
};
class samag : car
{
	displayName = "AA Assistant Missile Specialist";
	secondaryWeapon[] = {"CUP_launch_9K32Strela"};
};
class sn : r
{
	displayName = "Sniper";
	uniform[] = {"CUP_U_I_Ghillie_Top"};
	vest[] = {"CUP_V_O_Ins_Carrier_Rig_Light"};
	headgear[] = {};
	backpack[] = {};
	primaryWeapon[] = {"CUP_srifle_SVD"};
	scope[] = {"cup_optic_pso_1"};
	attachment[] = {"cup_svd_camo_g_half"};
	magazines[] =
	{
		LIST_7("CUP_10Rnd_762x54_SVD_M"),
		LIST_2("CUP_HandGrenade_RGD5")
	};
};
class sp : g
{
	displayName = "Spotter";
	uniform[] = {"CUP_U_I_Ghillie_Top"};
	vest[] = {"CUP_V_O_Ins_Carrier_Rig_Light"};
	linkedItems[] =
	{
		"ItemMap",
		"ItemCompass",
		"ItemRadio",
		"ItemWatch",
		"CUP_SOFLAM",
		"ItemGPS"
	};
};
class vg : smg
{
	displayName = "Vehicle Crew";
	uniform[] = {"U_BG_Guerrilla_6_1"};
	vest[] = {"V_BandollierB_oli"};
	backpack[] = {};
	headgear[] = {"CUP_H_TK_TankerHelmet"};
	magazines[] =
	{
		LIST_6("CUP_20Rnd_B_765x17_Ball_M"),
		"SmokeShellPurple"
	};
};
class vc : vg
{
	displayName = "Vehicle Commander";
	linkedItems[] += {"Binocular","ItemGPS"};
};
class vd : vg
{
	displayName = "Vehicle Driver";
	traits[] = {"engineer"};
	backpack[] = {"CUP_B_SLA_Medicbag"};
	linkedItems[] += {"ItemGPS"};
	backpackItems[] = {"ToolKit"};
};
class pc : smg
{
	displayName = "Helicopter Crew";
	uniform[] = {"CUP_U_C_Pilot_01"};
	vest[] = {"CUP_V_O_SLA_Flak_Vest03"};
	backpack[] = {};
	headgear[] = {"H_Cap_headphones"};
	magazines[] =
	{
		LIST_6("CUP_20Rnd_B_765x17_Ball_M"),
		"SmokeShellPurple"
	};
};
class pp : pc
{
	displayName = "Helicopter Pilot";
	linkedItems[] += {"ItemGPS"};
};
class pcc : pc
{
	displayName = "Helicopter Crew Chief";
	traits[] = {"engineer"};
	backpack[] = {"CUP_B_SLA_Medicbag"};
	linkedItems[] += {"ItemGPS"};
	backpackItems[] = {"ToolKit"};
};
class jp : smg
{
	displayName = "Jet pilot";
	vest[] = {"V_TacVest_blk"};
	traits[] = {"engineer"};
	uniform[] = {"CUP_U_C_Pilot_01"};
	backpack[] = {};
	headgear[] = {"CUP_H_USMC_Helmet_Pilot"};
	linkedItems[] += {"ItemGPS"};
	magazines[] =
	{
		LIST_6("CUP_20Rnd_B_765x17_Ball_M"),
		"SmokeShellPurple"
	};
};
class eng : car
{
	displayName = "Combat Engineer (Explosives)";
	traits[] = {"engineer", "explosiveSpecialist"};
	backpack[] = {"B_Kitbag_rgr"};
	vest[] = {"V_PlateCarrier3_rgr"};
	magazines[] +=
	{
		LIST_4("ClaymoreDirectionalMine_Remote_Mag")
	};
	backpackItems[] = {
		"MineDetector",
		"ToolKit",
		LIST_2("DemoCharge_Remote_Mag"),
		LIST_2("SLAMDirectionalMine_Wire_Mag")
	};
};
class engm : car
{
	displayName = "Combat Engineer (Mines)";
	traits[] = {"engineer", "explosiveSpecialist"};
	backpack[] = {"B_Kitbag_rgr"};
	vest[] = {"V_PlateCarrier3_rgr"};
	items[] +=
	{
		LIST_2("APERSBoundingMine_Range_Mag"),
		LIST_2("APERSTripMine_Wire_Mag")
	};
	backpackItems[] = {
		"MineDetector",
		"ToolKit",
		"ATMine_Range_Mag"
	};
};
class UAV : car
{
	displayName = "UAV Operator";
	traits[] = {"UAVHacker"};
	backpack[] = {"B_UAV_01_backpack_F"};
	linkedItems[] += {"B_UavTerminal"};
};
