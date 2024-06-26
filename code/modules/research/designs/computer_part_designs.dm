////////////////////////////////////////
///////////Computer Parts///////////////
////////////////////////////////////////

/datum/design/disk/normal
	name = "Hard Disk Drive"
	id = "hdd_basic"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 400, /datum/material/glass = 100)
	build_path = /obj/item/computer_hardware/hard_drive
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI | DESIGN_FAB_ENGINEERING

/datum/design/disk/advanced
	name = "Advanced Hard Disk Drive"
	id = "hdd_advanced"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 800, /datum/material/glass = 200)
	build_path = /obj/item/computer_hardware/hard_drive/advanced
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI | DESIGN_FAB_ENGINEERING

/datum/design/disk/super
	name = "Super Hard Disk Drive"
	id = "hdd_super"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 1600, /datum/material/glass = 400)
	build_path = /obj/item/computer_hardware/hard_drive/super
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/disk/cluster
	name = "Cluster Hard Disk Drive"
	id = "hdd_cluster"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 3200, /datum/material/glass = 800)
	build_path = /obj/item/computer_hardware/hard_drive/cluster
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/disk/small
	name = "Solid State Drive"
	id = "ssd_small"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 800, /datum/material/glass = 200)
	build_path = /obj/item/computer_hardware/hard_drive/small
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/disk/micro
	name = "Micro Solid State Drive"
	id = "ssd_micro"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 400, /datum/material/glass = 100)
	build_path = /obj/item/computer_hardware/hard_drive/micro
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

// Network cards
/datum/design/netcard/basic
	name = "Network Card"
	id = "netcard_basic"
	build_type = IMPRINTER | AWAY_IMPRINTER
	materials = list(/datum/material/iron = 250, /datum/material/glass = 100)
	build_path = /obj/item/computer_hardware/network_card
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/netcard/advanced
	name = "Advanced Network Card"
	id = "netcard_advanced"
	build_type = IMPRINTER | AWAY_IMPRINTER
	materials = list(/datum/material/iron = 500, /datum/material/glass = 200)
	build_path = /obj/item/computer_hardware/network_card/advanced
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/netcard/wired
	name = "Wired Network Card"
	id = "netcard_wired"
	build_type = IMPRINTER | AWAY_IMPRINTER
	materials = list(/datum/material/iron = 2500, /datum/material/glass = 400)
	build_path = /obj/item/computer_hardware/network_card/wired
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

// Data disks
/datum/design/portabledrive/basic
	name = "Data Disk"
	id = "portadrive_basic"
	build_type = IMPRINTER | AWAY_IMPRINTER
	materials = list(/datum/material/glass = 800)
	build_path = /obj/item/computer_hardware/hard_drive/portable
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/portabledrive/advanced
	name = "Advanced Data Disk"
	id = "portadrive_advanced"
	build_type = IMPRINTER | AWAY_IMPRINTER
	materials = list(/datum/material/glass = 1600)
	build_path = /obj/item/computer_hardware/hard_drive/portable/advanced
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/portabledrive/super
	name = "Super Data Disk"
	id = "portadrive_super"
	build_type = IMPRINTER | AWAY_IMPRINTER
	materials = list(/datum/material/glass = 3200)
	build_path = /obj/item/computer_hardware/hard_drive/portable/super
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

// Card slot
/datum/design/cardslot
	name = "ID Card Slot"
	id = "cardslot"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 600)
	build_path = /obj/item/computer_hardware/card_slot
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

// Intellicard slot
/datum/design/aislot
	name = "Intellicard Slot"
	id = "aislot"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 600)
	build_path = /obj/item/computer_hardware/ai_slot
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

// Mini printer
/datum/design/miniprinter
	name = "Miniprinter"
	id = "miniprinter"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 600)
	build_path = /obj/item/computer_hardware/printer/mini
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

// APC Link
/datum/design/apc_link
	name = "Area Power Connector"
	id = "APClink"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 2000)
	build_path = /obj/item/computer_hardware/recharger/apc_recharger
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

// Batteries
/datum/design/battery/controller
	name = "Power Cell Controller"
	id = "bat_control"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 400)
	build_path = /obj/item/computer_hardware/battery
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/battery/normal
	name = "Battery Module"
	id = "bat_normal"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 400)
	build_path = /obj/item/stock_parts/cell/computer
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/battery/advanced
	name = "Advanced Battery Module"
	id = "bat_advanced"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 800)
	build_path = /obj/item/stock_parts/cell/computer/advanced
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/battery/super
	name = "Super Battery Module"
	id = "bat_super"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 1600)
	build_path = /obj/item/stock_parts/cell/computer/super
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/battery/nano
	name = "Nano Battery Module"
	id = "bat_nano"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 200)
	build_path = /obj/item/stock_parts/cell/computer/nano
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI

/datum/design/battery/micro
	name = "Micro Battery Module"
	id = "bat_micro"
	build_type = FABRICATOR
	materials = list(/datum/material/iron = 400)
	build_path = /obj/item/stock_parts/cell/computer/micro
	category = list(DCAT_COMPUTER_PART)
	mapload_design_flags = DESIGN_FAB_OMNI
