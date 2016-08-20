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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhsusf_falconii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_yellow";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
    case "dc": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhsusf_falconii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_yellow";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "Laserbatteries";
        this addItemToUniform "ACE_MapTools";
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhsusf_falconii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_yellow";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Laserdesignator_03";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIC
    case "m": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_corpsman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "B_Carryall_khk";
        for "_i" from 1 to 50 do {this addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_tourniquet";};
        for "_i" from 1 to 20 do {this addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 15 do {this addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_salineIV_500";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_bloodIV_500";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_personalAidKit";};
        this addItemToBackpack "rhs_mag_m18_green";
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_red";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhsusf_falconii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_yellow";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN
    case "r": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "ar": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "acc_flashlight";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_mg";
        this addItemToVest "rhs_200rnd_556x45_T_SAW";
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_200rnd_556x45_T_SAW";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m249_pip_L_vfg";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "aar": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_200rnd_556x45_T_SAW";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN (AT)
    case "rat": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhs_weap_M136";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG TEAM LEADER
    case "mmgtl": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhsusf_falconii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_yellow";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG GUNNER
    case "mmgg": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 2 do {this addItemToVest "rhsusf_100Rnd_762x51";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m240B";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "B_Carryall_khk";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_100Rnd_762x51";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhsusf_falconii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_yellow";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "B_Carryall_khk";
        this addItemToBackpack "tf47_m3maaws_HEAT";
        this addItemToBackpack "tf47_m3maaws_HEDP";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "tf47_m3maaws";
        this addSecondaryWeaponItem "tf47_optic_m3maaws";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "B_Carryall_khk";
        for "_i" from 1 to 2 do {this addItemToBackpack "tf47_m3maaws_HEAT";};
        this addItemToBackpack "tf47_m3maaws_HEDP";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR TEAM LEADER
    case "mtrl": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addItemToUniform "ACE_RangeTable_82mm";
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhsusf_falconii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToBackpack "rhs_mag_m18_purple";
        this addItemToBackpack "rhs_mag_m18_yellow";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR GUNNER
    case "mtrg": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_RangeTable_82mm";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhs_M252_Gun_Bag";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR ASSISTANT
    case "mtra": {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_RangeTable_82mm";
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addBackpack "rhs_M252_Bipod_Bag";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: PILOT
    case "p": {
        this forceAddUniform "rhs_uniform_g3_rgr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_morphine";
        this addVest "rhsusf_spc_crewman";
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30Rnd_9x19_B_MP5";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addHeadgear "rhsusf_hgu56p";
        this addWeapon "hlc_smg_mp5a3";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: CO-PILOT
    case "cp": {
        this forceAddUniform "rhs_uniform_g3_rgr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_morphine";
        this addVest "rhsusf_spc_crewman";
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        for "_i" from 1 to 6 do {this addItemToVest "hlc_30Rnd_9x19_B_MP5";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addHeadgear "rhsusf_hgu56p_mask";
        this addWeapon "hlc_smg_mp5a3";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE COMMANDER
    case "vc": {
        this forceAddUniform "rhs_uniform_g3_rgr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addVest "rhsusf_spc_crewman";
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addHeadgear "rhsusf_cvc_green_ess";
        this addWeapon "rhs_weap_m4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: VEHICLE DRIVER
    case "vd": {
        this forceAddUniform "rhs_uniform_g3_rgr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addVest "rhsusf_spc_crewman";
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addHeadgear "rhsusf_cvc_green_ess";
        this addWeapon "rhs_weap_m4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: VEHICLE GUNNER
    case "vg": {
        this forceAddUniform "rhs_uniform_g3_rgr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        this addVest "rhsusf_spc_crewman";
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        this addItemToVest "rhsusf_mag_7x45acp_MHP";
        this addHeadgear "rhsusf_cvc_green_ess";
        this addWeapon "rhs_weap_m4_carryhandle";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
    default {
        if (_typeOfUnit != "r") then {["r", this] call f_fnc_assignGear;};
        if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_blufor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", this, _typeOfUnit]};
    };
};

this selectWeapon primaryWeapon this;