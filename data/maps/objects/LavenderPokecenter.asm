	object_const_def
	const_export LAVENDERPOKECENTER_NURSE
	const_export LAVENDERPOKECENTER_GENTLEMAN
	const_export LAVENDERPOKECENTER_LITTLE_GIRL
	const_export LAVENDERPOKECENTER_LINK_RECEPTIONIST

LavenderPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, TEXT_LAVENDERPOKECENTER_NURSE
	object_event  5,  3, SPRITE_GENTLEMAN, STAY, NONE, TEXT_LAVENDERPOKECENTER_GENTLEMAN
	object_event  2,  6, SPRITE_LITTLE_GIRL, WALK, UP_DOWN, TEXT_LAVENDERPOKECENTER_LITTLE_GIRL
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_LAVENDERPOKECENTER_LINK_RECEPTIONIST

	def_warps_to LAVENDER_POKECENTER
