	db NIDORAN_M ; 032

	db  46,  57,  40,  50,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 6 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidoran_m/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, DEFENSE_CURL, DETECT, REST, ATTRACT, THIEF, CUT, STRENGTH, THUNDERBOLT, LOVELY_KISS, MORNING_SUN
	; end
