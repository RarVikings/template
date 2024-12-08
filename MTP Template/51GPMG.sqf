//Place the following in the QM's .init in the editor 
//this addAction["<t color='#38c12e'>GPMG</t>", {player execVM "Loadouts\GPMG.sqf";}, [],8,false,false,"","_this distance _target < 10"];

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
_this addWeapon "UK3CB_BAF_L7A2";
_this addPrimaryWeaponItem "UK3CB_BAF_762_200Rnd_T";
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
	_this addItemToUniform "UK3CB_BAF_HMNVS";
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_Tourniquet";};
};	 

// Vest Items
if (_PlayerVest isEqualTo "") then {
	_this addVest "Virtus_D_4";
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_762_200Rnd_T";};	
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};}
else {
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_762_200Rnd_T";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
};

// Backpack Items
if (_PlayerBackpack isEqualTo "") then {
	_this addBackpack "mpx_daysack8";
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "ACE_Canteen";
	_this addItemToBackpack "UK3CB_BAF_762_200Rnd_T";
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
	for "_i" from 1 to 1 do {_this addItemToBackpack "ACE_Tripod";};}
	else {
	_this addBackpack "mpx_daysack8";
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "UK3CB_BAF_762_200Rnd_T";
	_this addItemToBackpack "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_MRE_BeefStew";};
	for "_i" from 1 to 1 do {_this addItemToBackpack "ACE_Tripod";};
};


// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "Rev_One";
};

//Assign Unit traits

//Hint to confirm full script Load
hint "5-1 GMPG kit successfully loaded!";
sleep 15;
hintSilent "";