
/obj/item/device/encryptionkey/
	name = "standard encryption key"
	desc = "An encryption key for a radio headset. Contains cypherkeys."
	icon = 'icons/obj/radio.dmi'
	icon_state = "cypherkey"
	item_state = ""
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_EARS
	var/translate_binary = 0
	var/translate_hive = 0
	var/syndie = 0
	var/list/channels = list()

/obj/item/device/encryptionkey/attackby(obj/item/weapon/W as obj, mob/user as mob)

/obj/item/device/encryptionkey/syndicate
	icon_state = "cypherkey"
	channels = list("Mercenary" = 1)
	origin_tech = list(TECH_ESOTERIC = 3)
	syndie = 1//Signifies that it de-crypts Syndicate transmissions

/obj/item/device/encryptionkey/raider
	icon_state = "cypherkey"
	channels = list("Raider" = 1)
	origin_tech = list(TECH_ESOTERIC = 2)
	syndie = 1

/obj/item/device/encryptionkey/binary
	icon_state = "cypherkey"
	translate_binary = 1
	origin_tech = list(TECH_ESOTERIC = 3)

/obj/item/device/encryptionkey/headset_sec
	name = "security radio encryption key"
	icon_state = "sec_cypherkey"
	channels = list("Security" = 1)

/obj/item/device/encryptionkey/headset_eng
	name = "engineering radio encryption key"
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1)

/obj/item/device/encryptionkey/headset_rob
	name = "robotics radio encryption key"
	icon_state = "rob_cypherkey"
	channels = list("Engineering" = 1, "Science" = 1)

/obj/item/device/encryptionkey/headset_med
	name = "medical radio encryption key"
	icon_state = "med_cypherkey"
	channels = list("Medical" = 1)

/obj/item/device/encryptionkey/headset_sci
	name = "science radio encryption key"
	icon_state = "sci_cypherkey"
	channels = list("Science" = 1)

/obj/item/device/encryptionkey/headset_medsci
	name = "medical research radio encryption key"
	icon_state = "medsci_cypherkey"
	channels = list("Medical" = 1, "Science" = 1)

/obj/item/device/encryptionkey/headset_com
	name = "command radio encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1)

/obj/item/device/encryptionkey/heads/captain
	name = "captain's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Infantry" = 1, "Security" = 1, "Engineering" = 0, "Science" = 0, "Medical" = 0, "Supply" = 0, "Service" = 0)

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Infantry" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "AI Private" = 1)

/obj/item/device/encryptionkey/heads/rd
	name = "chief science officer's encryption key"
	icon_state = "rd_cypherkey"
	channels = list("Science" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/hos
	name = "head of security's encryption key"
	icon_state = "hos_cypherkey"
	channels = list("Security" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/ce
	name = "chief engineer's encryption key"
	icon_state = "ce_cypherkey"
	channels = list("Engineering" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/cmo
	name = "chief medical officer's encryption key"
	icon_state = "cmo_cypherkey"
	channels = list("Medical" = 1, "Command" = 1)

/obj/item/device/encryptionkey/heads/hop
	name = "head of personnel's encryption key"
	icon_state = "hop_cypherkey"
	channels = list("Supply" = 1, "Service" = 1, "Command" = 1, "Security" = 0)

/obj/item/device/encryptionkey/headset_cargo
	name = "supply radio encryption key"
	icon_state = "cargo_cypherkey"
	channels = list("Supply" = 1)

/obj/item/device/encryptionkey/headset_service
	name = "service radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Service" = 1)

/obj/item/device/encryptionkey/ert
	name = "\improper ERT radio encryption key"
	channels = list("Response Team" = 1, "Science" = 1, "Command" = 1, "Infantry" = 1, "Medical" = 1, "Engineering" = 1, "Security" = 1, "Supply" = 1, "Service" = 1)

/obj/item/device/encryptionkey/specops //for events
	name = "special operations radio encryption key"
	icon_state = "bin_cypherkey"
	channels = list("Special Ops" = 1)
	origin_tech = list(TECH_ESOTERIC = 2)

/obj/item/device/encryptionkey/entertainment
	name = "entertainment radio key"
	channels = list("Entertainment" = 1)

/obj/item/device/encryptionkey/headset_mining
	name = "prospector radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Supply" = 1)


//Ciudad Manaos
/obj/item/device/encryptionkey/world/world_cargo
	name = "radio encriptada de Cargo."
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world/world_qm
	name = "radio encriptada del Intendente de Cargo."
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world/world_med
	name = "radio encriptada del hospital."
	icon_state = "medsci_cypherkey"
	channels = list("Medical" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world/world_omj
	name = "radio encriptada del Médico en jefe."
	icon_state = "medsci_cypherkey"
	channels = list("Medical" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world/world_sec
	name = "radio encriptada de la Polcía."
	icon_state = "sec_cypherkey"
	channels = list("Security" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world/world_pj
	name = "radio encriptada del Policía en Jefe."
	icon_state = "sec_cypherkey"
	channels = list("Security" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world/world_cie
	name = "radio encriptada de Ciencias."
	icon_state = "sci_cypherkey"
	channels = list("Science" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world/world_ocj
	name = "radio encriptada del Cientifico en Jefe."
	icon_state = "sci_cypherkey"
	channels = list("Science" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world/world_civ
	name = "radio encriptada comun de los ciudadanos de Ciudad Manaos."
	icon_state = "srv_cypherkey"
	channels = list("911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world/world_ing
	name = "radio encriptada de Ingenieria."
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1, "911" = 1, "106" = 1)

/obj/item/device/encryptionkey/world/world_oij
	name = "radio encriptada del Ingeniero en Jefe."
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1, "911" = 1, "106" = 1, "Command" = 1)

/obj/item/device/encryptionkey/world/world_alc
	name = "radio encriptada del Alcalde."
	icon_state = "eng_cypherkey"
	channels = list("Engineering" = 1, "911" = 1, "106" = 1, "Command" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Security" = 1)