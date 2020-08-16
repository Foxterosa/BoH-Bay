/datum/map_template/ruin/away_site/world/default_internal_channels()
	return list(
		num2text(911_FREQ)   = list(access_solgov_crew),
		num2text(106_FREQ)   = list(access_solgov_crew),
		num2text(MED_FREQ)   = list(access_medical_equip),
		num2text(MED_I_FREQ) = list(access_medical_equip),
		num2text(SEC_FREQ)   = list(access_security),
		num2text(SEC_I_FREQ) = list(access_security),
		num2text(COMM_FREQ)  = list(access_heads),
		num2text(SUP_FREQ)   = list(access_cargo),
		num2text(SCI_FREQ)   = list(access_tox, access_robotics, access_xenobiology, access_pathfinder),
		num2text(ENG_FREQ)   = list(access_engine_equip, access_atmospherics)
		)
