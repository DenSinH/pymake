# some example make code from the pret/pokeruby repo

#### Pokemon Storage System ####

PSSGFXDIR := graphics/pokemon_storage

$(PSSGFXDIR)/header.4bpp: GFX_OPTS := -num_tiles 47

$(PSSGFXDIR)/misc1.4bpp: GFX_OPTS := -num_tiles 91

$(PSSGFXDIR)/forest_frame.4bpp: GFX_OPTS := -num_tiles 49
$(PSSGFXDIR)/forest.4bpp: $(PSSGFXDIR)/forest_frame.4bpp $(PSSGFXDIR)/forest_bg.4bpp
	@cat $(PSSGFXDIR)/forest_frame.4bpp $(PSSGFXDIR)/forest_bg.4bpp >$@

$(PSSGFXDIR)/city_frame.4bpp: GFX_OPTS := -num_tiles 37
$(PSSGFXDIR)/city.4bpp: $(PSSGFXDIR)/city_frame.4bpp $(PSSGFXDIR)/city_bg.4bpp
	@cat $(PSSGFXDIR)/city_frame.4bpp $(PSSGFXDIR)/city_bg.4bpp >$@

$(PSSGFXDIR)/desert_frame.4bpp: GFX_OPTS := -num_tiles 48
$(PSSGFXDIR)/desert.4bpp: $(PSSGFXDIR)/desert_frame.4bpp $(PSSGFXDIR)/desert_bg.4bpp
	@cat $(PSSGFXDIR)/desert_frame.4bpp $(PSSGFXDIR)/desert_bg.4bpp >$@

$(PSSGFXDIR)/savanna_frame.4bpp: GFX_OPTS := -num_tiles 40
$(PSSGFXDIR)/savanna.4bpp: $(PSSGFXDIR)/savanna_frame.4bpp $(PSSGFXDIR)/savanna_bg.4bpp
	@cat $(PSSGFXDIR)/savanna_frame.4bpp $(PSSGFXDIR)/savanna_bg.4bpp >$@

$(PSSGFXDIR)/crag_frame.4bpp: GFX_OPTS := -num_tiles 46
$(PSSGFXDIR)/crag.4bpp: $(PSSGFXDIR)/crag_frame.4bpp $(PSSGFXDIR)/crag_bg.4bpp
	@cat $(PSSGFXDIR)/crag_frame.4bpp $(PSSGFXDIR)/crag_bg.4bpp >$@

$(PSSGFXDIR)/volcano_frame.4bpp: GFX_OPTS := -num_tiles 49
$(PSSGFXDIR)/volcano.4bpp: $(PSSGFXDIR)/volcano_frame.4bpp $(PSSGFXDIR)/volcano_bg.4bpp
	@cat $(PSSGFXDIR)/volcano_frame.4bpp $(PSSGFXDIR)/volcano_bg.4bpp >$@

$(PSSGFXDIR)/snow_frame.4bpp: GFX_OPTS := -num_tiles 46
$(PSSGFXDIR)/snow.4bpp: $(PSSGFXDIR)/snow_frame.4bpp $(PSSGFXDIR)/snow_bg.4bpp
	@cat $(PSSGFXDIR)/snow_frame.4bpp $(PSSGFXDIR)/snow_bg.4bpp >$@

$(PSSGFXDIR)/cave_frame.4bpp: GFX_OPTS := -num_tiles 57
$(PSSGFXDIR)/cave.4bpp: $(PSSGFXDIR)/cave_frame.4bpp $(PSSGFXDIR)/cave_bg.4bpp
	@cat $(PSSGFXDIR)/cave_frame.4bpp $(PSSGFXDIR)/cave_bg.4bpp >$@

$(PSSGFXDIR)/beach_frame.4bpp: GFX_OPTS := -num_tiles 48
$(PSSGFXDIR)/beach.4bpp: $(PSSGFXDIR)/beach_frame.4bpp $(PSSGFXDIR)/beach_bg.4bpp
	@cat $(PSSGFXDIR)/beach_frame.4bpp $(PSSGFXDIR)/beach_bg.4bpp >$@

$(PSSGFXDIR)/seafloor_frame.4bpp: GFX_OPTS := -num_tiles 45
$(PSSGFXDIR)/seafloor.4bpp: $(PSSGFXDIR)/seafloor_frame.4bpp $(PSSGFXDIR)/seafloor_bg.4bpp
	@cat $(PSSGFXDIR)/seafloor_frame.4bpp $(PSSGFXDIR)/seafloor_bg.4bpp >$@

$(PSSGFXDIR)/river_frame.4bpp: GFX_OPTS := -num_tiles 57
$(PSSGFXDIR)/river.4bpp: $(PSSGFXDIR)/river_frame.4bpp $(PSSGFXDIR)/river_bg.4bpp
	@cat $(PSSGFXDIR)/river_frame.4bpp $(PSSGFXDIR)/river_bg.4bpp >$@

$(PSSGFXDIR)/sky_frame.4bpp: GFX_OPTS := -num_tiles 45
$(PSSGFXDIR)/sky.4bpp: $(PSSGFXDIR)/sky_frame.4bpp $(PSSGFXDIR)/sky_bg.4bpp
	@cat $(PSSGFXDIR)/sky_frame.4bpp $(PSSGFXDIR)/sky_bg.4bpp >$@

$(PSSGFXDIR)/polkadot_frame.4bpp: GFX_OPTS := -num_tiles 34
$(PSSGFXDIR)/polkadot.4bpp: $(PSSGFXDIR)/polkadot_frame.4bpp $(PSSGFXDIR)/polkadot_bg.4bpp
	@cat $(PSSGFXDIR)/polkadot_frame.4bpp $(PSSGFXDIR)/polkadot_bg.4bpp >$@

$(PSSGFXDIR)/pokecenter_bg.4bpp: GFX_OPTS := -num_tiles 38
$(PSSGFXDIR)/pokecenter.4bpp: $(PSSGFXDIR)/pokecenter_frame.4bpp $(PSSGFXDIR)/pokecenter_bg.4bpp
	@cat $(PSSGFXDIR)/pokecenter_frame.4bpp $(PSSGFXDIR)/pokecenter_bg.4bpp >$@

$(PSSGFXDIR)/machine_frame.4bpp: GFX_OPTS := -num_tiles 46
$(PSSGFXDIR)/machine.4bpp: $(PSSGFXDIR)/machine_frame.4bpp $(PSSGFXDIR)/machine_bg.4bpp
	@cat $(PSSGFXDIR)/machine_frame.4bpp $(PSSGFXDIR)/machine_bg.4bpp >$@

$(PSSGFXDIR)/plain_frame.4bpp: GFX_OPTS := -num_tiles 18
$(PSSGFXDIR)/plain.4bpp: $(PSSGFXDIR)/plain_frame.4bpp $(PSSGFXDIR)/plain_bg.4bpp
	@cat $(PSSGFXDIR)/plain_frame.4bpp $(PSSGFXDIR)/plain_bg.4bpp >$@


#### Intro ####

INTROGFXDIR := graphics/intro

$(INTROGFXDIR)/intro.4bpp: $(INTROGFXDIR)/intro1_waterdrops.4bpp $(INTROGFXDIR)/intro1_gamefreak.4bpp
	@cat $(INTROGFXDIR)/intro1_waterdrops.4bpp $(INTROGFXDIR)/intro1_gamefreak.4bpp >$@

$(INTROGFXDIR)/introgfx.4bpp: $(INTROGFXDIR)/intro1_bg.4bpp $(INTROGFXDIR)/intro1_leaves.4bpp
	@cat $(INTROGFXDIR)/intro1_bg.4bpp $(INTROGFXDIR)/intro1_leaves.4bpp >$@

$(INTROGFXDIR)/intro3_misc.4bpp: $(INTROGFXDIR)/intro3_star.4bpp $(INTROGFXDIR)/intro3_attackgfx.4bpp $(INTROGFXDIR)/intro3_explosion.4bpp
	@cat $(INTROGFXDIR)/intro3_star.4bpp $(INTROGFXDIR)/intro3_attackgfx.4bpp $(INTROGFXDIR)/intro3_explosion.4bpp >$@

$(INTROGFXDIR)/copyright.4bpp: GFX_OPTS := -num_tiles 43


#### Title Screen ####

TITLEGFXDIR := graphics/title_screen

$(TITLEGFXDIR)/press_start.4bpp: GFX_OPTS := -num_tiles 41


#### Interface ####

MENUGFXDIR := graphics/interface

$(MENUGFXDIR)/menu.gbapal: $(MENUGFXDIR)/menu_0.gbapal $(MENUGFXDIR)/menu_1.gbapal
	@cat $(MENUGFXDIR)/menu_0.gbapal $(MENUGFXDIR)/menu_1.gbapal >$@

$(MENUGFXDIR)/wordgroup_frame.4bpp: GFX_OPTS := -num_tiles 65

$(MENUGFXDIR)/party_menu_misc.4bpp: GFX_OPTS := -num_tiles 116

$(MENUGFXDIR)/status_screen.4bpp: GFX_OPTS := -num_tiles 217

$(MENUGFXDIR)/hp_numbers.4bpp: $(MENUGFXDIR)/hpbar_anim.4bpp $(MENUGFXDIR)/numbers1.4bpp $(MENUGFXDIR)/numbers2.4bpp
	@cat $(MENUGFXDIR)/hpbar_anim.4bpp $(MENUGFXDIR)/numbers1.4bpp $(MENUGFXDIR)/numbers2.4bpp >$@


#### Battle Interface ####

BATTLEINTERFACEDIR := graphics/battle_interface

$(BATTLEINTERFACEDIR)/healthbox_elements.4bpp: $(BATTLEINTERFACEDIR)/hpbar.4bpp $(BATTLEINTERFACEDIR)/expbar.4bpp $(BATTLEINTERFACEDIR)/status_psn.4bpp $(BATTLEINTERFACEDIR)/status_par.4bpp $(BATTLEINTERFACEDIR)/status_slp.4bpp $(BATTLEINTERFACEDIR)/status_frz.4bpp $(BATTLEINTERFACEDIR)/status_brn.4bpp $(BATTLEINTERFACEDIR)/misc.4bpp $(BATTLEINTERFACEDIR)/hpbar_anim.4bpp $(BATTLEINTERFACEDIR)/misc_frameend.4bpp
	cat $^ > $@

#### PokeNav ####

PKNAVGFXDIR := graphics/pokenav

$(PKNAVGFXDIR)/region_map.8bpp: GFX_OPTS := -num_tiles 233

$(PKNAVGFXDIR)/outline.4bpp: GFX_OPTS := -num_tiles 43

$(PKNAVGFXDIR)/menu_options.4bpp: $(PKNAVGFXDIR)/menu_hoennmap.4bpp $(PKNAVGFXDIR)/menu_condition.4bpp $(PKNAVGFXDIR)/menu_eyes.4bpp $(PKNAVGFXDIR)/menu_ribbons.4bpp $(PKNAVGFXDIR)/menu_off.4bpp
	@cat $(PKNAVGFXDIR)/menu_hoennmap.4bpp $(PKNAVGFXDIR)/menu_condition.4bpp $(PKNAVGFXDIR)/menu_eyes.4bpp $(PKNAVGFXDIR)/menu_ribbons.4bpp $(PKNAVGFXDIR)/menu_off.4bpp >$@

$(PKNAVGFXDIR)/condition_menu_misc.4bpp: GFX_OPTS := -num_tiles 41

$(PKNAVGFXDIR)/condition_search.4bpp: $(PKNAVGFXDIR)/condition_search_cool.4bpp $(PKNAVGFXDIR)/condition_search_beauty.4bpp $(PKNAVGFXDIR)/condition_search_cute.4bpp $(PKNAVGFXDIR)/condition_search_smart.4bpp $(PKNAVGFXDIR)/condition_search_tough.4bpp $(PKNAVGFXDIR)/condition_search_cancel.4bpp
	@cat $(PKNAVGFXDIR)/condition_search_cool.4bpp $(PKNAVGFXDIR)/condition_search_beauty.4bpp $(PKNAVGFXDIR)/condition_search_cute.4bpp $(PKNAVGFXDIR)/condition_search_smart.4bpp $(PKNAVGFXDIR)/condition_search_tough.4bpp $(PKNAVGFXDIR)/condition_search_cancel.4bpp >$@


#### Trade ####

TRADEGFXDIR := graphics/trade

$(TRADEGFXDIR)/gba_affine.8bpp: GFX_OPTS := -num_tiles 129

$(TRADEGFXDIR)/menu.4bpp: GFX_OPTS := -num_tiles 148


#### Casino ####

REELGFXDIR := graphics/slot_machine
ROULGFXDIR := graphics/roulette

$(REELGFXDIR)/reel_time.4bpp: $(REELGFXDIR)/reel_pikachu.4bpp $(REELGFXDIR)/reel_machine.4bpp
	@cat $(REELGFXDIR)/reel_pikachu.4bpp $(REELGFXDIR)/reel_machine.4bpp >$@

$(ROULGFXDIR)/roulette_tilt.4bpp: $(ROULGFXDIR)/shroomish.4bpp $(ROULGFXDIR)/tailow.4bpp
	@cat $(ROULGFXDIR)/shroomish.4bpp $(ROULGFXDIR)/tailow.4bpp >$@

$(ROULGFXDIR)/poke_icons2.4bpp: $(ROULGFXDIR)/wynaut.4bpp $(ROULGFXDIR)/azurill.4bpp $(ROULGFXDIR)/skitty.4bpp $(ROULGFXDIR)/makuhita.4bpp
	@cat $(ROULGFXDIR)/wynaut.4bpp $(ROULGFXDIR)/azurill.4bpp $(ROULGFXDIR)/skitty.4bpp $(ROULGFXDIR)/makuhita.4bpp >$@
