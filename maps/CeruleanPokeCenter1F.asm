const_value set 2
	const CERULEANPOKECENTER1F_NURSE
	const CERULEANPOKECENTER1F_SUPER_NERD
	const CERULEANPOKECENTER1F_GYM_GUY

CeruleanPokeCenter1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

NurseScript_0x18820f:
	jumpstd pokecenternurse

SuperNerdScript_0x188212:
	jumptextfaceplayer UnknownText_0x188221

GymGuyScript_0x18821e:
	checkunits
	iftrue .metric
	jumptextfaceplayer UnknownText_0x1882ff_Imperial
.metric
	jumptextfaceplayer UnknownText_0x1882ff_Metric

UnknownText_0x188221:
	text "For battles, I'd"
	line "much rather use"

	para "#mon I've been"
	line "raising, even if"

	para "they're weaker"
	line "than some newly"
	cont "caught #mon."
	done

UnknownText_0x1882ff_Imperial:
	text "The Magnet Train"
	line "travels at over"

	para "340 mph. It goes"
	line "between Kanto and"

	para "Johto in almost no"
	line "time at all."

	para "It really makes"
	line "Johto accessible."
	done

UnknownText_0x1882ff_Metric:
	text "The Magnet Train"
	line "travels at over"

	para "550 kph. It goes"
	line "between Kanto and"

	para "Johto in almost no"
	line "time at all."

	para "It really makes"
	line "Johto accessible."
	done

CeruleanPokeCenter1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $7, $5, 4, CERULEAN_CITY
	warp_def $7, $6, 4, CERULEAN_CITY
	warp_def $7, $0, 1, POKECENTER_2F

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_NURSE, 1, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NurseScript_0x18820f, -1
	person_event SPRITE_SUPER_NERD, 4, 8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SuperNerdScript_0x188212, -1
	person_event SPRITE_GYM_GUY, 5, 1, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, GymGuyScript_0x18821e, -1
