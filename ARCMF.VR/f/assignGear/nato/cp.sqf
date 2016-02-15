this = _this;

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "U_B_HeliPilotCoveralls";
for "_i" from 1 to 6 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_Flashlight_XL50";
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "RH_32Rnd_9mm_HP";
this addWeapon "RH_sbr9";
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m18_purple";};
for "_i" from 1 to 2 do {this addItemToUniform "RH_32Rnd_9mm_HP";};
this addHeadgear "H_CrewHelmetHeli_B";
this addWeapon "Binocular";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";
