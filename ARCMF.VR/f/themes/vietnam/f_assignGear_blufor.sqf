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
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16A1gl";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
    case "dc": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16A1gl";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addBackpack "usm_pack_st138_prc77";
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16A1gl";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIC
    case "m": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addBackpack "usm_pack_m5_medic";
        for "_i" from 1 to 20 do {this addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_tourniquet";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 1 do {this addItemToBackpack "ACE_salineIV_500";};
        for "_i" from 1 to 1 do {this addItemToBackpack "ACE_bloodIV_500";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_personalAidKit";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16A1gl";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: RIFLEMAN
    case "r": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "ar": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_mg_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 7 do {this addItemToVest "hlc_100Rnd_762x51_T_M60E4";};
        this addBackpack "usm_pack_762x51_ammobelts";
        for "_i" from 1 to 5 do {this addItemToBackpack "hlc_100Rnd_762x51_T_M60E4";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "hlc_lmg_m60";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "aar": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addBackpack "usm_pack_762x51_ammobelts";
        for "_i" from 1 to 5 do {this addItemToBackpack "hlc_100Rnd_762x51_T_M60E4";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: RIFLEMAN (AT)
    case "rat": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this addWeapon "rhs_weap_m72a7";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM MG TEAM LEADER
    case "mmgtl": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16A1gl";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM MG GUNNER
    case "mmgg": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_mg_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 7 do {this addItemToVest "hlc_100Rnd_762x51_T_M60E4";};
        this addBackpack "usm_pack_762x51_ammobelts";
        for "_i" from 1 to 5 do {this addItemToBackpack "hlc_100Rnd_762x51_T_M60E4";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "hlc_lmg_m60";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addBackpack "usm_pack_762x51_ammobelts";
        for "_i" from 1 to 5 do {this addItemToBackpack "hlc_100Rnd_762x51_T_M60E4";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16A1gl";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this addWeapon "rhs_weap_m72a7";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this addWeapon "rhs_weap_m72a7";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MORTAR TEAM LEADER
    case "mtrl": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16A1gl";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MORTAR GUNNER
    case "mtrg": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MORTAR ASSISTANT
    case "mtra": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: PILOT
    case "p": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_MapTools";
        this addBackpack "usm_pack_200rnd_556_bandoliers";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhsusf_mag_7x45acp_MHP";};
        this addHeadgear "usm_helmet_cvc";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: CO-PILOT
    case "cp": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addItemToUniform "ACE_MapTools";
        this addBackpack "usm_pack_200rnd_556_bandoliers";
        for "_i" from 1 to 6 do {this addItemToBackpack "rhsusf_mag_7x45acp_MHP";};
        this addHeadgear "usm_helmet_cvc";
        this addWeapon "rhsusf_weap_m1911a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: VEHICLE COMMANDER
    case "vc": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: VEHICLE DRIVER
    case "vd": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: VEHICLE GUNNER
    case "vg": {
        this forceAddUniform "usm_bdu_odg";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "usm_vest_LBE_rmp_m";
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 8 do {this addItemToVest "RH_20Rnd_556x45";};
        for "_i" from 1 to 6 do {this addItemToVest "RH_20Rnd_556x45_Red";};
        this addHeadgear "CUP_H_USArmy_Helmet_M1_Olive";
        this addWeapon "RH_M16a1";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };
};

this selectWeapon primaryWeapon this;