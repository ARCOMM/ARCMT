this forceAddUniform selectRandom ["CUP_U_O_RUS_EMR_1", "CUP_U_O_RUS_EMR_2"];
for "_i" from 1 to 5 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_morphine";
this addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 2 do {this addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToUniform "CUP_HandGrenade_RGO";};
for "_i" from 1 to 3 do {this addItemToUniform "Chemlight_red";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACE_IR_Strobe_Item";

this addVest "CUP_V_RUS_6B45_3";
for "_i" from 1 to 2 do {this addItemToVest "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";};
for "_i" from 1 to 2 do {this addItemToVest "16Rnd_9x21_Mag";};

this addBackpack "usm_pack_762x51_ammobelts";
this addItemToBackpack "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";

this addHeadgear "CUP_H_RUS_6B47";
this addGoggles "CUP_G_PMC_RadioHeadset";

this addWeapon "CUP_lmg_Pecheneg";
this addPrimaryWeaponItem "cup_optic_pechenegscope"; //This optic has the same level of zoom as holding right click

this addWeapon "hgun_Rook40_F";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "CUP_NVG_PVS14";
