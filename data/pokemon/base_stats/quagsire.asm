	db QUAGSIRE ; 195

	db  95,  85,  85,  35,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 90 ; catch rate
	db 137 ; base exp
	db MYSTIC_WATER, MYSTIC_WATER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 6 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/quagsire/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_AMPHIBIAN, EGG_FIELD ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, DEFENSE_CURL, REST, ATTRACT, SURF, STRENGTH, FLASH, WATERFALL, WHIRLPOOL, ICE_BEAM
	; end
