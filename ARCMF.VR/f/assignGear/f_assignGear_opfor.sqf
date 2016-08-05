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
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_digi_6sh92_vog_headset";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_VOG25";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_GRD40_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103_gp25";
        this addWeapon "rhs_weap_pya";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
    case "dc": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_digi_6sh92_vog_headset";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_VOG25";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_GRD40_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103_gp25";
        this addWeapon "rhs_weap_pya";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "Laserbatteries";
        this addItemToUniform "ACE_MapTools";
        this addVest "rhs_6b23_digi_6sh92_vog_headset";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_VOG25";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_GRD40_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103_gp25";
        this addWeapon "rhs_weap_pya";
        this addWeapon "Laserdesignator_03";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIC
    case "m": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
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
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_digi_6sh92_vog_headset";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_VOG25";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_GRD40_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103_gp25";
        this addWeapon "rhs_weap_pya";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN
    case "r": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "ar": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 7 do {this addItemToVest "hlc_45Rnd_545x39_t_rpk";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 10 do {this addItemToBackpack "hlc_45Rnd_545x39_t_rpk";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "hlc_rifle_rpk74n";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "aar": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 7 do {this addItemToBackpack "hlc_45Rnd_545x39_t_rpk";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN (AT)
    case "rat": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_rpg26";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG TEAM LEADER
    case "mmgtl": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addVest "rhs_6b23_digi_6sh92_vog_headset";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_VOG25";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_GRD40_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103_gp25";
        this addWeapon "rhs_weap_pya";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG GUNNER
    case "mmgg": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addItemToVest "rhs_100Rnd_762x54mmR";
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
        this addItemToBackpack "rhs_100Rnd_762x54mmR";
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_pkp";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addVest "rhs_6b23_digi_6sh92_vog_headset";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_VOG25";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_GRD40_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103_gp25";
        this addWeapon "rhs_weap_pya";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 3 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "B_Carryall_oli";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_rpg7_PG7VL_mag";};
        this addItemToBackpack "rhs_rpg7_OG7V_mag";
        this addItemToBackpack "rhs_rpg7_TBG7V_mag";
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_rpg7";
        this addSecondaryWeaponItem "rhs_acc_pgo7v";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "B_Carryall_oli";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_rpg7_PG7VL_mag";};
        this addItemToBackpack "rhs_rpg7_OG7V_mag";
        this addItemToBackpack "rhs_rpg7_TBG7V_mag";
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR TEAM LEADER
    case "mtrl": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_MapTools";
        this addItemToUniform "ACE_RangeTable_82mm";
        this addVest "rhs_6b23_digi_6sh92_vog_headset";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToVest "rhs_VOG25";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_GRD40_White";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        this addItemToVest "rhs_mag_9x19_17";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103_gp25";
        this addWeapon "rhs_weap_pya";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR GUNNER
    case "mtrg": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_RangeTable_82mm";
        this addItemToUniform "rhs_mag_9x19_17";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_M252_Gun_Bag";
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MORTAR ASSISTANT
    case "mtra": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_EntrenchingTool";
        this addItemToUniform "ACE_RangeTable_82mm";
        this addItemToUniform "rhs_mag_9x19_17";
        this addVest "rhs_6b23_6sh116_od";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_black";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
        this addBackpack "rhs_M252_Bipod_Bag";
        this addHeadgear "rhs_6b7_1m_emr_ess_bala";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: PILOT
    case "p": {
        this forceAddUniform "rhs_uniform_gorka_r_g";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_morphine";
        this addVest "rhs_6b23_crew";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addItemToVest "rhs_mag_9x19_17";
        this addHeadgear "rhs_zsh7a_mike_green";
        this addWeapon "rhs_weap_ak74m_folded";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: CO-PILOT
    case "cp": {
        this forceAddUniform "rhs_uniform_gorka_r_g";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_morphine";
        this addVest "rhs_6b23_crew";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addItemToVest "rhs_mag_9x19_17";
        this addHeadgear "rhs_zsh7a_mike_green";
        this addWeapon "rhs_weap_ak74m_folded";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE COMMANDER
    case "vc": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addVest "rhs_6b23_crew";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addItemToVest "rhs_mag_9x19_17";
        this addHeadgear "rhs_tsh4";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
       this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE DRIVER
    case "vd": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addVest "rhs_6b23_crew";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addItemToVest "rhs_mag_9x19_17";
        this addHeadgear "rhs_tsh4";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE GUNNER
    case "vg": {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addVest "rhs_6b23_crew";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addItemToVest "rhs_mag_m18_green";
        this addItemToVest "rhs_mag_m18_red";
        this addItemToVest "rhs_mag_9x19_17";
        this addHeadgear "rhs_tsh4";
        this addWeapon "rhs_weap_ak103";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
    default {
        if (_typeOfUnit != "r") then {["r", this] call f_fnc_assignGear;};
        if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_blufor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", this, _typeOfUnit]};
    };
};

this selectWeapon primaryWeapon this;