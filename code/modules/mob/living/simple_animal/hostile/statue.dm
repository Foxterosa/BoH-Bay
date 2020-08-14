/mob/living/simple_animal/hostile/statue
	name = "statue" // matches the name of the statue with the flesh-to-stone spell
	desc = "An incredibly lifelike marble carving. Its eyes seems to follow you.." // same as an ordinary statue with the added "eye following you" description
	icon = 'icons/obj/statue1.dmi'
	icon_state = "angel"
	icon_living = "angel"
	icon_dead = "angel"

	response_help = "touches"
	response_disarm = "pushes"

	speed = -1
	maxHealth = 50000
	health = 50000

	harm_intent_damage = 35
	obj_damage = 100
	melee_damage_lower = 34
	melee_damage_upper = 42
	attacktext = "claws"
	attack_sound = 'sound/hallucinations/growl1.ogg'

	min_gas = null
	max_gas = null
	minbodytemp = 0

	faction = list("statue")
	move_to_delay = 0 // Very fast

	animate_movement = NO_STEPS // Do not animate movement, you jump around as you're a scary statue.

	see_in_dark = 8

	var/cannot_be_seen = 1
	var/mob/living/creator = null

/mob/living/simple_animal/hostile/statue/Move(turf/NewLoc)
	if(can_be_seen(NewLoc))
		if(client)
			to_chat(src, "<span class='warning'>You cannot move, there are eyes on you!</span>")
		return 0
	return ..()

/mob/living/simple_animal/hostile/statue/AttackingTarget()
	if(can_be_seen(get_turf(loc)))
		if(client)
			to_chat(src, "<span class='warning'>You cannot attack, there are eyes on you!</span>")
		return FALSE
	else
		return ..()

/mob/living/simple_animal/hostile/statue/face_atom()
	if(!can_be_seen(get_turf(loc)))
		..()

/mob/living/simple_animal/hostile/statue/proc/can_be_seen(turf/destination)
	if(!cannot_be_seen)
		return null

	// We aren't in darkness, loop for viewers.
	var/list/check_list = list(src)
	if(destination)
		check_list += destination

// Cannot talk

/mob/living/simple_animal/hostile/statue/say()
	return 0

// Turn to dust when gibbed

/mob/living/simple_animal/hostile/statue/gib()
	dust()

// Don't attack your creator if there is one

/mob/living/simple_animal/hostile/statue/ListTargets()
	. = ..()
	return . - creator

// Statue powers

// Flicker lights
/obj/effect/proc_holder/spell/aoe_turf/flicker_lights
	name = "Flicker Lights"
	desc = "You will trigger a large amount of lights around you to flicker."
