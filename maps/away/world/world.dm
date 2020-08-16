#define WEBHOOK_SUBMAP_LOADED_WORLD "webhook_submap_world"

#include "world_areas.dm"

/datum/map_template/ruin/away_site/world
	name = "Ciudad Manaos"
	id = "awaysite_world"
	description = "Una ciudad tranquila para trabajar y relajarse."
	suffixes = list("world/world-1.dmm", "world/world-2.dmm")
	cost = 0.5

/obj/effect/submap_landmark/joinable_submap/world
	name = "Ciudad Manaos"
	archetype = /decl/submap_archetype/world

/obj/effect/submap_landmark/spawnpoint/omj_world
	name = "Medico en Jefe"
/obj/effect/submap_landmark/spawnpoint/med_world
	name = "Medico"
/obj/effect/submap_landmark/spawnpoint/quim_world
	name = "Quimico"
/obj/effect/submap_landmark/spawnpoint/psi_world
	name = "Psiquiatra"

/obj/effect/submap_landmark/spawnpoint/opj_world
	name = "Oficial de Policia en Jefe"
/obj/effect/submap_landmark/spawnpoint/pol_world
	name = "Policia"
/obj/effect/submap_landmark/spawnpoint/det_world
	name = "Detective"

/obj/effect/submap_landmark/spawnpoint/bar_world
	name = "Bartender"
/obj/effect/submap_landmark/spawnpoint/coc_world
	name = "Cocinero"
/obj/effect/submap_landmark/spawnpoint/bot_world
	name = "Botanico"
/obj/effect/submap_landmark/spawnpoint/jan_world
	name = "Conserje"
/obj/effect/submap_landmark/spawnpoint/cap_world
	name = "Capellán"
/obj/effect/submap_landmark/spawnpoint/abo_world
	name = "Abogado"
/obj/effect/submap_landmark/spawnpoint/ciu_world
	name = "Ciudadano"
/obj/effect/submap_landmark/spawnpoint/com_world
	name = "Comerciante"

/obj/effect/submap_landmark/spawnpoint/min_world
	name = "Minero"
/obj/effect/submap_landmark/spawnpoint/car_world
	name = "Tecnico de cargo"
/obj/effect/submap_landmark/spawnpoint/qm_world
	name = "Intendente de cargo"

/obj/effect/submap_landmark/spawnpoint/oij_world
	name = "Ingeniero en Jefe"
/obj/effect/submap_landmark/spawnpoint/ing_world
	name = "Ingeniero"

/obj/effect/submap_landmark/spawnpoint/mag_world
	name = "Magistrado"
/obj/effect/submap_landmark/spawnpoint/alc_world
	name = "Alcalde"
/obj/effect/submap_landmark/spawnpoint/bs_world
	name = "Blueshield"

/obj/effect/submap_landmark/spawnpoint/ocj_world
	name = "Cientifico en Jefe"
/obj/effect/submap_landmark/spawnpoint/cie_world
	name = "Cientifico"
/obj/effect/submap_landmark/spawnpoint/rob_world
	name = "Robotista"


/decl/webhook/submap_loaded/world
	id = WEBHOOK_SUBMAP_LOADED_WORLD

/decl/submap_archetype/world
	descriptor = "Ciudad Manaos"
	map = "Ciudad Manaos"
	crew_jobs = list(
		/datum/job/submap/comando/alcalde/alc_world,
		/datum/job/submap/comando/magistrado/mag_world,
		/datum/job/submap/comando/blueshield/bs_world,
		/datum/job/submap/hospital/jefe/omj_world,
		/datum/job/submap/hospital/med_world,
		/datum/job/submap/hospital/quimica/quim_world,
		/datum/job/submap/hospital/psicologo/psi_world,
		/datum/job/submap/policia/jefe/opj_world,
		/datum/job/submap/policia/pol_world,
		/datum/job/submap/policia/detective/det_world,
		/datum/job/submap/ingenieria/jefe/oij_world,
		/datum/job/submap/ingenieria/ing_world,
		/datum/job/submap/ciencias/jefe/ocj_world,
		/datum/job/submap/ciencias/cientifico/cie_world,
		/datum/job/submap/ciencias/robotista/rob_world,
		/datum/job/submap/cargo/jefe/qm_world,
		/datum/job/submap/cargo/car_world,
		/datum/job/submap/cargo/mineria/min_world,
		/datum/job/submap/service/janitor/jan_world,
		/datum/job/submap/service/cocinero/coc_world,
		/datum/job/submap/service/bartender/bar_world,
		/datum/job/submap/service/capellan/cap_world,
		/datum/job/submap/service/botanico/bot_world,
		/datum/job/submap/service/comerciante/com_world,
		/datum/job/submap/service/abogado/abo_world,
		/datum/job/submap/service/civil/civ_world
	)
	call_webhook = WEBHOOK_SUBMAP_LOADED_WORLD



//Hospital
/datum/job/submap/hospital/jefe/omj_world
	title = "Medico en Jefe"
	supervisors = "el Alcalde"
	total_positions = 1
	economic_power = 1
	selection_color = "#013d3b"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/omj_world
	alt_titles = list(
		"Jefe de Medicina",
		"Director Medico"
		)
	info = "Te encargas de administrar el Hospital, asi tambien como organizarlo y a su personal."
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
						SKILL_DEVICES     = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 30
	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_heads,
			            access_chapel_office, access_crematorium, access_chemistry, access_virology,
			            access_cmo, access_surgery, access_RC_announce, access_keycard_auth, access_psychiatrist,
			            access_medical_equip, access_solgov_crew, access_senmed, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)


/datum/job/submap/hospital/med_world
	title = "Medico/a"
	supervisors = "el Medico en Jefe"
	total_positions = 4
	economic_power = 1
	selection_color = "#026865"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/med_world
	alt_titles = list(
		"Cirujano/a",
		"Enfermero/a",
		"Estudiante de medicina",
		"Paramedico/a"
		)
	info = "Te encargas tratar a las personas que necesiten asistencia médica."
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20
	access = list(access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
			            access_crematorium, access_chemistry, access_surgery,
			            access_medical_equip, access_solgov_crew, access_senmed, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)


/datum/job/submap/hospital/quimica/quim_world
	title = "Quimico/a"
	supervisors = "el Medico en Jefe"
	total_positions = 2
	economic_power = 1
	selection_color = "#026865"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/quim_world
	alt_titles = list(
		"Farmaceutico/a",
		"Tecnico/a de laboratorio"
		)
	info = "Eres un Quimico. Haces medicina y trabajas en el laboratorio de medicina. No eres un doctor o un medico, pero tienes conocimientos basicos en esos campos. No deberias de tratar pacientes si no, proporcionar la medicina necesaria para hacerlo. sigues las ordenes de los Medicos y Tecnicos Medicos."
	min_skill = list(   SKILL_MEDICAL   = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_ADEPT,
						SKILL_ANATOMY	  = SKILL_ADEPT,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 16
	access = list(access_medical, access_maint_tunnels, access_emergency_storage, access_medical_equip, access_solgov_crew, access_chemistry,
	 						access_virology, access_morgue, access_crematorium)
	minimal_access = list()


/datum/job/submap/hospital/psicologo/psi_world
	title = "Psicologo/a"
	supervisors = "el Medico en Jefe"
	total_positions = 1
	economic_power = 1
	selection_color = "#026865"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/psi_world
	alt_titles = list(
		"Terapeuta",
		"Consejero/a"
		)
	info = "Eres el Psiquiatra. Tu responsabilidad principal es la salud mental y bienestar de la tripulacion. Sigues las ordenes del Oficial Medico en Jefe. A parte del Asesor Psiconico, eres el unico miembro abordo con habilidades Psiconicas."
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_BASIC,
		SKILL_MEDICAL     = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL     = SKILL_MAX
	)
	skill_points = 16
	access = list(access_medical, access_psychiatrist, access_maint_tunnels, access_solgov_crew, access_medical_equip, access_virology)
	minimal_access = list()
	software_on_spawn = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor
	)


//Policia
/datum/job/submap/policia/jefe/opj_world
	title = "Policia en Jefe"
	supervisors = "el Alcalde"
	total_positions = 1
	economic_power = 1
	selection_color = "#601c1c"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/pj_world
	alt_titles = list(
		"Jefe de Policia",
		"Comisionado de Policia"
		)
	info = "Su trabajo es asegurarse de que la unidad de policia funcione correctamente, debe asegurarse de que los agentes de policia estén haciendo cumplir la ley correctamente y no infrinjan los SOP. Autoriza las órdenes de arresto y se asegura de que los departamentos de policia funcionen como un engranaje bien engrasado."
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 28

	access = list(access_security, access_brig, access_armory, access_forensics_lockers,
			            access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_heads,
			            access_hos, access_RC_announce, access_keycard_auth, access_sec_doors,
			            access_solgov_crew, access_gun, access_emergency_armory, access_hangar, access_petrov, access_petrov_security)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)


/datum/job/submap/policia/pol_world
	title = "Policia"
	supervisors = "el Policia en Jefe"
	total_positions = 4
	economic_power = 1
	selection_color = "#8e2929"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/pol_world
	info = "Tus deberes son simples, solo haga cumplir la Ley. Lea cualquier procedimiento y reglamentación relevante, y aplíquelos dentro de lo razonable."
	alt_titles = list(
		"Cadete de Policia")
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC,
						SKILL_HAULING	  = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 22

	access = list(access_security, access_brig, access_maint_tunnels,
						access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_solgov_crew, access_petrov, access_petrov_security, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)


/datum/job/submap/policia/detective/det_world
	title = "Detective"
	supervisors = "el Policia en Jefe"
	total_positions = 1
	economic_power = 1
	selection_color = "#8e2929"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/pol_world
	info = "Simplemente espere por cualquier crimen que necesite alguna evidencia física, investigue la evidencia y la escena y compílela para los tribunales, incluso si se necesitan varios turnos para lograrlo."
	alt_titles = list(
		"Tecnico/a forense",
		"Investigador/a")
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 20

	access = list(access_security, access_brig, access_forensics_lockers,
			            access_maint_tunnels, access_emergency_storage,
			            access_sec_doors, access_solgov_crew, access_morgue, access_eva)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)




//Civiles
/datum/job/submap/service/janitor/jan_world
	title = "Conserje"
	supervisors = "el Alcalde"
	total_positions = 2
	economic_power = 1
	selection_color = "#557e38"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/pol_world
	info = "Te encargas de mantener limpia la ciudad y los locales que lo requerian."
	alt_titles = list(
		"Tecnico/a de Higiene",
		"Maid"
		)
	min_skill = list(   SKILL_HAULING = SKILL_BASIC)
	skill_points = 30
	access = list(access_maint_tunnels, access_emergency_storage, access_janitor, access_solgov_crew, access_hangar)
	minimal_access = list()


/datum/job/submap/service/cocinero/coc_world
	title = "Cocinero/a"
	supervisors = "el Alcalde"
	total_positions = 2
	economic_power = 1
	selection_color = "#557e38"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/coc_world
	info = "Cocinas deliciosos platillos y mantienes a los ciudadanos alimentados. Puedes cobrar por tus servicios."
	alt_titles = list(
		"Artista Culinario",
		"Carnicero/a",
		"Aprendiz de Cocinero")
	min_skill = list(   SKILL_COOKING   = SKILL_ADEPT,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC)
	skill_points = 30
	access = list(access_maint_tunnels, access_hydroponics, access_kitchen, access_solgov_crew, access_bar, access_commissary)
	minimal_access = list()


/datum/job/submap/service/bartender/bar_world
	title = "Barterista"
	supervisors = "el Alcalde"
	total_positions = 2
	economic_power = 1
	selection_color = "#557e38"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/bar_world
	info = "Sirves bebidas a aquellos que las soliciten. Puedes cobrar por tus servicios."
	alt_titles = list(
		"Cantinero/a",
		"Aprendiz de Barterista")
	access = list(access_hydroponics, access_bar, access_solgov_crew, access_kitchen, access_commissary, access_maint_tunnels)
	minimal_access = list()
	min_skill = list(   SKILL_COOKING   = SKILL_BASIC,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC)
	skill_points = 30

/datum/job/submap/service/capellan/cap_world
	title = "Capellan"
	supervisors = "Alcalde"
	total_positions = 2
	economic_power = 1
	selection_color = "#557e38"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/cap_world
	min_skill = list(SKILL_BUREAUCRACY = SKILL_BASIC)
	skill_points = 30
	access = list(access_morgue, access_chapel_office, access_crematorium, access_solgov_crew, access_medical, access_maint_tunnels)
	minimal_access = list()


/datum/job/submap/service/civil/civ_world
	title = "Civil"
	supervisors = "el Alcalde"
	total_positions = 1
	economic_power = 1
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/civ_world
	alt_titles = list(
		"Residente/a",
		"Vagabundo/a",
		"Turista",
		"Inmigrante",
		"Asistente/a")
	skill_points = 40
	access = list(access_maint_tunnels, access_emergency_storage, access_solgov_crew)


/datum/job/submap/service/botanico/bot_world
	title = "Botanico/a"
	supervisors = "el Alcalde"
	total_positions = 2
	economic_power = 1
	selection_color = "#557e38"
	info = "Encargate de botanica y has frutas o verduras para venderlas a quien las quiera."
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/bot_world
	alt_titles = list(
		"Granjero/a",
		"Naturista",
		"Verdulero/a")
	skill_points = 30
	access = list(access_maint_tunnels, access_emergency_storage, access_solgov_crew, access_bot_world)


/datum/job/submap/service/comerciante/com_world
	title = "Mercader"
	supervisors = "el Alcalde"
	total_positions = 3
	economic_power = 1
	selection_color = "#557e38"
	info = "Dirije tu local y vende los productos que quieras, puedes solicitar los productos que quieras vender a cargo"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/com_world
	alt_titles = list(
		"Armero/a",
		"Dependiente de tienda")
	skill_points = 30
	min_skill = list(   SKILL_FINANCE = SKILL_ADEPT,
	                    SKILL_PILOT	  = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	access = list(access_maint_tunnels, access_emergency_storage, access_solgov_crew, access_com_world)


/datum/job/submap/service/abogado/abo_world
	title = "Abogado/a"
	supervisors = "Alcalde"
	total_positions = 2
	economic_power = 1
	info = "Eres un Abogado. tu trabajo es procesar o defender a tu cliente dependiendo de las circunstancias."
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/abo_world
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE     = SKILL_BASIC)
	skill_points = 30
	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_solgov_crew)
	software_on_spawn = list(/datum/computer_file/program/reports)



//Ciencias
/datum/job/submap/ciencias/jefe/ocj_world
	title = "Cientifico en Jefe"
	supervisors = "el Alcalde"
	total_positions = 1
	economic_power = 1
	selection_color = "#633d63"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/ocj_world
	alt_titles = list(
		"Jefe de Ciencias")
	info = "Eres el Jefe de Ciencias. Eres el responsable del departamento de investigacion. Manejas los aspectos cientificos del proyecto y asegurate que la ciencia este hecha, hazlo tu mismo si es necesario, y manda a tus cientificos en misiones lejanas para encontrar cosas beneficiosas para el proyecto."
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_ADEPT,
	                    SKILL_BOTANY      = SKILL_BASIC,
	                    SKILL_ANATOMY     = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(
		access_tox, access_tox_storage, access_emergency_storage, access_teleporter, access_bridge, access_rd,
		access_research, access_mining, access_mining_office, access_mining_station, access_xenobiology,
		access_RC_announce, access_keycard_auth, access_xenoarch, access_nanotrasen, access_sec_guard, access_heads,
		access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_rd,
		access_petrov_security, access_petrov_maint, access_pathfinder, access_explorer, access_eva, access_solgov_crew,
		access_expedition_shuttle, access_expedition_shuttle_helm, access_maint_tunnels, access_robotics, access_robotics_engineering
	)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/aidiag,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)



/datum/job/submap/ciencias/cientifico/cie_world
	title = "Cientifico/a"
	supervisors = "el Cientifico en Jefe"
	total_positions = 4
	economic_power = 1
	selection_color = "#ad6bad"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/cie_world
	alt_titles = list(
		"Xenobiologo/a",
		"Xenobotanic/a",
		"Investigador/a Quimico")
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
						SKILL_CHEMISTRY   = SKILL_BASIC)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
						SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20
	access = list(access_tox, access_maint_tunnels, access_tox_storage, access_research, access_petrov_maint, access_petrov, access_petrov_helm,
						access_mining_office, access_mining_station, access_xenobiology, access_guppy_helm,
						access_xenoarch, access_nanotrasen, access_expedition_shuttle, access_guppy, access_solgov_crew, access_hangar,
						access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_robotics, access_robotics_engineering)
	minimal_access = list()



/datum/job/submap/ciencias/robotista/rob_world
	title = "Robotist"
	supervisors = "el Cientifico en Jefe"
	total_positions = 2
	economic_power = 1
	selection_color = "#ad6bad"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/rob_world
	alt_titles = list(
		"Tecnico/a de Mechas",
		"Tecnico/a Biomecanico")
	min_skill = list(   SKILL_COMPUTER		= SKILL_ADEPT,
	                    SKILL_DEVICES		= SKILL_ADEPT,
	                    SKILL_ANATOMY       = SKILL_EXPERT,
	                    SKILL_SCIENCE     	= SKILL_ADEPT,
	                    SKILL_MEDICAL     	= SKILL_ADEPT,
	                    SKILL_MECH          = HAS_PERK,
	                    SKILL_ELECTRICAL    = SKILL_BASIC,
	                    SKILL_CONSTRUCTION  = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_EXPERT,
	                    SKILL_ENGINES      = SKILL_EXPERT,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_EXPERT,
	                    SKILL_ANATOMY      = SKILL_MAX)
	skill_points = 24

	access = list(access_robotics, access_robotics_engineering, access_nanotrasen, access_engine, access_solgov_crew, access_maint_tunnels, access_research, access_petrov, access_petrov_maint, access_research,)
	minimal_access = list()





//Cargo
/datum/job/submap/cargo/jefe/qm_world
	title = "Intendente de Cargo"
	supervisors = "el Alcalde"
	total_positions = 1
	economic_power = 1
	selection_color = "#5b4d20"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/qm_world
	alt_titles = list(
		"Quartermaster",
		"Jefe de Cargo")
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 20

	access = list(access_maint_tunnels, access_bridge, access_emergency_storage, access_tech_storage,  access_cargo, access_guppy_helm,
						access_cargo_bot, access_qm, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
						access_mining, access_mining_office, access_mining_station, access_commissary)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)



/datum/job/submap/cargo/car_world
	title = "Tecnico/a de Cargo"
	supervisors = "el Intendente de Cargo"
	total_positions = 4
	economic_power = 1
	selection_color = "#7f6e2c"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/car_world
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 20

	access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_guppy_helm,
						access_cargo_bot, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar, access_commissary)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)


/datum/job/submap/cargo/mineria/min_world
	title = "Minero/a"
	supervisors = "el Intendente de Cargo"
	total_positions = 4
	economic_power = 1
	selection_color = "#7f6e2c"
	alt_titles = list(
		"Tecnico/a de salvamento")
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/min_world
	min_skill = list(   SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_EVA     = SKILL_BASIC,
	                    SKILL_PILOT   = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 20
	access = list(access_maint_tunnels, access_emergency_storage, access_mining, access_mining_office, access_mining_station,
						access_expedition_shuttle, access_guppy, access_hangar, access_guppy_helm, access_solgov_crew, access_cargo, access_eva, access_cargo_bot, access_mailsorting)
	minimal_access = list()



//Ingenieria
/datum/job/submap/ingenieria/jefe/oij_world
	title = "Ingeniero en Jefe"
	supervisors = "el Alcalde"
	total_positions = 1
	economic_power = 1
	selection_color = "#B09146"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/oij_world
	alt_titles = list(
		"Jefe de ingenieros",
		"Electicista en Jefe",
		"Arquitecto"
		)
	info = "Eres el Ingeniero en Jefe. Manejas el departamento de ingenieria. Maneja tus ingenieros, asegura que la ciudad se mantenga con energia. Aconseja al Alcalde en asuntos de Ingenieria. Tambien eres responsable de mantenimiento y control de cualquiere buque sintetico. Eres un Ingeniero experimentado con una gran de conocimientos teoricos. Deberias de conocer las regulaciones de los buques en un nivel razonable."
	min_skill = list(   SKILL_BUREAUCRACY  = SKILL_BASIC,
	                    SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_EXPERT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 30

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_bridge, access_heads,
			            access_tech_storage, access_robotics, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat,
			            access_solgov_crew, access_robotics_engineering, access_seneng, access_hangar, access_robotics)
	minimal_access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_bridge, access_heads,
			            access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat,
			            access_solgov_crew, access_robotics_engineering, access_seneng, access_hangar, access_robotics)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/ntnetmonitor,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports)


/datum/job/submap/ingenieria/ing_world
	title = "Ingeniero/a"
	supervisors = "el Ingeniero en Jefe"
	total_positions = 4
	economic_power = 1
	selection_color = "#C8A44E"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/oij_world
	alt_titles = list(
		"Electricista",
		"Constructor",
		"Mecanico"
		)
	info = "Eres un ingeniero. Operas bajo uno de los muchos titulos y puedes estar especializado en un area de ingenieria. Probablemente tengas familiarizado conocimientos de algunas areas. Sigues las ordenes del Ingeniero en Jefe y se te espera que lo sigas."
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 20
	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_construction,
			            access_solgov_crew, access_hangar, access_tcomsat)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)




//Command
/datum/job/submap/comando/alcalde/alc_world
	title = "Alcalde"
	supervisors = "Comando Central"
	total_positions = 1
	economic_power = 1
	selection_color = "#1d1d4f"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/alc_world
	alt_titles = list(
		"Presidente",
		"Gobernador"
		)
	info = "Eres el Alcalde, quien manda sobre todos. Eres una persona profesional y experimentado en el manejo de esta pequeña ciudad. Asegurate de que todos cumplan con su trabajo y que se mantenga el orden."
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)


/datum/job/submap/comando/blueshield/bs_world
	title = "Blueshield"
	supervisors = "el Alcalde, y los Jefes departamentales"
	total_positions = 1
	economic_power = 1
	selection_color = "#2f2f7f"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/bs_world
	alt_titles = list(
		"Guardaespaldas"
		)
	info = "Eres un Blueshield, te encargas de proteger la vida del personal de alto riesgo de la ciudad, NO eres seguridad."
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)
	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

	skill_points = 25
	access = list(access_magistrado, access_lawyer, access_sec_doors, access_brig, access_maint_tunnels, access_medical,
			            access_bridge, access_cargo, access_solgov_crew, access_hangar, access_bs)


/datum/job/submap/comando/magistrado/mag_world
	title = "Magistrado/a"
	supervisors = "el alcalde"
	total_positions = 1
	economic_power = 1
	selection_color = "#2f2f7f"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/mag_world
	alt_titles = list(
		"Juez")
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE     = SKILL_BASIC)
	skill_points = 20
	access = list(access_magistrado, access_lawyer, access_sec_doors, access_brig, access_maint_tunnels, access_medical,
			            access_bridge, access_cargo, access_solgov_crew, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/reports)

#undef WEBHOOK_SUBMAP_LOADED_WORLD