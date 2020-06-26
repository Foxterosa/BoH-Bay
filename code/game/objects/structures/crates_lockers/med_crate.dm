/obj/structure/closet/crate/med_crate/trauma
	name = "Caja de trauma"
	desc = "Una caja con equipo para traumas."
	closet_appearance = /decl/closet_appearance/crate/medical/trauma

/obj/structure/closet/crate/med_crate/trauma/WillContain()
	return list(
		/obj/item/stack/medical/splint = 4,
		/obj/item/weapon/storage/pill_bottle/inaprovaline,
		/obj/item/weapon/storage/pill_bottle/bicaridine,
		/obj/item/weapon/storage/med_pouch/trauma = 4,
		/obj/item/weapon/storage/firstaid/trauma
		)

/obj/structure/closet/crate/med_crate/burn
	name = "Caja de quemaduras"
	desc = "Una caja con equipo para quemaduras."
	closet_appearance = /decl/closet_appearance/crate/medical

/obj/structure/closet/crate/med_crate/burn/WillContain()
	return list(
		/obj/item/weapon/storage/firstaid/fire,
		/obj/item/weapon/storage/pill_bottle/inaprovaline,
		/obj/item/weapon/storage/med_pouch/burn = 4,
		/obj/item/weapon/storage/pill_bottle/dermaline

	)

/obj/structure/closet/crate/med_crate/oxyloss
	name = "Caja de perdida de oxigeno"
	desc = "Una caja con equipo para perdida de oxigeno."
	closet_appearance = /decl/closet_appearance/crate/medical/oxygen

/obj/structure/closet/crate/med_crate/oxyloss/WillContain()
	return list(
		/obj/item/weapon/storage/pill_bottle/inaprovaline,
		/obj/item/weapon/storage/pill_bottle/dexalin_plus,
		/obj/item/weapon/storage/med_pouch/oxyloss = 4,
		/obj/item/weapon/storage/firstaid/o2
	)
/obj/structure/closet/crate/med_crate/toxin
	name = "Caja de toxinas"
	desc = "Una caja con equipo para toxinas."
	closet_appearance = /decl/closet_appearance/crate/medical/toxins

/obj/structure/closet/crate/med_crate/toxin/WillContain()
	return list(
		/obj/item/weapon/storage/med_pouch/toxin = 4,
		/obj/item/weapon/storage/pill_bottle/dylovene,
		/obj/item/weapon/storage/firstaid/toxin,
		/obj/item/weapon/storage/pill_bottle/inaprovaline
			)
