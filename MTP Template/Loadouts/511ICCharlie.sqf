//Place the following in the QM's .init in the editor 
//this addAction["<t color='#38c12e'>5-1 Charlie</t>", {player execVM "Loadouts\RecceMarksman.sqf";}, [],8,false,false,"","_this distance _target < 10"];

//Reset Unit traits 
_this setVariable ["ace_medical_medicclass",1, true];
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


// Give player the Basic Weapons needed (including Binos)
_this addWeapon "UK3CB_BAF_L129A1";
_this addPrimaryWeaponItem "H2H_acc_bayo_M12";
_this addPrimaryWeaponItem "RKSL_optic_PMII_312_sunshade";
_this addPrimaryWeaponItem "UK3CB_BAF_762_L42A1_20Rnd";
_this addPrimaryWeaponItem "UK3CB_underbarrel_acc_fgrip_bipod";
_this addPrimaryWeaponItem "UK3CB_BAF_Silencer_L115A3";
_this addWeapon "rhsusf_weap_glock17g4";
_this addHandgunItem "UK3CB_BAF_9_17Rnd";
_this addWeapon "Rangefinder";

// Give the Player the basic needed items such as Map
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "TFAR_microdagr";
_this linkItem "TFAR_rf7800str";

// Uniform Items
if (_PlayerUniform isEqualTo "") then {
	_this forceAddUniform "QAC_UBACS_MTP";
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
	

	for "_i" from 1 to 8 do {_this addItemToUniform "ACE_elasticBandage";};
	for "_i" from 1 to 8 do {_this addItemToUniform "ACE_packingBandage";};
	for "_i" from 1 to 8 do {_this addItemToUniform "ACE_quikclot";};
	_this addItemToUniform "ACE_Painkillers";
	_this addItemToUniform "kat_chestSeal";
	_this addItemToUniform "kat_guedel";
    _this addItemToUniform "ACE_epinephrine";
	_this addItemToUniform "ACE_morphine";
	_this addItemToUniform "kat_Caffeine";

    _this addItemToUniform "ACE_microDAGR";
    _this addItemToUniform "ACE_Kestrel4500";
   	_this addItemToUniform "ACE_ATragMX";
    _this addItemToUniform "ACE_RangeCard";

	_this addItemToUniform "UK3CB_BAF_HMNVS";
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_Tourniquet";};}
else {
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 8 do {_this addItemToUniform "ACE_elasticBandage";};
	for "_i" from 1 to 8 do {_this addItemToUniform "ACE_packingBandage";};
	for "_i" from 1 to 8 do {_this addItemToUniform "ACE_quikclot";};
	_this addItemToUniform "ACE_Painkillers";
	_this addItemToUniform "kat_chestSeal";
	_this addItemToUniform "kat_guedel";
    _this addItemToUniform "ACE_epinephrine";
	_this addItemToUniform "ACE_morphine";
	_this addItemToUniform "kat_Caffeine";
    _this addItemToUniform "ACE_microDAGR";
    _this addItemToUniform "ACE_Kestrel4500";
   	_this addItemToUniform "ACE_ATragMX";
    _this addItemToUniform "ACE_RangeCard";
	_this addItemToUniform "UK3CB_BAF_HMNVS";
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_Tourniquet";};
};	

// Vest Items
if (_PlayerVest isEqualTo "") then {
	_this addVest "Virtus_D_4";
    for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_762_L42A1_20Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_762_L42A1_20Rnd_T";};}
	else {
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_762_L42A1_20Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_762_L42A1_20Rnd_T";};
};

// Backpack Items
if (_PlayerBackpack isEqualTo "") then {
	_this addBackpack "mpx_daysack9";
	_this addItemToBackpack "rhsusf_acc_premier_anpvs27";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellBlue";
	_this addItemToBackpack "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShellPurple";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShellRed";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShellGreen";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd_T";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShell";};
	_this addItemToBackpack "kat_accuvac";
	_this addItemToBackpack "ACE_surgicalKit";
	for "_i" from 1 to 4 do {_this addItemToBackpack "kat_larynx";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "kat_amiodarone";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "kat_atropine";};
	for "_i" from 1 to 6 do {_this addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "kat_chestSeal";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_splint";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_salineIV_250";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "kat_naloxone";};
	
	_this addItemToBackpack "ACE_EntrenchingTool";}


else {
	_this addBackpack "mpx_daysack9";
	_this addItemToBackpack "rhsusf_acc_premier_anpvs27";
	_this addItemToBackpack "UK3CB_BAF_SmokeShellBlue";
	_this addItemToBackpack "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShellPurple";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShellRed";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShellGreen";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd_T";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "UK3CB_BAF_SmokeShell";};
	_this addItemToBackpack "kat_accuvac";
	_this addItemToBackpack "ACE_surgicalKit";
	for "_i" from 1 to 4 do {_this addItemToBackpack "kat_larynx";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "kat_amiodarone";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "kat_atropine";};
	for "_i" from 1 to 6 do {_this addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "kat_chestSeal";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_splint";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_salineIV_250";};
	for "_i" from 1 to 3 do {_this addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "kat_naloxone";};

	_this addItemToBackpack "ACE_EntrenchingTool";
};
// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "Rev_One";
};

//Assign Unit traits

//Hint to confirm full script Load
hint "5-1 Charlie kit successfully loaded!";
sleep 15;
hintSilent "";
