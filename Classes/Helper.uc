class Helper extends Info;

// mutate help related stuff
static function TellAbout(String arg, PlayerController pc, FakedPlus Mut)
{
	if(arg == "")
	{
		Mut.SendMessage(pc, "%rFaked Plus Mutator");
		Mut.SendMessage(pc, "%wCommands that have ON / OFF switch: %gLOCK%w, %gSPEC%w, %gDRAMA%w,");
    Mut.SendMessage(pc, "%gADMINONLY%w, %gSOLO%w.");
		Mut.SendMessage(pc, "%wCommands that require int values: %gFAKED%w, %gHEALTH%w, %gSPEC%w,");
    Mut.SendMessage(pc, "%gReservedSlots%w, %gConfigFakes%w.");
		Mut.SendMessage(pc, "%wCommands that work as is: %gSKIP%w, %gSAVE%w, %gCREDITS%w, %gSTATUS%w.");
		Mut.SendMessage(pc, "%wIf you want to know what command does what type '%gmutate help <cmd>%w'.");
	}

  else if(arg ~= "SOLO")
	{
		Mut.SendMessage(pc, "%gSOLO");
		Mut.SendMessage(pc, "%wEnable Solo Mode. Leaves only 1 player slot.");
	}

  else if(arg ~= "ConfigFakes" || arg ~= "cf")
	{
		Mut.SendMessage(pc, "%gConfigFakes");
		Mut.SendMessage(pc, "%wChange and save config value of faked players. Works only for %rCustom%w mode!");
	}

  else if(arg ~= "ReservedSlots" || arg ~= "rs")
	{
		Mut.SendMessage(pc, "%gReservedSlots");
		Mut.SendMessage(pc, "%wChange and save config value of reserved player slots. Works only for %rCustom%w mode!");
	}

	else if(arg ~= "SKIP" || arg ~= "SKP")
	{
		Mut.SendMessage(pc, "%gSKIP");
		Mut.SendMessage(pc, "%wSkip trader time.");
	}

	else if(arg ~= "DRAMA" || arg ~= "SLOMO")
	{
		Mut.SendMessage(pc, "%gSLOMO {ON / OFF}");
		Mut.SendMessage(pc, "%wSwitch SloMo.");
	}
	
	else if(arg ~= "ADMINONLY" || arg ~= "ADMIN")
	{
		Mut.SendMessage(pc, "%gADMINONLY {ON / OFF}");
		Mut.SendMessage(pc, "%wAllow non-admin players to use commands.");
	}

	else if(arg ~= "HEALTH" || arg ~= "HP")
	{
		Mut.SendMessage(pc, "%gHEALTH <num>");
		Mut.SendMessage(pc, "%wForce zeds minimal health. Limited to 1-6.");
	}
	
	else if(arg ~= "SAVE")
	{
		Mut.SendMessage(pc, "%gSAVE");
		Mut.SendMessage(pc, "%wSave all changed config variables.");
	}

	else if(arg ~= "FAKED" || arg ~= "FAKE" || arg ~= "FAKES")
	{
		Mut.SendMessage(pc, "%gFAKED <num>");
		Mut.SendMessage(pc, "%wForce selected amount of fakes.");
	}

	else if(arg ~= "LOCK" || arg ~= "PLAYER" || arg ~= "PLAYERS")
	{
		Mut.SendMessage(pc, "%gLOCK {ON / OFF}");
		Mut.SendMessage(pc, "%gLOCK <num>");
		Mut.SendMessage(pc, "%wSet player slots.");
	}

	else if(arg ~= "SPEC" || arg ~= "SPECS" || arg ~= "SPECTATOR" || arg ~= "SPECTATORS")
	{
		Mut.SendMessage(pc, "%gSPEC {ON / OFF / DEFAULT}");
		Mut.SendMessage(pc, "%gSPEC <num>");
		Mut.SendMessage(pc, "%wSet spectator slots.");
	}
	
	else if(arg ~= "STATUS")
	{
		Mut.SendMessage(pc, "%wPrints all main settings that are currently used.");
	}
}