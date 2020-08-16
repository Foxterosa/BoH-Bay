//Ciudad Manaos
/var/const/access_hangar = "ACCESS_WORLD_HANGAR" //73
/datum/access/hangar
	id = access_hangar
	desc = "Hangar Deck"
	region = ACCESS_REGION_GENERAL

/var/const/access_guppy_helm = "ACCESS_WORLD_GUP_HELM" //76
/datum/access/guppy_helm
	id = access_guppy_helm
	desc = "General Utility Pod Helm"
	region = ACCESS_REGION_GENERAL

/var/const/access_expedition_shuttle_helm = "ACCESS_WORLD_EXPLO_HELM" //77
/datum/access/exploration_shuttle_helm
	id = access_expedition_shuttle_helm
	desc = "Charon Helm"
	region = ACCESS_REGION_GENERAL

/var/const/access_aquila = "ACCESS_WORLD_AQUILA" //78
/datum/access/aquila
	id = access_aquila
	desc = "NTSC Byakhee"
	region = ACCESS_REGION_GENERAL

/var/const/access_aquila_helm = "ACCESS_WORLD_AQUILA_HELM" //79
/datum/access/aquila_helm
	id = access_aquila_helm
	desc = "NTSC Byakhee Helm"
	region = ACCESS_REGION_GENERAL

/var/const/access_solgov_crew = "ACCESS_WORLD_CREW" //80
/datum/access/solgov_crew
	id = access_solgov_crew
	desc = "NanoTrasen Crew"
	region = ACCESS_REGION_GENERAL

/var/const/access_nanotrasen = "ACCESS_WORLD_CORP" //81
/datum/access/nanotrasen
	id = access_nanotrasen
	desc = "Corporate Personnel"
	region = ACCESS_REGION_RESEARCH

/var/const/access_robotics_engineering = "ACCESS_WORLD_BIOMECH"  //82
/datum/access/robotics_engineering
	id = access_robotics_engineering
	desc = "Biomechanical Engineering"
	region = ACCESS_REGION_ENGINEERING

/var/const/access_emergency_armory = "ACCESS_WORLD_ARMORY" //83
/datum/access/emergency_armory
	id = access_emergency_armory
	desc = "Emergency Armory"
	region = ACCESS_REGION_COMMAND

/var/const/access_liaison = "ACCESS_WORLD_CORPORATE_LIAISON" //84
/datum/access/liaison
	id = access_liaison
	desc = "Corporate Liaison"
	region = ACCESS_REGION_COMMAND
	access_type = ACCESS_TYPE_NONE //Ruler of their own domain, CO and RD cannot enter

/var/const/access_magistrado = "ACCESS_WORLD_ADJUDICATOR" //85
/datum/access/magistrado
	id = access_magistrado
	desc = "Magistrado"
	region = ACCESS_REGION_COMMAND
	access_type = ACCESS_TYPE_NONE //Ruler of their own domain, CO cannot enter

/var/const/access_sec_guard = "ACCESS_WORLD_SECURITY_GUARD" //86
/datum/access/sec_guard
	id = access_sec_guard
	desc = "Security Guard"
	region = ACCESS_REGION_RESEARCH

/var/const/access_gun = "ACCESS_WORLD_CANNON" //87
/datum/access/gun
	id = access_gun
	desc = "Gunnery"
	region = ACCESS_REGION_COMMAND

/var/const/access_expedition_shuttle = "ACCESS_WORLD_EXPLO" //88
/datum/access/exploration_shuttle
	id = access_expedition_shuttle
	desc = "NTEV Gaunt"
	region = ACCESS_REGION_GENERAL

/var/const/access_guppy = "ACCESS_WORLD_GUP" //89
/datum/access/guppy
	id = access_guppy
	desc = "NTRP Garuda"
	region = ACCESS_REGION_GENERAL

/var/const/access_seneng = "ACCESS_WORLD_SENIOR_ENG" //90
/datum/access/seneng
	id = access_seneng
	desc = "Senior Engineer"
	region = ACCESS_REGION_ENGINEERING

/var/const/access_senmed = "ACCESS_WORLD_SENIOR_MED" //91
/datum/access/senmed
	id = access_senmed
	desc = "Physician"
	region = ACCESS_REGION_MEDBAY

/var/const/access_senadv = "ACCESS_WORLD_SENIOR_ADVISOR" //92
/datum/access/senadv
	id = access_senadv
	desc = "Senior Enlisted Advisor"
	region = ACCESS_REGION_COMMAND

/var/const/access_explorer = "ACCESS_WORLD_EXPLORER" //93
/datum/access/explorer
	id = access_explorer
	desc = "Explorer"
	region = ACCESS_REGION_GENERAL

/var/const/access_pathfinder = "ACCESS_WORLD_PATHFINDER" //94
/datum/access/pathfinder
	id = access_pathfinder
	desc = "Pathfinder"
	region = ACCESS_REGION_GENERAL

/var/const/access_pilot = "ACCESS_WORLD_PILOT" //95
/datum/access/pilot
	id = access_pilot
	desc = "Pilot"
	region = ACCESS_REGION_GENERAL

/var/const/access_commissary = "ACCESS_WORLD_SHOP" //96
/datum/access/commissary
	id = access_commissary
	desc = "Commissary"
	region = ACCESS_REGION_GENERAL

/datum/access/psychiatrist
	desc = "Mental Health"

/datum/access/hos
	desc = "Chief of Security"

/datum/access/hop
	desc = "Executive Officer"

/datum/access/qm
	desc = "Deck Chief"

/datum/access/robotics
	region = ACCESS_REGION_ENGINEERING

/datum/access/network
	region = ACCESS_REGION_COMMAND

/var/const/access_bs = "ACCESS_WORLD_BS" //209
/datum/access/blueshield
	id = access_bs
	desc = "Blueshield"
	region = ACCESS_REGION_COMMAND

/var/const/access_bot_world = "ACCESS_BOT_WORLD" //209
/datum/access/bot_world
	id = access_bot_world
	desc = "Botánico"
	region = ACCESS_REGION_GENERAL

/var/const/access_com_world = "ACCESS_COM_WORLD" //209
/datum/access/com_world
	id = access_com_world
	desc = "Comerciante"
	region = ACCESS_REGION_GENERAL