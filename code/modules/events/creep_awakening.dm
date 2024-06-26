/datum/round_event_control/obsessed
	name = "Obsession Awakening"
	typepath = /datum/round_event/obsessed
	max_occurrences = 1
	min_players = 20

/datum/round_event/obsessed
	fakeable = FALSE

/datum/round_event/obsessed/start()
	for(var/mob/living/carbon/human/H in shuffle(GLOB.player_list))
		if(!H.client)
			continue
		var/list/client_antags = H.client.prefs.read_preference(/datum/preference/blob/antagonists)
		if(!client_antags[ROLE_OBSESSED])
			continue
		if(H.stat == DEAD)
			continue
		if(!(H.mind.assigned_role.job_flags & JOB_CREW_MEMBER)) //only station jobs sans nonhuman roles, prevents ashwalkers trying to stalk with crewmembers they never met
			continue
		if(H.mind.has_antag_datum(/datum/antagonist/obsessed))
			continue
		if(!H.getorgan(/obj/item/organ/brain))
			continue
		H.gain_trauma(/datum/brain_trauma/special/obsessed)
		announce_to_ghosts(H)
		break
