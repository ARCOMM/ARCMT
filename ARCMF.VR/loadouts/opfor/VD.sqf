this forceAddUniform selectRandom ["CUP_U_O_RUS_EMR_1", "CUP_U_O_RUS_EMR_2"];
for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_morphine";
this addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 2 do {this addItemToUniform "SmokeShellPurple";};
for "_i" from 1 to 3 do {this addItemToUniform "Chemlight_red";};
this addItemToUniform "ACE_IR_Strobe_Item";

this addVest "V_TacVest_oli";
for "_i" from 1 to 3 do {this addItemToVest "CUP_30Rnd_9x19_Vityaz";};

this addBackpack "B_FieldPack_green_F";
this addItemToBackpack "ToolKit";
this addItemToBackpack "ACE_EntrenchingTool";

this addHeadgear "H_Tank_black_F";

this addWeapon "CUP_smg_vityaz_vfg_top_rail";
this addPrimaryWeaponItem "optic_holosight_smg_blk_f";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "CUP_NVG_PVS14";
