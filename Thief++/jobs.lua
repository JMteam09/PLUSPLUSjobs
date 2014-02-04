/*---------------------------------------------------------------------------
/*---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
<TODO: INSERT URL HERE>

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------*/
TEAM_CUSTOM = AddExtraTeam("Banker", {
	color = Color(0,150,255,255),
	model = "models/player/Barney.mdl",
	description = [[Put peoples money in a safe unraidable place(faddingdoors that he creates doesn't require a keypad)]],
	weapons = {""},
	command = "Banker",
	max = 4,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin" end,
	CustomCheckFailMsg = "This Job Is Donator Only!"
})

TEAM_CUSTOM = AddExtraTeam("Police_Team_Admin", {
	color = Color(149,88,232,255),
	model = "models/player/Barney.mdl",
	description = [[We waching if everyone follows the rules]],
	weapons = {"weapon_crossbow", "weapon_rpg", "weapon_smg1"},
	command = "Police",
	max = 4,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin" end,
	CustomCheckFailMsg = "This Job Is Donator Only!"
})

TEAM_CUSTOM = AddExtraTeam("Thief", {
	color = Color(149,88,232,255),
	model = "models/player/Barney.mdl",
	description = [[Steal :P]],
	weapons = {"keypad_cracker" , "weapon_mad_knife", "lockpick"},
	command = "Thief",
	max = 10,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_CUSTOM = AddExtraTeam("Thief++", {
	color = Color(149,88,232,255),
	model = "models/player/Barney.mdl",
	description = [[STEAL with better weapons]],
	weapons = {"thief_plus" , "weapon_mad_knife", "lockpickpremium"},
	command = "Thiefplus",
	max = 999,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
    customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin" or ply:GetNWString("usergroup") == "Admin Team" end,
	CustomCheckFailMsg = "This Job Is Donator Only!"
})

TEAM_CUSTOM = AddExtraTeam("Taxi Driver", {
	color = Color(149,88,232,255),
	model = "models/player/Barney.mdl",
	description = [[You are a Taxi Driver, Your Job is to Drive People to Their Destination, (Max Payment $ 50)you may kill people if the dont pay]],
	weapons = {"weapon_mad_knife"},
	command = "Taxi",
	max = 4,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
})

TEAM_CUSTOM = AddExtraTeam("Car dealer", {
	color = Color(149,88,232,255),
	model = "models/player/Barney.mdl",
	description = [[You are a Car Dealer, Your Job is To Sell Car's to The People of The Server! Only SuperAdmin + Donator]],
	weapons = {"weapon_mad_knife"},
	command = "Car",
	max = 99,
	salary = 300,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "Donator" or ply:GetNWString("usergroup") == "superadmin" end,
	CustomCheckFailMsg = "This Job Is Donator&Admin Only!"
})

/*---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------*/
GAMEMODE.DefaultTeam = TEAM_CITIZEN

/*---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------*/
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

/*---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------*/
DarkRP.addHitmanTeam(TEAM_MOB)
