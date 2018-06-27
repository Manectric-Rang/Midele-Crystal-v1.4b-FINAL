; Pokémon swarms in grass

SwarmGrassWildMons: ; 0x2b8d0

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; day
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; nite
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, NIDORAN_M
	db 16, NIDORAN_F
	db 18, YANMA
	db 20, YANMA
	db 16, PIDGEY
	db 10, DITTO
	db 10, DITTO
	; day
	db 16, NIDORAN_M
	db 16, NIDORAN_F
	db 18, YANMA
	db 20, YANMA
	db 16, PIDGEY
	db 10, DITTO
	db 10, DITTO
	; nite
	db 16, NIDORAN_M
	db 16, NIDORAN_F
	db 18, YANMA
	db 20, YANMA
	db 16, HOOTHOOT
	db 10, DITTO
	db 10, DITTO

	db -1 ; end
