removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

switch (_typeOfUnit) do {
// LOADOUT: COMMANDER
    case "co": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 6 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_AssaultPack_blk";
        for "_i" from 1 to 4 do {this addItemToBackpack "hlc_30rnd_556x45_EPR_G36";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36VAG36";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
    case "dc": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 6 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_AssaultPack_blk";
        for "_i" from 1 to 4 do {this addItemToBackpack "hlc_30rnd_556x45_EPR_G36";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36VAG36";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "Laserbatteries";
        this addItemToUniform "ACE_MapTools";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 6 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_AssaultPack_blk";
        for "_i" from 1 to 4 do {this addItemToBackpack "hlc_30rnd_556x45_EPR_G36";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36VAG36";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this addWeapon "Laserdesignator_03";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIC
    case "m": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_Kitbag_rgr";
        for "_i" from 1 to 50 do {this addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 20 do {this addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 15 do {this addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_bloodIV_500";};
        this addItemToBackpack "rhs_mag_m18_green";
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_red";
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 6 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_AssaultPack_blk";
        for "_i" from 1 to 4 do {this addItemToBackpack "hlc_30rnd_556x45_EPR_G36";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36VAG36";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN
    case "r": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "ar": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 5 do {this addItemToVest "RH_60Rnd_556x45_M855A1";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_Kitbag_rgr";
        for "_i" from 1 to 5 do {this addItemToBackpack "RH_60Rnd_556x45_M855A1";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "RH_M27IAR";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addPrimaryWeaponItem "RH_HBLM";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "aar": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_Kitbag_rgr";
        for "_i" from 1 to 7 do {this addItemToBackpack "RH_60Rnd_556x45_M855A1";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN (AT)
    case "rat": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhs_weap_M136";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG TEAM LEADER
    case "mmgtl": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 6 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_AssaultPack_blk";
        for "_i" from 1 to 4 do {this addItemToBackpack "hlc_30rnd_556x45_EPR_G36";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36VAG36";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG GUNNER
    case "mmgg": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 2 do {this addItemToVest "rhsusf_100Rnd_762x51";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "B_Carryall_oli";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "rhs_weap_m240B";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_Carryall_oli";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_100Rnd_762x51";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 6 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_AssaultPack_blk";
        for "_i" from 1 to 4 do {this addItemToBackpack "hlc_30rnd_556x45_EPR_G36";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36VAG36";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_Carryall_oli";
        this addItemToBackpack "rhs_mag_smaw_HEAA";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_smaw_SR";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhs_weap_smaw";
        this addSecondaryWeaponItem "rhs_weap_optic_smaw";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_Carryall_oli";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_smaw_HEAA";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_smaw_SR";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR TEAM LEADER
    case "mtrl": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addItemToUniform "ACE_RangeTable_82mm";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 6 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "B_AssaultPack_blk";
        for "_i" from 1 to 4 do {this addItemToBackpack "hlc_30rnd_556x45_EPR_G36";};
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36VAG36";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR GUNNER
    case "mtrg": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "rhs_M252_Gun_Bag";
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR ASSISTANT
    case "mtra": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "MNP_Vest_Germany_2";
        for "_i" from 1 to 10 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addBackpack "rhs_M252_Bipod_Bag";
        this addHeadgear "MNP_Helmet_Germany";
        this addWeapon "hlc_rifle_G36V";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addPrimaryWeaponItem "RH_LTdocterl";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: PILOT
    case "p": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_morphine";
        this addVest "V_TacVest_blk";
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30Rnd_9x19_B_MP5";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addHeadgear "MNP_Helmet_Dslyecxi";
        this addWeapon "hlc_smg_mp5a3";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: CO-PILOT
    case "cp": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_morphine";
        this addVest "V_TacVest_blk";
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30Rnd_9x19_B_MP5";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addHeadgear "MNP_Helmet_Dslyecxi";
        this addWeapon "hlc_smg_mp5a3";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE COMMANDER
    case "vc": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addVest "V_TacVest_oli";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addHeadgear "rhsusf_cvc_green_helmet";
        this addWeapon "hlc_rifle_G36C";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
        this addWeapon "rhsusf_weap_glock17g4";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE DRIVER
    case "vd": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addVest "V_TacVest_oli";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addHeadgear "rhsusf_cvc_green_helmet";
        this addWeapon "hlc_rifle_G36C";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE GUNNER
    case "vg": {
        this forceAddUniform "MNP_CombatUniform_Germany";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addVest "V_TacVest_oli";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30rnd_556x45_EPR_G36";};
        this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addHeadgear "rhsusf_cvc_green_helmet";
        this addWeapon "hlc_rifle_G36C";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
        this addWeapon "rhsusf_weap_glock17g4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
    default {
        if (_typeOfUnit != "r") then {["r", this] call f_fnc_assignGear;};
        if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_indfor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", this, _typeOfUnit]};
    };
};

this selectWeapon primaryWeapon this;