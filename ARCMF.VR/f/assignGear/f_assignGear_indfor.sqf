removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

switch (_typeOfUnit) do
{
// LOADOUT: COMMANDER
	case "co":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36VAG36";
		this addPrimaryWeaponItem "RH_LTdocterl";
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
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36VAG36";
		this addPrimaryWeaponItem "RH_LTdocterl";
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
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		this addBackpack "B_Kitbag_rgr";
		for "_i" from 1 to 30 do {this addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {this addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 30 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 30 do {this addItemToBackpack "ACE_morphine";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36V";
		this addPrimaryWeaponItem "RH_LTdocterl";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36VAG36";
		this addPrimaryWeaponItem "RH_LTdocterl";
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
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36V";
		this addPrimaryWeaponItem "RH_LTdocterl";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 6 do {this addItemToVest "RH_60Rnd_556x45_M855A1";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "RH_M27IAR";
		this addPrimaryWeaponItem "RH_LTdocterl";
		this addPrimaryWeaponItem "RH_HBLM";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		this addBackpack "B_Kitbag_rgr";
		for "_i" from 1 to 8 do {this addItemToBackpack "RH_60Rnd_556x45_M855A1";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36V";
		this addPrimaryWeaponItem "RH_LTdocterl";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36V";
		this addPrimaryWeaponItem "RH_LTdocterl";
		this addWeapon "tf47_at4_heat";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: MEDIUM MG TEAM LEADER
	case "mmgtl":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36VAG36";
		this addPrimaryWeaponItem "RH_LTdocterl";
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
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 2 do {this addItemToVest "rhsusf_100Rnd_762x51_m62_tracer";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "rhs_weap_m240B_CAP";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: MEDIUM MG AMMO BEARER
	case "mmgab":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		this addBackpack "B_Kitbag_rgr";
		for "_i" from 1 to 8 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
		this addHeadgear "MNP_Helmet_Germany";
		this addWeapon "hlc_rifle_G36V";
		this addPrimaryWeaponItem "RH_LTdocterl";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: PILOT
	case "p":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		for "_i" from 1 to 3 do {this addItemToUniform "hlc_30Rnd_9x19_B_MP5";};
		this addHeadgear "MNP_Helmet_Dslyecxi";
		this addWeapon "hlc_smg_mp5a3";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ACE_Altimeter";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: CO-PILOT
	case "cp":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		for "_i" from 1 to 3 do {this addItemToUniform "hlc_30Rnd_9x19_B_MP5";};
		this addHeadgear "MNP_Helmet_Dslyecxi";
		this addWeapon "hlc_smg_mp5a3";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ACE_Altimeter";
		this linkItem "ItemGPS";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
		this addHeadgear "rhsusf_bowman_cap";
		this addWeapon "hlc_rifle_G36VAG36";
		this addPrimaryWeaponItem "RH_LTdocterl";
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
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		this addHeadgear "rhsusf_bowman_cap";
		this addWeapon "hlc_rifle_G36V";
		this addPrimaryWeaponItem "RH_LTdocterl";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};
	
// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		this forceAddUniform "MNP_CombatUniform_Germany";
		for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "ACE_CableTie";
		this addItemToUniform "ACE_IR_Strobe_Item";
		this addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
		this addVest "MNP_Vest_Germany_2";
		for "_i" from 1 to 12 do {this addItemToVest "hlc_100rnd_556x45_EPR_G36";};
		this addHeadgear "rhsusf_bowman_cap";
		this addWeapon "hlc_rifle_G36V";
		this addPrimaryWeaponItem "RH_LTdocterl";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "rhsusf_ANPVS_15";
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
	default
	{
		["r", this] call f_fnc_assignGear;
		if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_indfor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", this, _typeOfUnit]};
	};
};

this selectWeapon primaryWeapon this;