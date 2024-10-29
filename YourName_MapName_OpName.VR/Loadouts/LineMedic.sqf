//Place the following in the QM's .init in the editor 
//this addAction["<t color='#FF0000'>Medic</t>", {player execVM "Loadouts\Medic.sqf";}, [],8,false,false,"","_this distance _target < 10"];

//Reset Unit traits 
_this setVariable ["ace_medical_medicclass",0, true];
_this setVariable ["ACE_IsEngineer",0, true];

//Create Needed Variables
_PlayerUniform = uniform _this;
_PlayerVest = vest _this;
_PlayerBackpack = backpack _this;
_PlayerHelmet = headgear _this;


// Remove Contents of Uniform / Weapons to prevent Duping
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeBackpack _this; //Specialist ROLE!


// Give player the Basic Weapons needed (including Binos)
_this addWeapon "UK3CB_BAF_L85A3";
_this addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
_this addPrimaryWeaponItem "RKSL_optic_LDS";
_this addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
_this addPrimaryWeaponItem "UK3CB_underbarrel_acc_grippod";
_this addWeapon "rhsusf_weap_glock17g4";
_this addHandgunItem "UK3CB_BAF_9_17Rnd";
_this addWeapon "Binocular";

// Give the Player the basic needed items such as Map
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "TFAR_microdagr";
_this linkItem "TFAR_rf7800str";

// Uniform Items
if (_PlayerUniform isEqualTo "") then {
	_this forceAddUniform "QAC_UBACS_MTP";
	for "_i" from 1 to 5 do {_this addItemToUniform "ACE_CableTie";};
	_this addItemToUniform "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_EarPlugs";};
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_DAGR";
	_this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};}
else {
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_CableTie";};
	_this addItemToUniform "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_EarPlugs";};
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_DAGR";
	_this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};
};	

// Vest Items
if (_PlayerVest isEqualTo "") then {
	_this addVest "Virtus_D_4";
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_556_30Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	_this addItemToVest "ACE_EntrenchingTool";
	_this addItemToVest "UK3CB_BAF_HMNVS";
	_this addItemToVest "H2H_acc_bayo_M12";}
else {
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_556_30Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	_this addItemToVest "ACE_EntrenchingTool";
	_this addItemToVest "UK3CB_BAF_HMNVS";
	_this addItemToVest "H2H_acc_bayo_M12";
};

// Backpack Items
_this addBackpack "mpx_daysack7";
_this addItemToBackpack "ACE_surgicalKit";
_this addItemToBackpack "UK3CB_BAF_H_Beret_RA_PRR";
for "_i" from 1 to 2 do {_this addItemToBackpack "kat_atropine";};
for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 1 do {_this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 1 do {_this addItemToBackpack "ACE_Painkillers";};
for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_Tourniquet";};
for "_i" from 1 to 3 do {_this addItemToBackpack "kat_larynx";};
for "_i" from 1 to 6 do {_this addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 1 do {_this addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_IR_Strobe_Item";};

// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "Rev_One";
};

//Assign Unit traits
_this setVariable ["ace_medical_medicclass",2, true];

//Hint to confirm full script Load
hint "Medic kit successfully loaded!\n Specialist Role: Backpack changed!";
sleep 15;
hintSilent "";