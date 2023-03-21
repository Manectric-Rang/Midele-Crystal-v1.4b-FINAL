BattleCommand_FuryCutter: ; 37792
; furycutter

	ld hl, wPlayerFuryCutterCount
	ld a, [hBattleTurn]
	and a
	jr z, .go
	ld hl, wEnemyFuryCutterCount

.go
	ld a, [wAttackMissed]
	and a
	jp nz, ResetFuryCutterCount

	inc [hl]

; Damage capped at 3 turns' worth (40 x 2 x 2 = 160).
	ld a, [hl]
	ld b, a
	cp 4
	jr c, .checkdouble
	ld b, 3

.checkdouble
	dec b
	ret z

; Double the damage
	ld hl, wCurDamage + 1
	sla [hl]
	dec hl
	rl [hl]
	jr nc, .checkdouble

; No overflow
	ld a, $ff
	ld [hli], a
	ld [hl], a
	ret

; 377be


ResetFuryCutterCount: ; 377be

	push hl

	ld hl, wPlayerFuryCutterCount
	ld a, [hBattleTurn]
	and a
	jr z, .reset
	ld hl, wEnemyFuryCutterCount

.reset
	xor a
	ld [hl], a

	pop hl
	ret

; 377ce
