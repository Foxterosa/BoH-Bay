/* Utility Closets
 * Contains:
 *		Emergency Closet
 *		Fire Closet
 *		Tool Closet
 *		Radiation Closet
 *		Bombsuit Closet
 *		Hydrant
 *		First Aid
 *		Excavation Closet
 *		Shipping Supplies Closet
 */

/*
 * Emergency Closet
 */
/obj/structure/closet/emcloset
	name = "Armario de emergencias"
	desc = "Es un armario de emergencia con mascaras y tanques de oxigeno"
	closet_appearance = /decl/closet_appearance/oxygen

/obj/structure/closet/emcloset/WillContain()
	//Guaranteed kit - two tanks and masks
	. = list(/obj/item/weapon/tank/emergency/oxygen = 2,
			/obj/item/clothing/mask/breath = 2)

	. += new/datum/atom_creator/simple(list(/obj/item/weapon/storage/toolbox/emergency, /obj/item/inflatable/wall = 2), 75)
	. += new/datum/atom_creator/simple(list(/obj/item/weapon/tank/emergency/oxygen/engi, /obj/item/clothing/mask/gas/half), 10)
	. += new/datum/atom_creator/simple(/obj/item/device/oxycandle, 15)
	. += new/datum/atom_creator/simple(/obj/item/weapon/storage/firstaid/o2, 25)
	. += new/datum/atom_creator/simple(list(/obj/item/clothing/suit/space/emergency,/obj/item/clothing/head/helmet/space/emergency), 25)

/*
 * Fire Closet
 */
/obj/structure/closet/firecloset
	name = "Armario anti-incendios"
	desc = "Es un armario con equipo anti-incendios."
	closet_appearance = /decl/closet_appearance/oxygen/fire


/obj/structure/closet/firecloset/WillContain()
	return list(
		/obj/item/weapon/storage/med_pouch/burn,
		/obj/item/weapon/storage/backpack/dufflebag/firefighter,
		/obj/item/clothing/mask/gas,
		/obj/item/device/flashlight
		)

/obj/structure/closet/firecloset/chief

/obj/structure/closet/firecloset/chief/WillContain()
	return list(
		/obj/item/weapon/storage/med_pouch/burn,
		/obj/item/clothing/suit/fire/firefighter,
		/obj/item/clothing/mask/gas,
		/obj/item/device/flashlight,
		/obj/item/weapon/tank/emergency/oxygen/double/red,
		/obj/item/weapon/extinguisher,
		/obj/item/clothing/head/hardhat/firefighter/Chief)

/*
 * Tool Closet
 */
/obj/structure/closet/toolcloset
	name = "Armario de herramientas"
	desc = "Es un armario para herramientas."
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/tools

/obj/structure/closet/toolcloset/New()
	..()
	if(prob(40))
		new /obj/item/clothing/suit/storage/hazardvest(src)
	if(prob(70))
		new /obj/item/device/flashlight(src)
	if(prob(70))
		new /obj/item/weapon/screwdriver(src)
	if(prob(70))
		new /obj/item/weapon/wrench(src)
	if(prob(70))
		new /obj/item/weapon/weldingtool(src)
	if(prob(70))
		new /obj/item/weapon/crowbar(src)
	if(prob(70))
		new /obj/item/weapon/wirecutters(src)
	if(prob(70))
		new /obj/item/device/t_scanner(src)
	if(prob(20))
		new /obj/item/weapon/storage/belt/utility(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(20))
		new /obj/item/device/multitool(src)
	if(prob(5))
		new /obj/item/clothing/gloves/insulated(src)
	if(prob(40))
		new /obj/item/clothing/head/hardhat(src)


/*
 * Radiation Closet
 */
/obj/structure/closet/radiation
	name = "Armario anti-radiacion"
	desc = "Es un armario para trajes protectores anti-radiacion"
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/tools/radiation

/obj/structure/closet/radiation/WillContain()
	return list(
		/obj/item/weapon/storage/med_pouch/radiation = 3,
		/obj/item/clothing/suit/radiation,
		/obj/item/clothing/suit/radiation,
		/obj/item/clothing/suit/radiation,
		/obj/item/clothing/head/radiation,
		/obj/item/clothing/head/radiation,
		/obj/item/clothing/head/radiation,
		/obj/item/device/geiger = 3,
		/obj/item/weapon/storage/med_pouch/toxin = 3,
		/obj/item/weapon/tank/emergency/oxygen/engi = 3,
		/obj/item/clothing/mask/gas/half = 3)

/*
 * Bombsuit closet
 */
/obj/structure/closet/bombcloset
	name = "Armario para desactivacion de explosivos"
	desc = "Es un armario para atrajes contra explosiones."
	closet_appearance = /decl/closet_appearance/bomb

/obj/structure/closet/bombcloset/WillContain()
	return list(
		/obj/item/clothing/suit/bomb_suit,
		/obj/item/clothing/under/color/black,
		/obj/item/clothing/shoes/black,
		/obj/item/clothing/head/bomb_hood)


/obj/structure/closet/bombclosetsecurity
	name = "Armario para desactivacion de explosivos"
	desc = "Es un armario para atrajes contra explosiones."
	closet_appearance = /decl/closet_appearance/bomb/security

/obj/structure/closet/bombclosetsecurity/WillContain()
	return list(
		/obj/item/clothing/suit/bomb_suit/security,
		/obj/item/clothing/under/rank/security,
		/obj/item/clothing/shoes/brown,
		/obj/item/clothing/head/bomb_hood/security)

/*
 * Hydrant
 */
/obj/structure/closet/hydrant //wall mounted fire closet
	name = "Armario anti-incendios"
	desc = "Es un armario con equipo anti-incendios."
	closet_appearance = /decl/closet_appearance/wall/hydrant
	anchored = 1
	density = 0
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS
	setup = 0

/obj/structure/closet/hydrant/WillContain()
	return list(
		/obj/item/inflatable/door = 2,
		/obj/item/weapon/storage/med_pouch/burn = 2,
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/storage/backpack/dufflebag/firefighter
		)

/*
 * First Aid
 */
/obj/structure/closet/medical_wall //wall mounted medical closet
	name = "Armario de primeros auxilios"
	desc = "Es un armario montado en la pared para suministros de primeros auxilios."
	closet_appearance = /decl/closet_appearance/wall/medical
	anchored = 1
	density = 0
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS
	setup = 0

/obj/structure/closet/medical_wall/filled/WillContain()
	return list(
		/obj/random/firstaid,
		/obj/random/medical/lite = 12)

/obj/structure/closet/shipping_wall
	name = "Armario de suministros de envios"
	desc = "Es un armario montado en la pared que contiene suiministros para preparar envios."
	closet_appearance = /decl/closet_appearance/wall/shipping
	anchored = 1
	density = 0
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS
	setup = 0

/obj/structure/closet/shipping_wall/filled/WillContain()
	return list(
		/obj/item/stack/material/cardboard/ten,
		/obj/item/device/destTagger,
		/obj/item/stack/package_wrap/twenty_five)