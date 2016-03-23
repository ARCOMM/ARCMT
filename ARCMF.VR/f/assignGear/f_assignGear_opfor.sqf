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
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addBackpack "rhs_assault_umbts_engineer_empty";
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_white";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_green";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_yellow";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103_gp25";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this addWeapon "rhs_pdu4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
    case "dc":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addBackpack "rhs_assault_umbts_engineer_empty";
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_white";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_green";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_yellow";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103_gp25";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this addWeapon "rhs_pdu4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addBackpack "rhs_assault_umbts_engineer_empty";
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_white";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_green";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_yellow";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103_gp25";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this addWeapon "rhs_pdu4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: MEDIC
    case "m":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 30 do {this addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 30 do {this addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 30 do {this addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_bloodIV_500";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addBackpack "rhs_assault_umbts_engineer_empty";
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_white";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_green";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_yellow";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103_gp25";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this addWeapon "rhs_pdu4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: RIFLEMAN
    case "r":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "ar":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rgo";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_100Rnd_762x54mmR_green";};
        this addBackpack "rhs_assault_umbts";
        this addItemToBackpack "rhs_100Rnd_762x54mmR_green";
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_pkp";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "aar":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN (AT)
    case "rat":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_rpg26";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM MG TEAM LEADER
    case "mmgtl":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addBackpack "rhs_assault_umbts_engineer_empty";
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_white";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_green";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_yellow";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103_gp25";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this addWeapon "rhs_pdu4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM MG GUNNER
    case "mmgg":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rgo";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_100Rnd_762x54mmR_green";};
        this addBackpack "rhs_assault_umbts";
        this addItemToBackpack "rhs_100Rnd_762x54mmR_green";
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_pkp";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        this addBackpack "rhs_assault_umbts_engineer_empty";
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_VOG25";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_white";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VG40OP_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_green";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_red";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_nspn_yellow";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_30Rnd_762x39mm";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103_gp25";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this addWeapon "rhs_pdu4";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_rpg7_PG7VR_mag";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_2dpZenit";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_rpg7";
        this addSecondaryWeaponItem "rhs_acc_pgo7v";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addBackpack "rhs_assault_umbts";
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_rpg7_PG7VR_mag";};
        this addHeadgear "rhs_6b26_bala_green";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: PILOT
    case "p":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_nspn_green";};
        this addHeadgear "rhs_zsh7a_mike";
        this addWeapon "rhs_weap_ak74m";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ACE_Altimeter";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: CO-PILOT
    case "cp":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_545x39_AK";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_nspn_green";};
        this addHeadgear "rhs_zsh7a_mike";
        this addWeapon "rhs_weap_ak74m";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ACE_Altimeter";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: VEHICLE COMMANDER
    case "vc":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addHeadgear "rhs_tsh4";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
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
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addHeadgear "rhs_tsh4";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: VEHICLE GUNNER
    case "vg":
    {
        this forceAddUniform "rhs_uniform_msv_emr";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_Flashlight_KSF1";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_EarPlugs";
        this addItemToUniform "ACE_CableTie";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x19_17";};
        this addVest "rhs_6b23_digi_6sh92_headset";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgo";};
        for "_i" from 1 to 8 do {this addItemToVest "rhs_30Rnd_762x39mm";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
        this addHeadgear "rhs_tsh4";
        this addWeapon "rhs_weap_ak103";
        this addPrimaryWeaponItem "rhs_acc_1p63";
        this addWeapon "rhs_weap_pya";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
    default
    {
        ["r", this] call f_fnc_assignGear;
        if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_blufor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", this, _typeOfUnit]};
    };
};

this selectWeapon primaryWeapon this;