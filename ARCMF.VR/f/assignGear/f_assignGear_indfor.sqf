_typeofUnit = toLower (_this select 0);
_unit = _this select 1;
_isMan = _unit isKindOf "CAManBase";

if (_isMan) then {
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
};

switch (_typeofUnit) do
{
// LOADOUT: COMMANDER
	case "co":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_yellow";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		for "_i" from 1 to 4 do {this addItemToUniform "rhs_mag_M433_HEDP";};
		for "_i" from 1 to 4 do {this addItemToUniform "rhs_mag_m661_green";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle_m203";
		this addWeapon "rhsusf_weap_m9";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_yellow";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		for "_i" from 1 to 4 do {this addItemToUniform "rhs_mag_M433_HEDP";};
		for "_i" from 1 to 4 do {this addItemToUniform "rhs_mag_m661_green";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle_m203";
		this addWeapon "rhsusf_weap_m9";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: MEDIC
	case "m":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 8 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		this addBackpack "B_Kitbag_rgr";
		for "_i" from 1 to 50 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 25 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 10 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 5 do {this addItemToBackpack "ACE_bloodIV";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle";
		this addWeapon "rhsusf_weap_m9";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_yellow";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		for "_i" from 1 to 4 do {this addItemToUniform "rhs_mag_M433_HEDP";};
		for "_i" from 1 to 4 do {this addItemToUniform "rhs_mag_m661_green";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle_m203";
		this addWeapon "rhsusf_weap_m9";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: RIFLEMAN
	case "r":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle";
		this addWeapon "rhsusf_weap_m9";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 2 do {this addItemToVest "rhs_200rnd_556x45_T_SAW";};
		this addBackpack "B_Kitbag_rgr";
		for "_i" from 1 to 4 do {this addItemToBackpack "rhs_200rnd_556x45_T_SAW";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m249_pip_L";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		this addBackpack "B_Kitbag_rgr";
		for "_i" from 1 to 4 do {this addItemToBackpack "rhs_200rnd_556x45_T_SAW";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle";
		this addWeapon "rhsusf_weap_m9";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle";
		this addWeapon "tf47_at4_HEDP";
		this addWeapon "rhsusf_weap_m9";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: MEDIUM MG TEAM LEADER
	case "mmgtl":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_yellow";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		for "_i" from 1 to 4 do {this addItemToUniform "rhs_mag_M433_HEDP";};
		for "_i" from 1 to 4 do {this addItemToUniform "rhs_mag_m661_green";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle_m203";
		this addWeapon "rhsusf_weap_m9";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 2 do {this addItemToVest "rhsusf_100Rnd_762x51_m62_tracer";};
		this addBackpack "B_Kitbag_rgr";
		for "_i" from 1 to 4 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m240B";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: MEDIUM MG AMMO BEARER
	case "mmgab":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
		this addVest "MNP_Vest_Scorpion_1";
		for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		this addBackpack "B_Kitbag_rgr";
		for "_i" from 1 to 6 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
		this addHeadgear "H_HelmetSpecB_snakeskin";
		this addWeapon "rhs_weap_m4a1_carryhandle";
		this addWeapon "rhsusf_weap_m9";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: PILOT
	case "p":
	{
		this forceAddUniform "U_B_HeliPilotCoveralls";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "RH_32Rnd_9mm_HP";
		this addWeapon "RH_sbr9";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		for "_i" from 1 to 2 do {this addItemToUniform "RH_32Rnd_9mm_HP";};
		this addHeadgear "H_PilotHelmetHeli_B";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: CO-PILOT
	case "cp":
	{
		this forceAddUniform "U_B_HeliPilotCoveralls";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "RH_32Rnd_9mm_HP";
		this addWeapon "RH_sbr9";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		for "_i" from 1 to 2 do {this addItemToUniform "RH_32Rnd_9mm_HP";};
		this addHeadgear "H_CrewHelmetHeli_B";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Scorpion_2";
		for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		this addHeadgear "rhsusf_mich_bare_alt";
		this addWeapon "rhs_weap_m4a1_carryhandle";
		this addWeapon "Binocular";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Scorpion_2";
		for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		this addHeadgear "rhsusf_mich_bare_alt";
		this addWeapon "rhs_weap_m4a1_carryhandle";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		this forceAddUniform "MNP_CombatUniform_Scorpion_A";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		this addItemToUniform "ACE_EarPlugs";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Scorpion_2";
		for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
		this addHeadgear "rhsusf_mich_bare_alt";
		this addWeapon "rhs_weap_m4a1_carryhandle";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		["r", _unit] call f_fnc_assignGear;
		if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_indfor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", _unit, _typeofunit]};
   };
};

_unit selectWeapon primaryWeapon _unit;