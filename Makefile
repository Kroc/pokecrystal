PYTHON := python
MD5 := md5sum -c --quiet

VERSION = 2.2.0
NAME = polishedcrystal-$(VERSION)
NAME_NORTC = polishedcrystal-nortc-$(VERSION)
FNAME = polishedcrystal-faithful-$(VERSION)
FNAME_NORTC = polishedcrystal-faithful-nortc-$(VERSION)
FAITHFUL =
NORTC =

TITLE = PKPCRYSTAL
MCODE = PKPC
ROMVERSION = 0x30
FILLER = 0x00

.SUFFIXES:
.PHONY: all clean crystal
.SECONDEXPANSION:
.PRECIOUS: %.2bpp %.1bpp

gfx       := $(PYTHON) gfx.py
includes  := $(PYTHON) utils/scan_includes.py


crystal_obj := \
wram.o \
main.o \
home.o \
audio.o \
maps.o \
engine/events.o \
engine/credits.o \
data/egg_moves.o \
data/evos_attacks.o \
data/pokedex/entries.o \
text/common_text.o \
gfx/pics.o


roms := $(NAME).gbc $(NAME_NORTC).gbc $(FNAME).gbc $(FNAME_NORTC).gbc

all: crystal
crystal: $(NAME).gbc
nortc: NORTC += -DNO_RTC
nortc: $(NAME_NORTC).gbc
faithful: FAITHFUL += -DFAITHFUL
faithful: $(FNAME).gbc
faithful_nortc: FAITHFUL += -DFAITHFUL
faithful_nortc: NORTC += -DNO_RTC
faithful_nortc: $(FNAME_NORTC).gbc

clean:
	rm -f $(roms) $(crystal_obj) $(roms:.gbc=.map) $(roms:.gbc=.sym)

%.asm: ;

%.o: dep = $(shell $(includes) $(@D)/$*.asm)
%.o: %.asm $$(dep)
	rgbasm $(FAITHFUL) $(NORTC) -o $@ $<

$(NAME).gbc: $(crystal_obj)
	rgblink -n $(NAME).sym -m $(NAME).map -p $(FILLER) -o $@ $^
	rgbfix -Cjv -t $(TITLE) -i $(MCODE) -n $(ROMVERSION) -p $(FILLER) -k 01 -l 0x33 -m 0x10 -r 3 $@

$(NAME_NORTC).gbc: $(crystal_obj)
	rgblink -n $(NAME_NORTC).sym -m $(NAME_NORTC).map -p $(FILLER) -o $@ $^
	rgbfix -Cjv -t $(TITLE) -i $(MCODE) -n $(ROMVERSION) -p $(FILLER) -k 01 -l 0x33 -m 0x10 -r 3 $@
	
$(FNAME).gbc: $(crystal_obj)
	rgblink -n $(FNAME).sym -m $(FNAME).map -p $(FILLER) -o $@ $^
	rgbfix -Cjv -t $(TITLE) -i $(MCODE) -n $(ROMVERSION) -p $(FILLER) -k 01 -l 0x33 -m 0x10 -r 3 $@

$(FNAME_NORTC).gbc: $(crystal_obj)
	rgblink -n $(FNAME_NORTC).sym -m $(FNAME_NORTC).map -p $(FILLER) -o $@ $^
	rgbfix -Cjv -t $(TITLE) -i $(MCODE) -n $(ROMVERSION) -p $(FILLER) -k 01 -l 0x33 -m 0x10 -r 3 $@
	
%.png: ;
%.2bpp: %.png ; $(gfx) 2bpp $<
%.1bpp: %.png ; $(gfx) 1bpp $<
%.lz: % ; $(gfx) lz $<

%.pal: %.2bpp ;
gfx/pics/%/normal.pal gfx/pics/%/bitmask.asm gfx/pics/%/frames.asm: gfx/pics/%/front.2bpp ;
%.bin: ;
%.blk: ;
%.tilemap: ;
