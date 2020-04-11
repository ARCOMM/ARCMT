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

this addBackpack "ACE_NonSteerableParachute";

this addHeadgear "CUP_H_RUS_ZSH_Shield_Down";

this addWeapon "CUP_smg_vityaz_vfg_top_rail";
this addPrimaryWeaponItem "optic_holosight_smg_blk_f";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ACE_NVG_Wide";
