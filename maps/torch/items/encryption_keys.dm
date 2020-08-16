/obj/item/device/encryptionkey/heads/torchexec
	name = "executive encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Infantry" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "Exploration" = 1)

/obj/item/device/encryptionkey/headset_torchnt
	name = "corporate radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1)

/obj/item/device/encryptionkey/headset_torchrd
	name = "chief science officer radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1, "Command" = 1, "Exploration" = 1)

/obj/item/device/encryptionkey/headset_torchcorp
	name = "corporate radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1, "Service" = 1)

/obj/item/device/encryptionkey/headset_torchcl
	name = "corporate liaison radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1, "Service" = 1, "Command" = 1)

/obj/item/device/encryptionkey/headset_deckofficer
	name = "deck chief's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "Command" = 1, "Exploration" = 1, "Infantry" = 1)

/obj/item/device/encryptionkey/bridgeofficer
	name = "bridge officer's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1, "Infantry" = 1, "Engineering" = 1, "Exploration" = 1)

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Infantry" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "Exploration" = 1, "AI Private" = 1)

/obj/item/device/encryptionkey/exploration
	name = "exploration radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Exploration" = 1)

/obj/item/device/encryptionkey/headset_pilot
	name = "pilot radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Exploration" = 1, "Supply" = 1, "Science" = 1)

/obj/item/device/encryptionkey/headset_mining
	name = "prospector radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Exploration" = 1, "Supply" = 1)

/obj/item/weapon/storage/box/encryptionkey/exploration
	name = "box of spare exploration radio keys"
	desc = "A box full of exploration department radio keys."
	startswith = list(/obj/item/weapon/screwdriver, /obj/item/device/encryptionkey/exploration = 5)

/obj/item/device/encryptionkey/pathfinder
	name = "pathfinder's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Exploration" = 1, "Command" = 1, "Science" = 1)

/obj/item/weapon/storage/box/radiokeys
	name = "box of radio encryption keys"
	desc = "A box full of assorted encryption keys."
	startswith = list(/obj/item/device/encryptionkey/headset_sec = 3,
					  /obj/item/device/encryptionkey/headset_med = 3,
					  /obj/item/device/encryptionkey/headset_cargo = 3,
					  /obj/item/device/encryptionkey/headset_sci = 3)

/obj/item/weapon/storage/box/radiokeys/Initialize()
	. = ..()
	make_exact_fit()

/obj/item/device/encryptionkey/heads/sea
	name = "senior enlisted advisor's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1, "Infantry" = 1, "Security" = 1, "Engineering" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "Exploration" = 1)


//Ciudad Manaos
/obj/item/device/encryptionkey/world_cargo
	name = "radio encriptada de Cargo."
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world_qm
	name = "radio encriptada del Intendente de Cargo."
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world_med
	name = "radio encriptada del hospital."
	icon_state = "medsci_cypherkey"
	channels = list("Medical" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world_omj
	name = "radio encriptada del Médico en jefe."
	icon_state = "medsci_cypherkey"
	channels = list("Medical" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world_sec
	name = "radio encriptada de la Polcía."
	icon_state = "sec_cypherkey"
	channels = list("Security" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world_pj
	name = "radio encriptada del Policía en Jefe."
	icon_state = "sec_cypherkey"
	channels = list("Security" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world_cie
	name = "radio encriptada de Ciencias."
	icon_state = "sci_cypherkey"
	channels = list("Science" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world_ocj
	name = "radio encriptada del Cientifico en Jefe."
	icon_state = "sci_cypherkey"
	channels = list("Science" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world_civ
	name = "radio encriptada comun de los ciudadanos de Ciudad Manaos."
	icon_state = "srv_cypherkey"
	channels = list("911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world_ing
	name = "radio encriptada de Ingenieria."
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world_oij
	name = "radio encriptada del Ingeniero en Jefe."
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world_alc
	name = "radio encriptada del Alcalde."
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1, "911" = 1, "106" = 1, "Command" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Security" = 1)