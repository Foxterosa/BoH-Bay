/*
	Code for the necromorph mob.
	Most of this is a temporary hack because we don't have proper icons for parts.

`	I am well aware this is not how human mobs and species are supposed to be used
*/
/mob/living/carbon/human/necromorph


/*
	Slasher Mob setup
*/
/mob/living/carbon/human/necromorph/slasher/New(var/new_loc, var/new_species = SPECIES_NECROMORPH_SLASHER)
	..(new_loc, new_species)

/mob/living/carbon/human/necromorph/slasher_enhanced/New(var/new_loc, var/new_species = SPECIES_NECROMORPH_SLASHER_ENHANCED)
	..(new_loc, new_species)

//A dummy version of slasher for target practise
/mob/living/carbon/human/necromorph/slasher/dummy
	status_flags = GODMODE|CANPUSH
	virtual_mob = null

/mob/living/carbon/human/necromorph/slasher/dummy/Initialize()
	. = ..()
	STOP_PROCESSING(SSmobs, src)