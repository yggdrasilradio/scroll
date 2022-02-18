all: scroll

scroll: scroll.bas
	lwasm -9 -f basic -o /tmp/data.bas scroll.asm
	fgrep DATA /tmp/data.bas | sed -e 's/,-1,-1//' -e 's/^[^ ]*//' > scroll.dat
	rm -f /tmp/data.bas
	decbpp < scroll.bas > /tmp/scroll.bas
ifneq ("$(wildcard /media/share1/COCO/drive3.dsk)", "")
	decb copy -tr /tmp/scroll.bas /media/share1/COCO/drive3.dsk,SCROLL.BAS
endif
	decb copy -tr /tmp/scroll.bas redistribute/scroll.dsk,SCROLL.BAS
	cp /tmp/scroll.bas redistribute
	cat /tmp/scroll.bas
	rm -f /tmp/scroll.bas



