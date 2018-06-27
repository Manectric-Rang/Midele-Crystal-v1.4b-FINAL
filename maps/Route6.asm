	const_def 2 ; object constants
	const ROUTE6_POKEFAN_M1
	const ROUTE6_POKEFAN_M2
	const ROUTE6_POKEFAN_M3
	const ROUTE6_ZZZ

Route6_MapScripts:
	db 0 ; scene scripts
	db 0 ; callbacks

TrainerPokefanmRex:
	trainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmAllan:
	trainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAllanAfterBattleText
	waitbutton
	closetext
	end

Route6PokefanMScript:
	jumptextfaceplayer Route6PokefanMText

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

Route6PokefanMText:
	text "The road is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is solved."
	done

ZzzBattle:
	applymovement ROUTE6_ZZZ, ZzzMovementBefore
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	opentext
	writetext ScholarZzzSeenText
	waitbutton
	closetext
	winlosstext ScholarZzzBeatenText, ScholarZzzLossText
	setlasttalked ROUTE6_ZZZ
	loadtrainer SCHOOLBOY, Zzz
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	jump .FinishZzzBattle

.FinishZzzBattle:
	opentext
	writetext ScholarZzzAfterBattleText
	waitbutton
	closetext
	applymovement ROUTE6_ZZZ, ZzzMovementAfter
	disappear ROUTE6_ZZZ
	setscene SCENE_FINISHED
	setevent EVENT_BEAT_ZZZ
	playmapmusic
	end

ZzzMovementBefore:
	turn_head RIGHT
	step_end

ZzzMovementAfter:
	step UP
	step_end

Route6UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

PokefanmRexSeenText:
	text "My PHANPY is the"
	line "cutest in the"
	cont "world."
	done

PokefanmRexBeatenText:
	text "My PHANPY!"
	done

PokefanmRexAfterBattleText:
	text "Look how adorable"
	line "my PHANPY acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

PokefanmAllanSeenText:
	text "My TEDDIURSA is"
	line "the cutest in the"
	cont "world."
	done

PokefanmAllanBeatenText:
	text "My TEDDIURSA!"
	done

PokefanmAllanAfterBattleText:
	text "Look how adorable"
	line "my TEDDIURSA acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

ScholarZzzSeenText:
	text "Yo no se ingles"
	line "asi que te"
	cont "aguantas"
	cont "pero yo soy Zzz"
	para "el mas grande"
	
	para "entrenador que"
	line "ha habido jamas."
	
	para "Viajare a"
	line "cualquier lugar,"
	cont "y llegare a"
	cont "cualquier rincon,"
	cont "hasta que" 
	cont "encuentre a mi"
	para "sensei Red Krow!!"
	
	para "Lo has visto?"
	line "Has visto a mi"
	para "sensei Red Crow?"
	
	para "Pues que sepas que"
	line "ahora te reto a un"
	para "combate Pokemon."
	
	para "O tienes miedo?"
	line "eh eh eh eh!!"
	done

ScholarZzzBeatenText:
	text "Noooooooo!!"
	line "no se valen"
	cont "trampas"
	para "ni Pkhex"
	
	para "Sensei Red"
	line "Crow!!"
	cont "Donde estas?"
	done

ScholarZzzLossText:
	text "jajajaja!"
	line "valiente pringao"
	done

ScholarZzzAfterBattleText:
	text "No usaste"
	line "equipo monotipo"
	para "eso no vale!"
	
	para "Asi que te"
	line "llamas <PLAYER>!"

	para "Seguire la"
	line "busqueda para"
	cont "encontrar a mi"
	para "sensei Red Crow."
	
	para "Nos volveremos"
	line "a ver <PLAYER>," 
	cont "y me vengare."
	done

Route6_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 17,  3, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  6,  1, ROUTE_6_SAFFRON_GATE, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event 19,  5, BGEVENT_READ, Route6UndergroundPathSign

	db 4 ; object events
	object_event 17,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, Route6PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event  9, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmRex, -1
	object_event 10, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmAllan, -1
	object_event 6, 2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 2, ZzzBattle, EVENT_BEAT_ZZZ
