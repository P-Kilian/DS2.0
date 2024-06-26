#ifdef TESTING
/datum/dynamic_simulation
	var/datum/game_mode/dynamic/gamemode
	var/datum/dynamic_simulation_config/config
	var/list/mock_candidates = list()

/datum/dynamic_simulation/proc/initialize_gamemode(forced_threat)
	gamemode = new

	if (forced_threat)
		gamemode.create_threat(forced_threat)
	else
		gamemode.generate_threat()

	gamemode.generate_budgets()
	gamemode.set_cooldowns()

/datum/dynamic_simulation/proc/create_candidates(players)
	GLOB.new_player_list.Cut()

	for (var/_ in 1 to players)
		var/mob/dead/new_player/mock_new_player = new
		mock_new_player.ready = PLAYER_READY_TO_PLAY

		var/datum/mind/mock_mind = new
		mock_new_player.mind = mock_mind

		var/datum/client_interface/mock_client = new

		var/datum/preferences/prefs = new
		var/list/be_special = list()
		for (var/special_role in GLOB.special_roles)
			be_special[special_role] = TRUE

		prefs.value_cache[/datum/preference/blob/antagonists] = be_special
		mock_client.prefs = prefs

		mock_new_player.mock_client = mock_client

		mock_candidates += mock_new_player

/datum/dynamic_simulation/proc/simulate(datum/dynamic_simulation_config/config)
	src.config = config

	initialize_gamemode(config.forced_threat_level)
	create_candidates(config.roundstart_players)
	gamemode.pre_setup()

	var/total_antags = 0
	for (var/_ruleset in gamemode.executed_rules)
		var/datum/dynamic_ruleset/ruleset = _ruleset
		total_antags += ruleset.assigned.len

	var/ruleset_list = list()
	for(var/datum/dynamic_ruleset/rule in gamemode.executed_rules)
		ruleset_list[rule.name] = list(
			"scaled" = rule.scaled_times,
			"antags" = rule.assigned.len
		)

	return list(
		"roundstart_players" = config.roundstart_players,
		"threat_level" = gamemode.threat_level,
		"roundstart budget" = gamemode.initial_round_start_budget,
		"roundstart budget %" = gamemode.initial_round_start_budget / gamemode.threat_level * 100,
		"midround budget" = gamemode.mid_round_budget,
		"snapshot" = list(
			"antag_percent" = total_antags / config.roundstart_players,
			"rulesets" = ruleset_list,
		),
	)

/datum/dynamic_simulation_config
	/// How many players round start should there be?
	var/roundstart_players

	/// Optional, force this threat level instead of picking randomly through the lorentz distribution
	var/forced_threat_level

/client/proc/run_dynamic_simulations()
	set name = "Run Dynamic Simulations"
	set category = "Debug"

	var/simulations = input(usr, "Enter number of simulations") as num
	var/roundstart_players = input(usr, "Enter number of round start players") as num
	var/forced_threat_level = input(usr, "Enter forced threat level, if you want one") as num | null

	SSticker.mode = new /datum/game_mode/dynamic
	message_admins("Running dynamic simulations...")

	var/list/outputs = list()

	var/datum/dynamic_simulation_config/dynamic_config = new

	if (roundstart_players)
		dynamic_config.roundstart_players = roundstart_players

	if (forced_threat_level)
		dynamic_config.forced_threat_level = forced_threat_level

	for (var/count in 1 to simulations)
		var/datum/dynamic_simulation/simulator = new
		var/output = simulator.simulate(dynamic_config)
		outputs += list(output)

		if (CHECK_TICK)
			log_world("[count]/[simulations]")

	message_admins("Writing file...")
	if(fexists("data/dynamic_simulations.json"))
		fdel("data/dynamic_simulations.json")
	WRITE_FILE(file("data/dynamic_simulations.json"), json_encode(outputs))
	message_admins("Writing complete.")

/proc/export_dynamic_json_of(ruleset_list)
	var/list/export = list()

	for (var/_ruleset in ruleset_list)
		var/datum/dynamic_ruleset/ruleset = _ruleset
		export[ruleset.name] = list(
			"repeatable_weight_decrease" = ruleset.repeatable_weight_decrease,
			"weight" = ruleset.weight,
			"cost" = ruleset.cost,
			"scaling_cost" = ruleset.scaling_cost,
			"antag_cap" = ruleset.antag_cap,
			"pop_per_requirement" = ruleset.pop_per_requirement,
			"requirements" = ruleset.requirements,
			"base_prob" = ruleset.base_prob,
		)

	return export

#endif
