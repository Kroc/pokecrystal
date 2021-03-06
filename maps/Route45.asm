const_value set 2
	const ROUTE45_BATTLE_GIRL
	const ROUTE45_POKEFAN_M1
	const ROUTE45_POKEFAN_M2
	const ROUTE45_POKEFAN_M3
	const ROUTE45_POKEFAN_M4
	const ROUTE45_BLACK_BELT
	const ROUTE45_COOLTRAINER_M
	const ROUTE45_COOLTRAINER_F
	const ROUTE45_FRUIT_TREE_1
	const ROUTE45_FRUIT_TREE_2
	const ROUTE45_POKE_BALL1
	const ROUTE45_POKE_BALL2
	const ROUTE45_POKE_BALL3
	const ROUTE45_POKE_BALL4
	const ROUTE45_YOUNGSTER

Route45_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerBattleGirlNozomi:
	trainer EVENT_BEAT_BATTLE_GIRL_NOZOMI, BATTLE_GIRL, NOZOMI, BattleGirlNozomiSeenText, BattleGirlNozomiBeatenText, 0, BattleGirlNozomiScript

BattleGirlNozomiScript:
	end_if_just_battled
	opentext
	writetext BattleGirlNozomiAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltKenji:
	trainer EVENT_BEAT_BLACKBELT_KENJI, BLACKBELT_T, KENJI1, BlackbeltKenji1SeenText, BlackbeltKenji1BeatenText, 0, BlackbeltKenji1Script

BlackbeltKenji1Script:
	writecode VAR_CALLERID, PHONE_BLACKBELT_KENJI
	end_if_just_battled
	opentext
	checkcellnum PHONE_BLACKBELT_KENJI
	iftrue UnknownScript_0x19e0e4
	checkevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	iftrue UnknownScript_0x19e0cd
	special Special_SampleKenjiBreakCountdown
	writetext UnknownText_0x19e5e2
	waitbutton
	setevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	scall UnknownScript_0x19e11b
	jump UnknownScript_0x19e0d0

UnknownScript_0x19e0cd:
	scall UnknownScript_0x19e11f
UnknownScript_0x19e0d0:
	askforphonenumber PHONE_BLACKBELT_KENJI
	if_equal $1, UnknownScript_0x19e12f
	if_equal $2, UnknownScript_0x19e12b
	trainertotext BLACKBELT_T, KENJI1, $0
	scall UnknownScript_0x19e123
	jump UnknownScript_0x19e127

UnknownScript_0x19e0e4:
	checkcode VAR_KENJI_BREAK
	if_not_equal $1, UnknownScript_0x19e127
	checkmorn
	iftrue UnknownScript_0x19e10c
	checknite
	iftrue UnknownScript_0x19e112
	checkevent EVENT_KENJI_ON_BREAK
	iffalse UnknownScript_0x19e127
	scall UnknownScript_0x19e137
	verbosegiveitem PP_UP
	iffalse UnknownScript_0x19e118
	clearevent EVENT_KENJI_ON_BREAK
	special Special_SampleKenjiBreakCountdown
	jump UnknownScript_0x19e127

UnknownScript_0x19e10c:
	writetext UnknownText_0x19e634
	waitbutton
	closetext
	end

UnknownScript_0x19e112:
	writetext UnknownText_0x19e66c
	waitbutton
	closetext
	end

UnknownScript_0x19e118:
	jump UnknownScript_0x19e13b

UnknownScript_0x19e11b:
	jumpstd asknumber1m
	end

UnknownScript_0x19e11f:
	jumpstd asknumber2m
	end

UnknownScript_0x19e123:
	jumpstd registerednumberm
	end

UnknownScript_0x19e127:
	jumpstd numberacceptedm
	end

UnknownScript_0x19e12b:
	jumpstd numberdeclinedm
	end

UnknownScript_0x19e12f:
	jumpstd phonefullm
	end

UnknownScript_0x19e133:
	jumpstd rematchm
	end

UnknownScript_0x19e137:
	jumpstd giftm
	end

UnknownScript_0x19e13b:
	jumpstd packfullm
	end

UnknownScript_0x19e13f:
	setevent EVENT_PARRY_IRON
	jumpstd packfullm
	end

UnknownScript_0x19e146:
	jumpstd rematchgiftm
	end

TrainerHikerErik:
	trainer EVENT_BEAT_HIKER_ERIK, HIKER, ERIK, HikerErikSeenText, HikerErikBeatenText, 0, HikerErikScript

HikerErikScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x19e301
	waitbutton
	closetext
	end

TrainerHikerMichael:
	trainer EVENT_BEAT_HIKER_MICHAEL, HIKER, MICHAEL, HikerMichaelSeenText, HikerMichaelBeatenText, 0, HikerMichaelScript

HikerMichaelScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x19e3b1
	waitbutton
	closetext
	end

TrainerHikerParry:
	trainer EVENT_BEAT_HIKER_PARRY, HIKER, PARRY1, HikerParry1SeenText, HikerParry1BeatenText, 0, HikerParry1Script

HikerParry1Script:
	writecode VAR_CALLERID, PHONE_HIKER_PARRY
	end_if_just_battled
	opentext
	checkflag ENGINE_PARRY
	iftrue UnknownScript_0x19e1b8
	checkcellnum PHONE_HIKER_PARRY
	iftrue UnknownScript_0x19e127
	checkevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	iftrue UnknownScript_0x19e1a1
	writetext UnknownText_0x19e434
	buttonsound
	setevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	scall UnknownScript_0x19e11b
	jump UnknownScript_0x19e1a4

UnknownScript_0x19e1a1:
	scall UnknownScript_0x19e11f
UnknownScript_0x19e1a4:
	askforphonenumber PHONE_HIKER_PARRY
	if_equal $1, UnknownScript_0x19e12f
	if_equal $2, UnknownScript_0x19e12b
	trainertotext HIKER, PARRY1, $0
	scall UnknownScript_0x19e123
	jump UnknownScript_0x19e127

UnknownScript_0x19e1b8:
	scall UnknownScript_0x19e133
	winlosstext HikerParry1BeatenText, 0
	copybytetovar wParryFightCount
	if_equal 2, .Fight2
	if_equal 1, .Fight1
	if_equal 0, .LoadFight0
.Fight2:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer HIKER, PARRY1
	startbattle
	reloadmapafterbattle
	loadvar wParryFightCount, 1
	clearflag ENGINE_PARRY
	end

.LoadFight1:
	loadtrainer HIKER, PARRY2
	startbattle
	reloadmapafterbattle
	loadvar wParryFightCount, 2
	clearflag ENGINE_PARRY
	end

.LoadFight2:
	loadtrainer HIKER, PARRY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARRY
	checkevent EVENT_PARRY_IRON
	iftrue UnknownScript_0x19e219
	checkevent EVENT_GOT_IRON_FROM_PARRY
	iftrue UnknownScript_0x19e218
	scall UnknownScript_0x19e146
	verbosegiveitem IRON
	iffalse UnknownScript_0x19e13f
	setevent EVENT_GOT_IRON_FROM_PARRY
	jump UnknownScript_0x19e127

UnknownScript_0x19e218:
	end

UnknownScript_0x19e219:
	opentext
	writetext UnknownText_0x19e52c
	waitbutton
	verbosegiveitem IRON
	iffalse UnknownScript_0x19e13f
	clearevent EVENT_PARRY_IRON
	setevent EVENT_GOT_IRON_FROM_PARRY
	jump UnknownScript_0x19e127

TrainerHikerTimothy:
	trainer EVENT_BEAT_HIKER_TIMOTHY, HIKER, TIMOTHY, HikerTimothySeenText, HikerTimothyBeatenText, 0, HikerTimothyScript

HikerTimothyScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x19e4f1
	waitbutton
	closetext
	end

TrainerCooltrainermRyan:
	trainer EVENT_BEAT_COOLTRAINERM_RYAN, COOLTRAINERM, RYAN, CooltrainermRyanSeenText, CooltrainermRyanBeatenText, 0, CooltrainermRyanScript

CooltrainermRyanScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x19e70d
	waitbutton
	closetext
	end

TrainerCooltrainerfKelly:
	trainer EVENT_BEAT_COOLTRAINERF_KELLY, COOLTRAINERF, KELLY, CooltrainerfKellySeenText, CooltrainerfKellyBeatenText, 0, CooltrainerfKellyScript

CooltrainerfKellyScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x19e7d1
	waitbutton
	closetext
	end

TrainerCamperQuentin:
	trainer EVENT_BEAT_CAMPER_QUENTIN, CAMPER, QUENTIN, UnknownText_0x19e87f, UnknownText_0x19e899, 0, CamperQuentinScript

CamperQuentinScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x19e8bb
	waitbutton
	closetext
	end

Route45Sign:
	jumptext Route45SignText

FruitTreeScript_0x19e294:
	fruittree FRUITTREE_ROUTE_45_1

FruitTreeScript_Route45SitrusBerry:
	fruittree FRUITTREE_ROUTE_45_2

Route45Nugget:
	itemball NUGGET

Route45Revive:
	itemball REVIVE

Route45Elixer:
	itemball ELIXER

Route45MaxPotion:
	itemball MAX_POTION

Route45HiddenPpUp:
	dwb EVENT_ROUTE_45_HIDDEN_PP_UP, PP_UP

BattleGirlNozomiSeenText:
	text "This is no place"
	line "for weak #mon!"
	done

BattleGirlNozomiBeatenText:
	text "What a fight!"
	done

BattleGirlNozomiAfterText:
	text "Thanks for the"
	line "workout, <PLAYER>!"
	done

HikerErikSeenText:
	text "Be prepared for"
	line "anything!"

	para "Let me see if your"
	line "#mon have been"
	cont "raised properly!"
	done

HikerErikBeatenText:
	text "Oh, I lost that!"
	done

UnknownText_0x19e301:
	text "I'll head back to"
	line "Blackthorn's Ice"

	para "Path and train"
	line "some more."
	done

HikerMichaelSeenText:
	text "Yo! You're spunky!"
	line "But you know what?"

	para "When it comes to"
	line "sheer spunkiness,"
	cont "I'm the man!"
	done

HikerMichaelBeatenText:
	text "My #mon weren't"
	line "spunky enough!"
	done

UnknownText_0x19e3b1:
	text "Boy, do I love"
	line "HP Up! Mmmm, yum!"

	para "I keep drinking my"
	line "#mon's!"

	para "I can't help it!"
	done

HikerParry1SeenText:
	text "My #mon are"
	line "power packed!"
	done

HikerParry1BeatenText:
	text "Wahahah! I'm the"
	line "big loser!"
	done

UnknownText_0x19e434:
	text "I'm not much good"
	line "at thinking, see?"

	para "So, I just plow"
	line "ahead with power!"
	done

HikerTimothySeenText:
	text "Why do I climb"
	line "mountains?"

	para "Because they're"
	line "there."

	para "Why do I train"
	line "#mon?"

	para "Because they're"
	line "there!"
	done

HikerTimothyBeatenText:
	text "Losses…"
	line "They're there too!"
	done

UnknownText_0x19e4f1:
	text "The best thing to"
	line "ever happen to me"

	para "was discovering"
	line "#mon."
	done

UnknownText_0x19e52c:
	text "I just can't find"
	line "a way to win!"

	para "Keep it up!"

	para "Oh, and take this"
	line "--it's the gift"

	para "you couldn't take"
	line "when we last met."
	done

BlackbeltKenji1SeenText:
	text "I was training"
	line "here alone."

	para "Behold the fruits"
	line "of my labor!"
	done

BlackbeltKenji1BeatenText:
	text "Waaaargh!"
	done

UnknownText_0x19e5e2:
	text "This calls for"
	line "extreme measures."

	para "I must take to the"
	line "hills and train in"
	cont "solitude."
	done

UnknownText_0x19e634:
	text "I'm going to train"
	line "a bit more before"
	cont "I break for lunch."
	done

UnknownText_0x19e66c:
	text "We had plenty of"
	line "rest at lunch, so"

	para "now we're all"
	line "ready to go again!"

	para "We're going to"
	line "train again!"
	done

CooltrainermRyanSeenText:
	text "What are your"
	line "thoughts on rais-"
	cont "ing #mon?"
	done

CooltrainermRyanBeatenText:
	text "You've won my"
	line "respect."
	done

UnknownText_0x19e70d:
	text "I see you're rais-"
	line "ing your #mon"
	cont "with care."

	para "The bond you build"
	line "will save you in"
	cont "tough situations."
	done

CooltrainerfKellySeenText:
	text "What is your"
	line "battle strategy?"

	para "It is foolish to"
	line "use strong moves"
	cont "indiscriminately."
	done

CooltrainerfKellyBeatenText:
	text "Fine. I lost."
	done

UnknownText_0x19e7d1:
	text "I'm not in favor"
	line "of overly power-"
	cont "ful moves."

	para "I want to win, but"
	line "I also don't want"
	cont "to harm #mon."
	done

UnknownText_0x19e87f:
	text "I'm really, really"
	line "tough!"

	para "Is there anywhere"
	line "I can prove how"
	cont "tough I really am?"
	done

UnknownText_0x19e899:
	text "I was tough at the"
	line "Battle Tower…"
	done

UnknownText_0x19e8bb:
	text "Have you been to"
	line "the Battle Tower?"

	para "I never, ever lose"
	line "there, but…"
	done

Route45SignText:
	text "Route 45"
	line "Mountain Rd. Ahead"
	done

Route45_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $5, $4, 1, DARK_CAVE_BLACKTHORN_ENTRANCE

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 4, 14, SIGNPOST_READ, Route45Sign
	signpost 78, 17, SIGNPOST_ITEM, Route45HiddenPpUp

.PersonEvents:
	db 15
	person_event SPRITE_COOLTRAINER_F, 59, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerBattleGirlNozomi, -1
	person_event SPRITE_POKEFAN_M, 18, 12, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 1, TrainerHikerErik, -1
	person_event SPRITE_POKEFAN_M, 65, 19, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerHikerMichael, -1
	person_event SPRITE_POKEFAN_M, 28, 7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerHikerParry, -1
	person_event SPRITE_POKEFAN_M, 65, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 1, TrainerHikerTimothy, -1
	person_event SPRITE_BLACK_BELT, 50, 16, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerBlackbeltKenji, -1
	person_event SPRITE_COOLTRAINER_M, 18, 21, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 1, TrainerCooltrainermRyan, -1
	person_event SPRITE_COOLTRAINER_F, 33, 6, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 3, TrainerCooltrainerfKelly, -1
	person_event SPRITE_FRUIT_TREE, 80, 20, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FruitTreeScript_0x19e294, -1
	person_event SPRITE_FRUIT_TREE, 78, 20, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FruitTreeScript_Route45SitrusBerry, -1
	person_event SPRITE_POKE_BALL, 51, 8, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route45Nugget, EVENT_ROUTE_45_NUGGET
	person_event SPRITE_POKE_BALL, 66, 5, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route45Revive, EVENT_ROUTE_45_REVIVE
	person_event SPRITE_POKE_BALL, 20, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route45Elixer, EVENT_ROUTE_45_ELIXER
	person_event SPRITE_POKE_BALL, 32, 15, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route45MaxPotion, EVENT_ROUTE_45_MAX_POTION
	person_event SPRITE_YOUNGSTER, 70, 4, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 2, TrainerCamperQuentin, -1
