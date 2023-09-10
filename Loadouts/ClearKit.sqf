// REMOVE ALL KIT
// Place the following in the QM's .init
// this addAction["<t color='#E3E300'>Clear Kit</t>", {player execVM "Loadouts\ClearKit.sqf";}, [],10,false,false,"","_this distance _target < 10"];

//Reset Unit traits 
_this setVariable ["ace_medical_medicclass",0, true];
_this setVariable ["ACE_IsEngineer",0, true];


// Removes all Gear
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

// Hint to confirm full script Load
hint "Kit cleared";
sleep 15;
hintSilent "";