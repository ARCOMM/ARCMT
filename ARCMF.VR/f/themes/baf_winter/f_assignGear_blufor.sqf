this = _this;

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
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        for "_i" from 1 to 5 do {this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2_UGL";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
    case "dc": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        for "_i" from 1 to 5 do {this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2_UGL";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        for "_i" from 1 to 5 do {this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2_UGL";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: MEDIC
    case "m": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addBackpack "UK3CB_BAF_B_Kitbag_Arctic";
        for "_i" from 1 to 25 do {this addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_tourniquet";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_salineIV_500";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_personalAidKit";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        for "_i" from 1 to 5 do {this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2_UGL";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: RIFLEMAN
    case "r": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "ar": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 3 do {this addItemToVest "UK3CB_BAF_556_100Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L110A3";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "aar": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addBackpack "UK3CB_BAF_B_Kitbag_Arctic";
        for "_i" from 1 to 4 do {this addItemToBackpack "UK3CB_BAF_556_100Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: RIFLEMAN (AT)
    case "rat": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this addWeapon "rhs_weap_m72a7";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM MG TEAM LEADER
    case "mmgtl": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        for "_i" from 1 to 5 do {this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2_UGL";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: MEDIUM MG GUNNER
    case "mmgg": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "UK3CB_BAF_762_100Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L7A2";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addBackpack "UK3CB_BAF_B_Kitbag_Arctic";
        for "_i" from 1 to 4 do {this addItemToBackpack "UK3CB_BAF_762_100Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        for "_i" from 1 to 5 do {this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2_UGL";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this addWeapon "rhs_weap_m72a7";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
   };

// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this addWeapon "rhs_weap_m72a7";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MORTAR TEAM LEADER
    case "mtrl": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        for "_i" from 1 to 5 do {this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2_UGL";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: MORTAR GUNNER
    case "mtrg": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MORTAR ASSISTANT
    case "mtra": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: PILOT
    case "p": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m18_purple";};
        for "_i" from 1 to 4 do {this addItemToVest "ACE_HandFlare_Green";};
        this addHeadgear "UK3CB_BAF_H_PilotHelmetHeli_A";
        this addWeapon "UK3CB_BAF_L22";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: CO-PILOT
    case "cp": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m18_purple";};
        for "_i" from 1 to 4 do {this addItemToVest "ACE_HandFlare_Green";};
        this addHeadgear "UK3CB_BAF_H_PilotHelmetHeli_A";
        this addWeapon "UK3CB_BAF_L22";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE COMMANDER
    case "vc": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        for "_i" from 1 to 5 do {this addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
        for "_i" from 1 to 5 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2_UGL";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: VEHICLE DRIVER
    case "vd": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: VEHICLE GUNNER
    case "vg": {
        this forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_tourniquet";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_Flashlight_XL50";
        this addVest "UK3CB_BAF_V_Osprey_Winter";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 6 do {this addItemToVest "UK3CB_BAF_556_30Rnd";};
        for "_i" from 1 to 4 do {this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
        this addHeadgear "UK3CB_BAF_H_Mk7_Win_ESS_A";
        this addGoggles "UK3CB_BAF_G_Balaclava_Win";
        this addWeapon "UK3CB_BAF_L85A2";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
   };
};

this selectWeapon primaryWeapon this;