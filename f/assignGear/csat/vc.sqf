this = _this;

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "MNP_CombatUniform_Scorpion_A";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_CableTie";
this addItemToUniform "ACE_IR_Strobe_Item";
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_an_m8hc";};
this addVest "MNP_Vest_Scorpion_2";
for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
this addHeadgear "rhsusf_mich_bare_alt";
this addWeapon "rhs_weap_m4a1_carryhandle";
this addWeapon "Binocular";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
