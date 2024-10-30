// Runs when the player RESPAWNS.

// Loads previously known kit *if* they saved one.

if (KitSaved isEqualTo false) then{
	hint "Player failed to save kit!";
	player setVariable ["ace_medical_medicclass",0, true];
	player setVariable ["ACE_IsEngineer",0, true];
	sleep 10;
	hintSilent "";
	}
	else {
		player setUnitLoadout (player getVariable ["Saved_Loadout",[]]);
		Player setVariable ["ACE_IsEngineer",ENGINEERLEVEL, true];
		Player setVariable ["ace_medical_medicclass",MEDICLEVEL, true];
		hint "Last Kit successfully Loaded!";
		sleep 15;
		hintSilent "";
	};
