// Save the players kit on scroll wheel action
// this addAction["<t color='#008322'>SAVE KIT</t>", {player execVM "Loadouts\SaveKit.sqf";}, [],7,false,false,"","_this distance _target < 10"];

player setVariable ["Saved_Loadout",getUnitLoadout player];
MEDICLEVEL = player getVariable "ace_medical_medicclass";
ENGINEERLEVEL = player getVariable "ACE_IsEngineer";
KitSaved = true;
hint "Kit Succesfully Saved";
sleep 15;
hintSilent "";
