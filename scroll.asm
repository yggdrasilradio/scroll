	org $1000

	jsr $b740
	sync
	stx $ff9D
	rts
