PrintMonTypes: ; 5090d
; Print one or both types of [CurSpecies]
; on the stats screen at hl.

	push hl
	call GetBaseData
	pop hl

	; PrintMonTypes is only called for the stats screen,
	; so assume that the full data is in TempMon
	; Armored Mewtwo is Psychic/Steel
	ld a, [TempMonSpecies]
	cp MEWTWO
	jr nz, .not_armored_mewtwo
	ld a, [TempMonItem]
	cp ARMOR_SUIT
	jr nz, .not_armored_mewtwo
	ld a, STEEL
	ld [BaseType2], a
.not_armored_mewtwo

	push hl
	ld a, [BaseType1]
	call .Print

	; Single-typed monsters really
	; have two of the same type.
	ld a, [BaseType1]
	ld b, a
	ld a, [BaseType2]
	cp b
	pop hl
	jr z, .hide_type_2

	ld bc, SCREEN_WIDTH
	add hl, bc

.Print:
	ld b, a
	jr .PrintType

.hide_type_2
	; Erase any type name that was here before.
	; Seems to be pointless in localized versions.
	ld a, " "
	ld bc, SCREEN_WIDTH - 3
	add hl, bc
	ld [hl], a
	inc bc
	add hl, bc
	ld bc, 5
	jp ByteFill
; 5093a

.PrintType: ; 50953
; Print type b at hl.

	ld a, b

	push hl
	add a
	ld hl, TypeNames
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl

	jp PlaceString
; 50964


GetTypeName: ; 50964
; Copy the name of type [wd265] to StringBuffer1.

	ld a, [wd265]
	ld hl, TypeNames
	ld e, a
	ld d, 0
rept 2
	add hl, de
endr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, StringBuffer1
	ld bc, 13
	jp CopyBytes
; 5097b


TypeNames: ; 5097b
	dw Normal
	dw Fighting
	dw Flying
	dw Poison
	dw Ground
	dw Rock
	dw Bug
	dw Ghost
	dw Steel
	dw Fire
	dw Water
	dw Grass
	dw Electric
	dw Psychic
	dw Ice
	dw Dragon
	dw Dark
	dw Fairy
	dw UnknownType

Normal:      db "Normal@"
Fighting:    db "Fighting@"
Flying:      db "Flying@"
Poison:      db "Poison@"
Ground:      db "Ground@"
Rock:        db "Rock@"
Bug:         db "Bug@"
Ghost:       db "Ghost@"
Steel:       db "Steel@"
Fire:        db "Fire@"
Water:       db "Water@"
Grass:       db "Grass@"
Electric:    db "Electric@"
Psychic:     db "Psychic@"
Ice:         db "Ice@"
Dragon:      db "Dragon@"
Dark:        db "Dark@"
Fairy:       db "Fairy@"
UnknownType: db "???@"

; 50a28
