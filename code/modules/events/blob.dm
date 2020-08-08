/datum/event/blob
	announceWhen	= 12
	endWhen			= 240

	var/obj/effect/blob/core/Blob

/datum/event/blob/announce()
	level_seven_announcement()

/datum/event/blob/start()
	var/turf/T = pick(GLOB.blobstart)
	if(!T)
		return kill()

	var/list/candidates = pollCandidates("Quieres jugar como un raton infestado de blob?", ROLE_BLOB, 1)
	if(!candidates.len)
		return kill()

	var/list/vents = list()
	for(var/obj/machinery/atmospherics/unary/vent_pump/temp_vent in GLOB.all_vent_pumps)
		if(is_station_level(temp_vent.loc.z) && !temp_vent.welded)
			if(temp_vent.parent.other_atmosmch.len > 50)
				vents += temp_vent

	var/obj/vent = pick(vents)
	var/mob/living/simple_animal/mouse/blobinfected/B = new(vent.loc)
	var/mob/M = pick(candidates)
	B.key = M.key
	SSticker.mode.update_blob_icons_added(B.mind)

	log_and_message_admins("Blob spawned in \the [get_area(T)]", location = T)
	Blob = new /obj/effect/blob/core(T)
	for(var/i = 1; i < rand(3, 4), i++)
		Blob.Process()

/datum/event/blob/tick()
	if(!Blob || !Blob.loc)
		Blob = null
		kill()
		return
	if(IsMultiple(activeFor, 3))
		Blob.Process()

	to_chat(B, "<span class='userdanger'>Ahora eres un raton infectado con blob. Encuentra un lugar aislado ... antes de explotar y convertirte en blob! Usa la ventilacion (alt-click en ventilas) para desplazarte.</span>")
	notify_ghosts("Raton infectado de blob en: [get_area(B)].", source = B)
	processing = TRUE // Let it naturally end, if it runs successfully