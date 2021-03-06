BattleAnimObjects: ; ccb56
battleanimobj: MACRO

; ??, ??, frameset, function, ??, tile offset
	db \1, \2, \3, \4, \5, \6
endm


; ANIM_OBJ_00
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_00, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_01
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_01, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_02
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_02, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_03
	battleanimobj $01, $90, BATTLEANIMFRAMESET_00, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_04
	battleanimobj $01, $90, BATTLEANIMFRAMESET_01, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_05
	battleanimobj $01, $90, BATTLEANIMFRAMESET_02, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_06
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_03, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_07
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_04, BATTLEANIMFUNC_1B, $02, $01

; ANIM_OBJ_08
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_05, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_09
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_06, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_0A
	battleanimobj $01, $90, BATTLEANIMFRAMESET_07, BATTLEANIMFUNC_09, $02, $01

; ANIM_OBJ_0B
	battleanimobj $01, $aa, BATTLEANIMFRAMESET_10, BATTLEANIMFUNC_10, $04, $03

; ANIM_OBJ_0C
	battleanimobj $01, $90, BATTLEANIMFRAMESET_0E, BATTLEANIMFUNC_04, $04, $03

; ANIM_OBJ_0D
	battleanimobj $01, $90, BATTLEANIMFRAMESET_0F, BATTLEANIMFUNC_03, $04, $03

; ANIM_OBJ_0E
	battleanimobj $01, $90, BATTLEANIMFRAMESET_10, BATTLEANIMFUNC_08, $04, $03

; ANIM_OBJ_0F
	battleanimobj $01, $90, BATTLEANIMFRAMESET_0F, BATTLEANIMFUNC_0A, $04, $03

; ANIM_OBJ_BURNED
	battleanimobj $01, $90, BATTLEANIMFRAMESET_11, BATTLEANIMFUNC_03, $04, $03

; ANIM_OBJ_11
	battleanimobj $01, $90, BATTLEANIMFRAMESET_12, BATTLEANIMFUNC_08, $06, $0a

; ANIM_OBJ_12
	battleanimobj $01, $90, BATTLEANIMFRAMESET_13, BATTLEANIMFUNC_00, $06, $0a

; ANIM_OBJ_13
	battleanimobj $01, $90, BATTLEANIMFRAMESET_14, BATTLEANIMFUNC_01, $06, $0a

; ANIM_OBJ_14
	battleanimobj $21, $78, BATTLEANIMFRAMESET_16, BATTLEANIMFUNC_0B, $05, $06

; ANIM_OBJ_POKE_BALL
	battleanimobj $00, $00, BATTLEANIMFRAMESET_09, BATTLEANIMFUNC_12, $04, $0b

; ANIM_OBJ_16
	battleanimobj $00, $00, BATTLEANIMFRAMESET_09, BATTLEANIMFUNC_13, $04, $0b

; ANIM_OBJ_17
	battleanimobj $01, $90, BATTLEANIMFRAMESET_18, BATTLEANIMFUNC_00, $04, $08

; ANIM_OBJ_18
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_18, BATTLEANIMFUNC_00, $04, $08

; ANIM_OBJ_19
	battleanimobj $01, $90, BATTLEANIMFRAMESET_1D, BATTLEANIMFUNC_06, $02, $0c

; ANIM_OBJ_1A
	battleanimobj $01, $b4, BATTLEANIMFRAMESET_1F, BATTLEANIMFUNC_38, $02, $0c

; ANIM_OBJ_1B
	battleanimobj $01, $90, BATTLEANIMFRAMESET_08, BATTLEANIMFUNC_00, $02, $07

; ANIM_OBJ_1C
	battleanimobj $01, $a0, BATTLEANIMFRAMESET_08, BATTLEANIMFUNC_00, $02, $07

; ANIM_OBJ_1D
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_19, BATTLEANIMFUNC_07, $07, $09

; ANIM_OBJ_1E
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_1A, BATTLEANIMFUNC_07, $07, $09

; ANIM_OBJ_1F
	battleanimobj $01, $b0, BATTLEANIMFRAMESET_1B, BATTLEANIMFUNC_36, $07, $09

; ANIM_OBJ_20
	battleanimobj $01, $b0, BATTLEANIMFRAMESET_84, BATTLEANIMFUNC_36, $06, $21

; ANIM_OBJ_21
	battleanimobj $01, $90, BATTLEANIMFRAMESET_21, BATTLEANIMFUNC_0C, $06, $0d

; ANIM_OBJ_22
	battleanimobj $00, $00, BATTLEANIMFRAMESET_23, BATTLEANIMFUNC_0D, $06, $0d

; ANIM_OBJ_23
	battleanimobj $01, $90, BATTLEANIMFRAMESET_24, BATTLEANIMFUNC_0E, $02, $0e

; ANIM_OBJ_24
	battleanimobj $61, $80, BATTLEANIMFRAMESET_27, BATTLEANIMFUNC_0F, $06, $04

; ANIM_OBJ_25
	battleanimobj $01, $b4, BATTLEANIMFRAMESET_2A, BATTLEANIMFUNC_00, $06, $04

; ANIM_OBJ_26
	battleanimobj $01, $40, BATTLEANIMFRAMESET_2B, BATTLEANIMFUNC_11, $05, $0f

; ANIM_OBJ_27
	battleanimobj $61, $98, BATTLEANIMFRAMESET_2C, BATTLEANIMFUNC_00, $03, $10

; ANIM_OBJ_28
	battleanimobj $61, $98, BATTLEANIMFRAMESET_2D, BATTLEANIMFUNC_09, $03, $10

; ANIM_OBJ_29
	battleanimobj $01, $b8, BATTLEANIMFRAMESET_2E, BATTLEANIMFUNC_00, $06, $0a

; ANIM_OBJ_FROZEN
	battleanimobj $01, $b8, BATTLEANIMFRAMESET_2F, BATTLEANIMFUNC_00, $06, $0a

; ANIM_OBJ_2B
	battleanimobj $01, $b8, BATTLEANIMFRAMESET_30, BATTLEANIMFUNC_14, $07, $11

; ANIM_OBJ_2C
	battleanimobj $01, $90, BATTLEANIMFRAMESET_21, BATTLEANIMFUNC_14, $03, $0d

; ANIM_OBJ_2D
	battleanimobj $21, $b0, BATTLEANIMFRAMESET_31, BATTLEANIMFUNC_00, $03, $05

; ANIM_OBJ_2E
	battleanimobj $21, $b0, BATTLEANIMFRAMESET_32, BATTLEANIMFUNC_00, $03, $05

; ANIM_OBJ_2F
	battleanimobj $21, $b0, BATTLEANIMFRAMESET_33, BATTLEANIMFUNC_00, $03, $05

; ANIM_OBJ_30
	battleanimobj $21, $90, BATTLEANIMFRAMESET_34, BATTLEANIMFUNC_15, $03, $05

; ANIM_OBJ_31
	battleanimobj $21, $90, BATTLEANIMFRAMESET_36, BATTLEANIMFUNC_00, $03, $05

; ANIM_OBJ_LIGHTNING_BOLT
	battleanimobj $21, $90, BATTLEANIMFRAMESET_37, BATTLEANIMFUNC_03, $02, $08

; ANIM_OBJ_33
	battleanimobj $21, $90, BATTLEANIMFRAMESET_38, BATTLEANIMFUNC_00, $03, $05

; ANIM_OBJ_34
	battleanimobj $21, $90, BATTLEANIMFRAMESET_39, BATTLEANIMFUNC_03, $02, $08

; ANIM_OBJ_35
	battleanimobj $21, $90, BATTLEANIMFRAMESET_3A, BATTLEANIMFUNC_16, $02, $02

; ANIM_OBJ_36
	battleanimobj $01, $90, BATTLEANIMFRAMESET_3C, BATTLEANIMFUNC_17, $02, $02

; ANIM_OBJ_37
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_3E, BATTLEANIMFUNC_00, $02, $02

; ANIM_OBJ_38
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_3F, BATTLEANIMFUNC_00, $02, $02

; ANIM_OBJ_39
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_40, BATTLEANIMFUNC_00, $02, $02

; ANIM_OBJ_3A
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_41, BATTLEANIMFUNC_00, $02, $02

; ANIM_OBJ_3B
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_42, BATTLEANIMFUNC_00, $02, $02

; ANIM_OBJ_3C
	battleanimobj $01, $88, BATTLEANIMFRAMESET_43, BATTLEANIMFUNC_18, $05, $12

; ANIM_OBJ_3D
	battleanimobj $01, $88, BATTLEANIMFRAMESET_44, BATTLEANIMFUNC_00, $05, $12

; ANIM_OBJ_GUST
	battleanimobj $21, $b8, BATTLEANIMFRAMESET_45, BATTLEANIMFUNC_19, $02, $13

; ANIM_OBJ_3F
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_46, BATTLEANIMFUNC_00, $02, $14

; ANIM_OBJ_40
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_47, BATTLEANIMFUNC_00, $02, $14

; ANIM_OBJ_41
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_48, BATTLEANIMFUNC_1A, $02, $14

; ANIM_OBJ_42
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_49, BATTLEANIMFUNC_1A, $02, $14

; ANIM_OBJ_43
	battleanimobj $21, $98, BATTLEANIMFRAMESET_4A, BATTLEANIMFUNC_01, $02, $14

; ANIM_OBJ_44
	battleanimobj $21, $80, BATTLEANIMFRAMESET_4B, BATTLEANIMFUNC_00, $03, $11

; ANIM_OBJ_45
	battleanimobj $01, $88, BATTLEANIMFRAMESET_4C, BATTLEANIMFUNC_1C, $05, $12

; ANIM_OBJ_46
	battleanimobj $21, $b0, BATTLEANIMFRAMESET_4D, BATTLEANIMFUNC_1D, $02, $15

; ANIM_OBJ_47
	battleanimobj $01, $b0, BATTLEANIMFRAMESET_51, BATTLEANIMFUNC_1E, $03, $11

; ANIM_OBJ_48
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_52, BATTLEANIMFUNC_1F, $05, $16

; ANIM_OBJ_49
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_54, BATTLEANIMFUNC_1F, $05, $16

; ANIM_OBJ_4A
	battleanimobj $21, $68, BATTLEANIMFRAMESET_56, BATTLEANIMFUNC_20, $05, $06

; ANIM_OBJ_4B
	battleanimobj $21, $90, BATTLEANIMFRAMESET_59, BATTLEANIMFUNC_21, $02, $0e

; ANIM_OBJ_4C
	battleanimobj $21, $90, BATTLEANIMFRAMESET_5C, BATTLEANIMFUNC_02, $02, $17

; ANIM_OBJ_4D
	battleanimobj $01, $90, BATTLEANIMFRAMESET_5D, BATTLEANIMFUNC_22, $03, $11

; ANIM_OBJ_4E
	battleanimobj $61, $88, BATTLEANIMFRAMESET_5F, BATTLEANIMFUNC_00, $03, $10

; ANIM_OBJ_4F
	battleanimobj $61, $88, BATTLEANIMFRAMESET_2D, BATTLEANIMFUNC_09, $03, $10

; ANIM_OBJ_50
	battleanimobj $21, $88, BATTLEANIMFRAMESET_60, BATTLEANIMFUNC_00, $03, $18

; ANIM_OBJ_51
	battleanimobj $21, $80, BATTLEANIMFRAMESET_60, BATTLEANIMFUNC_00, $02, $18

; ANIM_OBJ_CHICK
	battleanimobj $21, $50, BATTLEANIMFRAMESET_61, BATTLEANIMFUNC_23, $03, $19

; ANIM_OBJ_53
	battleanimobj $01, $80, BATTLEANIMFRAMESET_63, BATTLEANIMFUNC_24, $02, $19

; ANIM_OBJ_54
	battleanimobj $01, $80, BATTLEANIMFRAMESET_66, BATTLEANIMFUNC_25, $02, $19

; ANIM_OBJ_SKULL
	battleanimobj $01, $50, BATTLEANIMFRAMESET_1C, BATTLEANIMFUNC_00, $02, $0c

; ANIM_OBJ_56
	battleanimobj $21, $a8, BATTLEANIMFRAMESET_67, BATTLEANIMFUNC_26, $07, $1a

; ANIM_OBJ_57
	battleanimobj $21, $a8, BATTLEANIMFRAMESET_68, BATTLEANIMFUNC_00, $07, $1a

; ANIM_OBJ_58
	battleanimobj $21, $90, BATTLEANIMFRAMESET_69, BATTLEANIMFUNC_01, $02, $1a

; ANIM_OBJ_PARALYZED
	battleanimobj $21, $90, BATTLEANIMFRAMESET_6D, BATTLEANIMFUNC_28, $03, $19

; ANIM_OBJ_5A
	battleanimobj $21, $90, BATTLEANIMFRAMESET_6A, BATTLEANIMFUNC_27, $02, $1b

; ANIM_OBJ_5B
	battleanimobj $00, $00, BATTLEANIMFRAMESET_6F, BATTLEANIMFUNC_29, $02, $1c

; ANIM_OBJ_5C
	battleanimobj $21, $48, BATTLEANIMFRAMESET_70, BATTLEANIMFUNC_29, $02, $1c

; ANIM_OBJ_5D
	battleanimobj $21, $48, BATTLEANIMFRAMESET_6F, BATTLEANIMFUNC_29, $02, $1c

; ANIM_OBJ_5E
	battleanimobj $21, $78, BATTLEANIMFRAMESET_6F, BATTLEANIMFUNC_2A, $02, $1c

; ANIM_OBJ_5F
	battleanimobj $61, $90, BATTLEANIMFRAMESET_71, BATTLEANIMFUNC_2B, $02, $1d

; ANIM_OBJ_60
	battleanimobj $61, $90, BATTLEANIMFRAMESET_72, BATTLEANIMFUNC_2C, $02, $1d

; ANIM_OBJ_61
	battleanimobj $01, $48, BATTLEANIMFRAMESET_73, BATTLEANIMFUNC_2D, $04, $1e

; ANIM_OBJ_62
	battleanimobj $01, $90, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_06, $02, $15

; ANIM_OBJ_63
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_75, BATTLEANIMFUNC_2E, $07, $19

; ANIM_OBJ_64
	battleanimobj $21, $90, BATTLEANIMFRAMESET_4A, BATTLEANIMFUNC_02, $02, $14

; ANIM_OBJ_65
	battleanimobj $01, $80, BATTLEANIMFRAMESET_30, BATTLEANIMFUNC_2F, $02, $11

; ANIM_OBJ_66
	battleanimobj $01, $78, BATTLEANIMFRAMESET_76, BATTLEANIMFUNC_2A, $04, $23

; ANIM_OBJ_67
	battleanimobj $01, $80, BATTLEANIMFRAMESET_77, BATTLEANIMFUNC_30, $02, $1f

; ANIM_OBJ_68
	battleanimobj $01, $90, BATTLEANIMFRAMESET_77, BATTLEANIMFUNC_02, $02, $1f

; ANIM_OBJ_69
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_77, BATTLEANIMFUNC_00, $02, $1f

; ANIM_OBJ_6A
	battleanimobj $01, $80, BATTLEANIMFRAMESET_78, BATTLEANIMFUNC_08, $03, $23

; ANIM_OBJ_6B
	battleanimobj $21, $90, BATTLEANIMFRAMESET_79, BATTLEANIMFUNC_00, $02, $1f

; ANIM_OBJ_6C
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_7A, BATTLEANIMFUNC_31, $03, $11

; ANIM_OBJ_6D
	battleanimobj $01, $88, BATTLEANIMFRAMESET_7A, BATTLEANIMFUNC_31, $03, $11

; ANIM_OBJ_SKY_ATTACK_BIRD
	battleanimobj $21, $88, BATTLEANIMFRAMESET_7B, BATTLEANIMFUNC_32, $02, $20

; ANIM_OBJ_LICK
	battleanimobj $21, $98, BATTLEANIMFRAMESET_7C, BATTLEANIMFUNC_00, $02, $04

; ANIM_OBJ_70
	battleanimobj $21, $80, BATTLEANIMFRAMESET_7D, BATTLEANIMFUNC_00, $02, $18

; ANIM_OBJ_71
	battleanimobj $01, $80, BATTLEANIMFRAMESET_21, BATTLEANIMFUNC_2F, $06, $0d

; ANIM_OBJ_72
	battleanimobj $01, $b0, BATTLEANIMFRAMESET_7E, BATTLEANIMFUNC_33, $03, $12

; ANIM_OBJ_73
	battleanimobj $01, $80, BATTLEANIMFRAMESET_7F, BATTLEANIMFUNC_2F, $02, $08

; ANIM_OBJ_74
	battleanimobj $21, $a0, BATTLEANIMFRAMESET_6F, BATTLEANIMFUNC_34, $02, $1c

; ANIM_OBJ_75
	battleanimobj $21, $a0, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_35, $02, $15

; ANIM_OBJ_76
	battleanimobj $21, $b0, BATTLEANIMFRAMESET_80, BATTLEANIMFUNC_33, $02, $14

; ANIM_OBJ_77
	battleanimobj $01, $88, BATTLEANIMFRAMESET_81, BATTLEANIMFUNC_37, $02, $11

; ANIM_OBJ_78
	battleanimobj $01, $88, BATTLEANIMFRAMESET_85, BATTLEANIMFUNC_00, $02, $22

; ANIM_OBJ_79
	battleanimobj $01, $88, BATTLEANIMFRAMESET_86, BATTLEANIMFUNC_00, $02, $22

; ANIM_OBJ_7A
	battleanimobj $01, $90, BATTLEANIMFRAMESET_87, BATTLEANIMFUNC_39, $02, $1f

; ANIM_OBJ_7B
	battleanimobj $01, $80, BATTLEANIMFRAMESET_30, BATTLEANIMFUNC_3A, $03, $11

; ANIM_OBJ_7C
	battleanimobj $21, $90, BATTLEANIMFRAMESET_34, BATTLEANIMFUNC_00, $03, $05

; ANIM_OBJ_7D
	battleanimobj $a1, $88, BATTLEANIMFRAMESET_88, BATTLEANIMFUNC_3B, $06, $13

; ANIM_OBJ_HEART
	battleanimobj $01, $80, BATTLEANIMFRAMESET_76, BATTLEANIMFUNC_25, $04, $23

; ANIM_OBJ_7F
	battleanimobj $01, $98, BATTLEANIMFRAMESET_10, BATTLEANIMFUNC_34, $04, $03

; ANIM_OBJ_80
	battleanimobj $01, $a8, BATTLEANIMFRAMESET_0F, BATTLEANIMFUNC_3C, $04, $03

; ANIM_OBJ_81
	battleanimobj $21, $68, BATTLEANIMFRAMESET_89, BATTLEANIMFUNC_29, $02, $1f

; ANIM_OBJ_82
	battleanimobj $21, $b0, BATTLEANIMFRAMESET_8A, BATTLEANIMFUNC_00, $02, $1f

; ANIM_OBJ_83
	battleanimobj $21, $80, BATTLEANIMFRAMESET_8C, BATTLEANIMFUNC_00, $02, $1f

; ANIM_OBJ_84
	battleanimobj $21, $50, BATTLEANIMFRAMESET_8D, BATTLEANIMFUNC_00, $03, $1f

; ANIM_OBJ_85
	battleanimobj $01, $40, BATTLEANIMFRAMESET_24, BATTLEANIMFUNC_40, $02, $0e

; ANIM_OBJ_86
	battleanimobj $21, $a8, BATTLEANIMFRAMESET_8E, BATTLEANIMFUNC_41, $04, $1f

; ANIM_OBJ_87
	battleanimobj $21, $88, BATTLEANIMFRAMESET_8F, BATTLEANIMFUNC_3E, $02, $1f

; ANIM_OBJ_88
	battleanimobj $21, $88, BATTLEANIMFRAMESET_93, BATTLEANIMFUNC_3E, $02, $1f

; ANIM_OBJ_89
	battleanimobj $21, $90, BATTLEANIMFRAMESET_97, BATTLEANIMFUNC_3D, $02, $1f

; ANIM_OBJ_8A
	battleanimobj $21, $90, BATTLEANIMFRAMESET_78, BATTLEANIMFUNC_3D, $03, $23

; ANIM_OBJ_8B
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_99, BATTLEANIMFUNC_2E, $02, $19

; ANIM_OBJ_8C
	battleanimobj $21, $a0, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_02, $02, $15

; ANIM_OBJ_8D
	battleanimobj $21, $a0, BATTLEANIMFRAMESET_99, BATTLEANIMFUNC_35, $04, $19

; ANIM_OBJ_SPIKES
	battleanimobj $21, $70, BATTLEANIMFRAMESET_8B, BATTLEANIMFUNC_3F, $02, $1f

; ANIM_OBJ_8F
	battleanimobj $01, $90, BATTLEANIMFRAMESET_15, BATTLEANIMFUNC_08, $02, $0a

; ANIM_OBJ_90
	battleanimobj $01, $90, BATTLEANIMFRAMESET_11, BATTLEANIMFUNC_02, $04, $03

; ANIM_OBJ_91
	battleanimobj $01, $80, BATTLEANIMFRAMESET_7F, BATTLEANIMFUNC_42, $02, $08

; ANIM_OBJ_92
	battleanimobj $01, $90, BATTLEANIMFRAMESET_9A, BATTLEANIMFUNC_00, $02, $1b

; ANIM_OBJ_93
	battleanimobj $21, $a0, BATTLEANIMFRAMESET_9B, BATTLEANIMFUNC_35, $04, $23

; ANIM_OBJ_94
	battleanimobj $21, $80, BATTLEANIMFRAMESET_9C, BATTLEANIMFUNC_23, $02, $25

; ANIM_OBJ_95
	battleanimobj $21, $80, BATTLEANIMFRAMESET_9D, BATTLEANIMFUNC_25, $02, $25

; ANIM_OBJ_96
	battleanimobj $21, $80, BATTLEANIMFRAMESET_9C, BATTLEANIMFUNC_00, $02, $25

; ANIM_OBJ_97
	battleanimobj $21, $80, BATTLEANIMFRAMESET_9E, BATTLEANIMFUNC_00, $06, $25

; ANIM_OBJ_98
	battleanimobj $61, $80, BATTLEANIMFRAMESET_9F, BATTLEANIMFUNC_3A, $05, $23

; ANIM_OBJ_99
	battleanimobj $21, $80, BATTLEANIMFRAMESET_A0, BATTLEANIMFUNC_16, $02, $23

; ANIM_OBJ_9A
	battleanimobj $21, $70, BATTLEANIMFRAMESET_78, BATTLEANIMFUNC_43, $03, $23

; ANIM_OBJ_9B
	battleanimobj $21, $c0, BATTLEANIMFRAMESET_A2, BATTLEANIMFUNC_01, $02, $25

; ANIM_OBJ_9C
	battleanimobj $21, $40, BATTLEANIMFRAMESET_A3, BATTLEANIMFUNC_44, $03, $24

; ANIM_OBJ_9D
	battleanimobj $01, $80, BATTLEANIMFRAMESET_A4, BATTLEANIMFUNC_00, $02, $24

; ANIM_OBJ_9E
	battleanimobj $01, $80, BATTLEANIMFRAMESET_A5, BATTLEANIMFUNC_00, $03, $24

; ANIM_OBJ_9F
	battleanimobj $01, $88, BATTLEANIMFRAMESET_43, BATTLEANIMFUNC_45, $04, $12

; ANIM_OBJ_A0
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_A6, BATTLEANIMFUNC_00, $02, $02

; ANIM_OBJ_A1
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_A7, BATTLEANIMFUNC_00, $02, $02

; ANIM_OBJ_A2
	battleanimobj $21, $00, BATTLEANIMFRAMESET_B4, BATTLEANIMFUNC_4A, $07, $0f

; ANIM_OBJ_A3
	battleanimobj $21, $90, BATTLEANIMFRAMESET_A8, BATTLEANIMFUNC_02, $03, $05

; ANIM_OBJ_A4
	battleanimobj $21, $40, BATTLEANIMFRAMESET_9C, BATTLEANIMFUNC_11, $02, $25

; ANIM_OBJ_A5
	battleanimobj $61, $90, BATTLEANIMFRAMESET_A9, BATTLEANIMFUNC_46, $02, $23

; ANIM_OBJ_PERISH_SONG
	battleanimobj $00, $00, BATTLEANIMFRAMESET_24, BATTLEANIMFUNC_47, $02, $0e

; ANIM_OBJ_A7
	battleanimobj $01, $80, BATTLEANIMFRAMESET_AA, BATTLEANIMFUNC_00, $02, $24

; ANIM_OBJ_A8
	battleanimobj $21, $b8, BATTLEANIMFRAMESET_AB, BATTLEANIMFUNC_48, $02, $13

; ANIM_OBJ_A9
	battleanimobj $21, $90, BATTLEANIMFRAMESET_AC, BATTLEANIMFUNC_44, $02, $13

; ANIM_OBJ_AA
	battleanimobj $01, $a8, BATTLEANIMFRAMESET_05, BATTLEANIMFUNC_00, $02, $01

; ANIM_OBJ_AB
	battleanimobj $01, $90, BATTLEANIMFRAMESET_24, BATTLEANIMFUNC_43, $02, $0e

; ANIM_OBJ_AC
	battleanimobj $01, $88, BATTLEANIMFRAMESET_AD, BATTLEANIMFUNC_00, $06, $17

; ANIM_OBJ_AD
	battleanimobj $01, $a8, BATTLEANIMFRAMESET_AE, BATTLEANIMFUNC_49, $02, $01

; ANIM_OBJ_AE
	battleanimobj $21, $90, BATTLEANIMFRAMESET_AF, BATTLEANIMFUNC_01, $03, $11

; ANIM_OBJ_AF
	battleanimobj $21, $00, BATTLEANIMFRAMESET_B0, BATTLEANIMFUNC_4A, $02, $04

; ANIM_OBJ_B0
	battleanimobj $00, $00, BATTLEANIMFRAMESET_70, BATTLEANIMFUNC_4B, $04, $1c

; ANIM_OBJ_B1
	battleanimobj $01, $88, BATTLEANIMFRAMESET_B1, BATTLEANIMFUNC_4C, $02, $19

; ANIM_OBJ_B2
	battleanimobj $01, $b8, BATTLEANIMFRAMESET_19, BATTLEANIMFUNC_4D, $07, $09

; ANIM_OBJ_B3
	battleanimobj $61, $98, BATTLEANIMFRAMESET_B3, BATTLEANIMFUNC_00, $03, $27

; ANIM_OBJ_B4
	battleanimobj $61, $98, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_04, $06, $15

; ANIM_OBJ_B5
	battleanimobj $21, $ff, BATTLEANIMFRAMESET_19, BATTLEANIMFUNC_4E, $07, $09

; ANIM_OBJ_FLOWER
	battleanimobj $01, $90, BATTLEANIMFRAMESET_73, BATTLEANIMFUNC_08, $04, $1e

; ANIM_OBJ_COTTON
	battleanimobj $01, $ff, BATTLEANIMFRAMESET_89, BATTLEANIMFUNC_4F, $04, $1f

; ANIM_OBJ_PLAYERFEETFOLLOW
	battleanimobj $00, $00, BATTLEANIMFRAMESET_B5, BATTLEANIMFUNC_00, $00, $28

; ANIM_OBJ_ENEMYFEETFOLLOW
	battleanimobj $00, $00, BATTLEANIMFRAMESET_B6, BATTLEANIMFUNC_00, $01, $29

; ANIM_OBJ_BA
	battleanimobj $00, $00, BATTLEANIMFRAMESET_B7, BATTLEANIMFUNC_00, $00, $28

; ANIM_OBJ_BB
	battleanimobj $00, $00, BATTLEANIMFRAMESET_B8, BATTLEANIMFUNC_00, $01, $29

; ANIM_OBJ_ENERGY_BALL
	battleanimobj $61, $98, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_04, 5, $15

; ANIM_OBJ_HAIL
	battleanimobj $21, $00, BATTLEANIMFRAMESET_B4, BATTLEANIMFUNC_4A, 6, $0f

; ANIM_OBJ_GEM
	battleanimobj $01, $90, BATTLEANIMFRAMESET_14, BATTLEANIMFUNC_01, 3, $0a

; ccfbe
