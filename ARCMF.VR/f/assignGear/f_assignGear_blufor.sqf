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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
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
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "RH_peq15";
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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
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
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "RH_peq15";
        this addWeapon "rhsusf_weap_m9";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
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
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "RH_peq15";
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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToUniform "rhs_mag_an_m8hc";};
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spc_corpsman";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 50 do {this addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 25 do {this addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_bloodIV";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
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
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "RH_peq15";
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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "ar":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        this addVest "rhsusf_spc_mg";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_200rnd_556x45_T_SAW";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_200rnd_556x45_T_SAW";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m249_pip_L";
        this addPrimaryWeaponItem "rhsusf_acc_eotech_552";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "aar":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_200rnd_556x45_T_SAW";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: RIFLEMAN (AT)
    case "rat":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
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
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "RH_peq15";
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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 2 do {this addItemToVest "rhsusf_100Rnd_762x51_m62_tracer";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m240B";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
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
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle_M203";
        this addPrimaryWeaponItem "RH_peq15";
        this addWeapon "rhsusf_weap_m9";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 6 do {this addItemToBackpack "tf47_smaw_SR";};
        this addItemToBackpack "tf47_smaw_HEAA";
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
        this addWeapon "tf47_smaw_green";
        this addSecondaryWeaponItem "tf47_optic_smaw";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addBackpack "rhsusf_assault_eagleaiii_coy";
        for "_i" from 1 to 2 do {this addItemToBackpack "tf47_smaw_HEAA";};
        for "_i" from 1 to 6 do {this addItemToBackpack "tf47_smaw_SR";};
        this addHeadgear "rhsusf_lwh_helmet_marpatwd_headset";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
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
        this addVest "V_TacVest_blk";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m18_purple";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
        this addHeadgear "H_PilotHelmetHeli_B";
        this addWeapon "rhs_weap_m4a1_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
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
        this addVest "V_TacVest_blk";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m18_purple";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
        this addHeadgear "H_PilotHelmetHeli_B";
        this addWeapon "rhs_weap_m4a1_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        this addVest "rhsusf_spc_squadleader";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addHeadgear "rhsusf_mich_bare_alt";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
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
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addHeadgear "rhsusf_mich_bare_alt";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };
    
// LOADOUT: VEHICLE GUNNER
    case "vg":
    {
        this forceAddUniform "rhs_uniform_FROG01_wd";
        for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_IR_Strobe_Item";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_EarPlugs";
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
        for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
        this addVest "rhsusf_spc_rifleman";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
        this addHeadgear "rhsusf_mich_bare_alt";
        this addWeapon "rhs_weap_m16a4_carryhandle";
        this addPrimaryWeaponItem "RH_peq15";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
    default
    {
        if (_typeOfUnit != "r") then {["r", this] call f_fnc_assignGear;};
        if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_blufor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", this, _typeOfUnit]};
    };
};

this selectWeapon primaryWeapon this;