	org $1000

	jsr $b740	; get argument in X
	sync		; wait for vertical sync
	stx $ff9d	; set vertical offset register
	rts
