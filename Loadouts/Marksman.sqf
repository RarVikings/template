//Place the following in the QM's .init in the editor 
//this addAction["<t color='#FF0000'>Marksman</t>", {player execVM "Loadouts\Marksman.sqf";}, [],8,false,false,"","_this distance _target < 10"];

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


// Give player the Basic Weapons needed (including Binos)
_this addWeapon "UK3CB_BAF_L129A1";
_this addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
_this addPrimaryWeaponItem "UK3CB_BAF_TA648_308";
_this addPrimaryWeaponItem "UK3CB_BAF_762_L42A1_20Rnd";
_this addPrimaryWeaponItem "UK3CB_underbarrel_acc_fgrip_bipod";
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
	_this forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	_this addItemToUniform "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_EarPlugs";};
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_DAGR";
	_this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};}
else {
	for "_i" from 1 to 4 do {_this addItemToUniform "ACE_CableTie";};
	_this addItemToUniform "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_EarPlugs";};
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};
};	

// Vest Items
if (_PlayerVest isEqualTo "") then {
	_this addVest "mpx_virtus_p";
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_762_L42A1_20Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_762_L42A1_20Rnd_T";};}
	else {
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_762_L42A1_20Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_762_L42A1_20Rnd_T";};
};

// Backpack Items
if (_PlayerBackpack isEqualTo "") then {
	_this addBackpack "mpx_camel";
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "UK3CB_BAF_HMNVS";
	_this addItemToBackpack "H2H_acc_bayo_M12";
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_Tourniquet";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_m67";};
	_this addItemToBackpack "ACE_epinephrine";
	_this addItemToBackpack "ACE_morphine";
	_this addItemToBackpack "ACE_bodyBag";
	_this addItemToBackpack "UK3CB_BAF_Silencer_L115A3";
	_this addItemToBackpack "UK3CB_BAF_Kite";}
	else {
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "UK3CB_BAF_HMNVS";
	_this addItemToBackpack "H2H_acc_bayo_M12";
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_Tourniquet";};
	for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_mag_m67";};
	_this addItemToBackpack "ACE_epinephrine";
	_this addItemToBackpack "ACE_morphine";
	_this addItemToBackpack "ACE_bodyBag";
	_this addItemToBackpack "UK3CB_BAF_Silencer_L115A3";
	_this addItemToBackpack "UK3CB_BAF_Kite";
};

// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "mpx_cobra_catseyes";
};

//Assign Unit traits

//Hint to confirm full script Load
hint "Marksman kit successfully loaded!";
sleep 15;
hintSilent "";
