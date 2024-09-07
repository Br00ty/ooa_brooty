---[[
function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

-- maku path
function maku_tree()
    return rescue_nayru() or (maku_basement() and has("pathkey") and k_normal())
end

function maku_basement()
    return (rescue_nayru() or (lynna_village() and shovel()))
end

-- d1
function d1_east_terrace()
    return k_switchhook()
end

function d1_crystal_room()
    return d1_east_terrace() and ember() and crystal()
end

function d1_wide_room()
    return d1_east_terrace() and has("d1sk",2)
end

function d1_boss()
    return d1_wide_room() and bush() and has("d1bk") and k_pumpkinhead()
end

function d1_u_room()
    return pot() or (d1_wide_room() and bush() and k_giantghini() and has("d1sk",3))
end

function d1_basement()
    return d1_u_room() and ember()
end

-- d2
function d2_bombed_terrace()
    return k_spikedbeetle() and bombs()
end

function d2_moblin_drop()
    return k_spikedbeetle() and k_normal()
end

function d2_enter_swoop()
    return (k_spikedbeetle() and feather()) or has("d2sk",2)
end

function d2_basement()
    return d2_enter_swoop() and k_swoop()
end

function d2_thwomp_shelf()
    return d2_basement() and feather()
end

function d2_basement_drop()
    return d2_basement() and feather()
end

function d2_basement_chest()
    return d2_basement() and feather() and bombs() and lever_minecartabove() and k_normal()
end

function d2_moblin_platform()
    return d2_basement() and feather() and has("d2sk",3)
end

function d2_statue_puzzle()
    return d2_moblin_platform() and (lift1() or cane())
end

function d2_rope_room()
    return k_switchhook() and has("d2sk",4)
end

function d2_ladder_chest()
    return bombs() and k_switchhook() and has("d2sk",4)
end

function d2_color_room()
    return d2_statue_puzzle() and has("d2sk",5)
end

function d2_boss()
    return d2_color_room() and has("d2bk") and bombs()
end

-- d3
function d3_pols_voice()
    return bombs() or (d3_six_blocK_drop() and bush() and k_pols_voice_h())
end

function d3_1f_spinner()
    return k_moldorm() or lift1()
end

function d3_S_crystal()
    return d3_1f_spinner()
end

function d3_four_crystals_owl()
    return d3_1f_spinner() and mystery()
end

function d3_E_crystal()
    return d3_1f_spinner() and bombs()
end

function d3_statue_drop()
    return d3_E_crystal()
end

function d3_seeds()
    return has("d3sk", 1) and seed_item() and (sword() or foolsore() or bombs())
end

function d3_W_crystal()
    return has("d3sk", 1) and k_pols_voice
end

function d3_N_crystal()
    return has("d3sk", 1) and (any_shooter() or any_hyper_slingshot() or boomerang())
end

function d3_stone_soldiers_owl()
    return has("d3sk", 1) and mystery()
end

function d3_armos_drop()
    return has("d3sk", 1) and (bombs() or cane() or magicboom() or (scent() and (shooter() or slingshot())))
end

function d3_six_blocK_drop()
    return
        d3_W_crystal() and (bombs() or switch() or (scent() and (shooter() or slingshot())) or (cane() and lift1())) and
            (bombs() or any_shooter() or any_hyper_slingshot() or magicboom())
end

function d3_conveyor_belt_room()
    return d3_six_blocK_drop() and (bombs() or cane() or magicboom() or (scent() and (shooter() or slingshot())))
end

function d3_break_crystal_switch()
    return
        sword() or switch() or boomerang() or ember_satchel() or scent_satchel() or mystery_satchel() or seed_range() or
            punch_object() or foolsore()
end

function d3_B1F_spinner()
    return d3_S_crystal() and d3_E_crystal() and d3_N_crystal() and d3_W_crystal() and d3_break_crystal_switch()
end

function d3_torch_chest()
    return d3_B1F_spinner() and ember() and (shooter() or slingshot2())
end

function d3_traverse1()
    return any_shooter() or jump3() or magicboom()
end

function d3_traverse2()
    return any_shooter() or any_hyper_slingshot() or cape() or boomerang()
end

function d3_bridge_chest()
    return has("d3sk", 1) and (d3_traverse1() or (d3_post_subterror() and has("d3sk", 4)) and jump3())
end

function d3_B1F_east()
    return d3_B1F_spinner() and k_subterror() and
               (d3_W_crystal() or (has("d3sk", 4) and d3_traverse1() and (d3_traverse2() or jump3()))) and
               (magicboom() or any_shooter())
end

function d3_post_subterror()
    return d3_boss_door() or (d3_B1F_spinner() and k_subterror()) or (d3_traverse1() and has("d3sk", 4) and jump3())
end

function d3_boss_door()
    return (((d3_B1F_spinner() and k_subterror()) or (d3_traverse1() and has("d3sk", 4) and jump3())) and jump3() and
               d3_traverse2()) or (has("d3sk", 4) and d3_traverse1() and d3_traverse2())
end

function d3_moldorm_drop()
    return k_moldorm() and d3_post_subterror()
end

function d3_boss()
    return d3_boss_door() and has("d3bk") and (ember_shooter() or scent_shooter() or ember_satchel())
end

function d3_bush_beetle_room()
    return k_switchhook() and has("d3sk", 3)
end

function d3_mimic_room()
    return d3_bush_beetle_room() and k_normal() and has("d3sk", 4)
end

-- d4
function d4_first_chest()
    return (k_stalfos() or push_enemy()) and (feather() or hook1())
end

function d4_cube_chest()
    return d4_first_chest() and feather()
end

function d4_minecartA()
    return feather() and (has("d4sk",2))
end

function d4_first_crystal_switch()
    return d4_minecartA() and (shooter() or magicboom())
end

function d4_minecart_chest()
    return d4_minecartA() and lever()
end

function d4_minecartB()
    return d4_minecartA() and lever_minecart() and lift1() and k_stalfos() and has("d4sk",3)
end

function d4_second_crystal_switch()
    return d4_minecartB() and (shooter() or magicboom() or (cape() and switch()))
end

function d4_minecartC()
    return d4_minecartB() and has("d4sk",4)
end

function d4_color_tile_drop()
    return d4_minecartC() and (sword() or foolsore() or rodofseasons() or seed_range())
end

function d4_minecartD()
    return d4_color_tile_drop() and has("d4sk",5)
end

function d4_pre_miniboss()
    return d4_minecartD() or (d4_post_miniboss() and k_armos_warrior())
end

function d4_post_miniboss()
    return (cape() and pegasus_satchel()) or (d4_minecartD() and k_armos_warrior)
end

function d4_small_floor_puzzle()
    return d4_post_miniboss() and bombs()
end

function d4_large_floor_puzzle()
    return d4_pre_miniboss() and feather() and hook1()
end

function d4_boss()
    return d4_large_floor_puzzle() and has("d4bk") and hook1() and (sword() or foolsore() or boomerang() or punch_enemy())
end

function d4_lava_pot_chest()
    return d4_large_floor_puzzle() and lift1() and hook1() and has("d4sk",5)
end

-- d5
function d5_switchA()
    return k_normal() and switch()
end

function d5_darkroom()
    return d5_switchA() and switch() and ((cape() and pegasus_satchel()) or cane() or hook1())
end

function d5_likelike()
    return d5_switchA() and switch_far()
end

function d5_eyes()
    return d5_switchA() and (any_shooter() or any_hyper_slingshot())
end

function d5_2statue()
    return d5_switchA() and pot() and cane() and feather() and (any_shooter() or any_hyper_slingshot() or boomerang())
end

function d5_boss()
    return d5_switchA() and has("d5bk") and cane() and (sword() or foolsore())
end

function d5_crossroads()
    return k_normal() and feather() and lift1() and has("d5sk",2) and (cane() or (pegasus_satchel() and cape()))
end

function d5_3statue()
    return d5_switchA() and cane() and has("d5sk",5)
end

function d5_6statue()
    return d5_switchA() and ember_shooter() and feather() and has("d5sk",5)
end

function d5_redpeg()
    return d5_crossroads() and switch_far() and has("d5sk", 5)
end

function d5_owl_puzzle()
    return d5_redpeg() and cane()
end

-- d6 past
function d6past_colorroom()
    return feather() and k_switchhook()
end

function d6past_wizzrobe_chest()
    return bombs() and k_wizzrobe()
end

function d6past_pool_chest()
    return bombs() and ember() and flippers()
end

function d6_openwall()
    return bombs() and ember() and (shooter() or slingshot2())
end

function d6past_stalfos()
    return ember() and (k_normal_far() or scent_satchel() or feather())
end

function d6past_rope_chest()
    return d6_openwall() and mermaid() and (k_underwater() or hook1())
end

function d6past_spinner()
    return cane() and lift1() and feather() and has("d6_1sk", 1) and bombs()
end

function d6past_boss()
    return d6past_spinner() and has("d6bk") and mermaid() and k_octogon() and has("d6_1sk",2) and (cape() or (has("d6_1sk",3) and (any_shooter() or magicboom())))
end

-- d6 present
function d6present_diamond_chest()
    return hook1()
end

function d6present_orb_room()
    return flippers() or jump3() or hook1()
end

function d6present_hit_orb()
    return d6present_orb_room() and (any_shooter() or boomerang())
end

function d6present_rope_room()
    return d6present_orb_room() and
               (jump3() or (d6present_hit_orb() and (any_shooter() or any_slingshot() or boomerang() or bombs())))
end

function d6present_rope_chest()
    return d6present_rope_room() and scent_satchel()
end

function d6present_hand_room()
    return d6present_orb_room() and (cape() or (d6present_hit_orb() and bombs()))
end

function d6present_cube_chest()
    return d6present_hand_room() and bombs() and hook1() and feather()
end

function d6present_spinner_chest()
    return d6past_spinner() and d6present_hand_room() and (feather() or hook1())
end

function d6present_beamos_chest()
    return d6_openwall() and feather() and (flippers() or (hook1() and has("d6_2sk",2)))
end

function d6present_rng_chest()
    return d6present_beamos_chest() and lift1() and (sword() or foolsore() or cane() or hook1() or punch_enemy()) and
               has("d6_2sk", 3)
end

function d6present_channel_chest()
    return d6_openwall() and hook1() and has("d6_2sk",3)
end

function d6present_vire_chest()
    return d6present_spinner_chest() and has("d6_2sk",3) and (sword() or foolsore() or expert()) and hook1()
end

-- d7
function d7_crab()
    return k_underwater() or (draind7() and k_normal())
end

function d7_diamondpuzzle()
    return hook1()
end

function d7_flower()
    return hook2() and feather()
end

function d7_stairway()
    return hook2() or (draind7() and cane() and hook1())
end

function d7_right_wing()
    return k_moldorm() and (d7_stairway() or (draind7() and cane() and cape() and pegasus_satchel()))
end

function draind7()
    return floodd7() or has("d7sk",3)
end

function floodd7()
    return hook2() and has("d7sk", 4)
end

function d7_boss()
    return has("d7bk") and floodd7()
end

function d7_hallway()
    return floodd7() and has("d7sk", 5)
end

function d7_miniboss()
    return d7_stairway() and feather() and (sword() or foolsore() or boomerang() or (scent() and shoot_seeds())) and has("d7sk", 7)
end

function d7_pot_island()
    return draind7() and hook1() and has("d7sk", 7)
end

-- d8
function d8_first()
    return bombs() and (k_switchhook() or rodofseasons() or boomerang() or (pegasus() and shoot_seeds()))
end

function d8_ghini()
    return d8_first() and has("d8sk", 1) and hook1() and cane() and (shooter() or slingshot2()) and ember()
end

function d8_bluepeg()
    return d8_ghini() and has("d8sk", 2)
end

function d8_maze()
    return d8_bluepeg() and feather() and (sword() or foolsore()) and has("d8sk",4)
end

function d8_neslate()
    return d8_maze() and feather() and flippers() and ember()
end

function d8_tileroom()
    return d8_maze() and lift2() and feather()
end

function d8_boss()
    return has("d8bk") and d8_tileroom() and has("d8slate",4)
end

-- dungeon full clear functions
function d1clear()
    return use_seeds() and ember() and lift1() and k_ghini() and k_pumpkinhead()
end
function d1clear_h()
    return use_seeds() and ember() and lift1() and k_ghini_hard() and k_pumpkinhead_h()
end

function d2clear()
    return has("feather") and has("bombs") and (has("bracelet") or has("cane")) and lever() and k_normal() and
               k_beetle() and k_swoop()
end
function d2clear_h()
    return has("feather") and has("bombs") and (has("bracelet") or has("cane") or (has("shield1") and has("hook1"))) and
               lever() and k_normal() and kill_beetle_hard() and kill_swoop_h()
end

function d3clear()
    return has("bombs") and has("shooter") and has("emberseeds") and
        -- not actually needed in all cases but if there's a key at Shadow Hag it's very much needed
               (Tracker:ProviderCountForCode("d3sk") >= 4 or max_jump() >= 2) and kill_moldorm() and kill_armos() and
               kill_subterror()
end
function d3clear_h()
    return has("bombs") and has("shooter") and (has("emberseeds") or has("mysteryseeds")) and
        -- not actually needed in all cases but if there's a key at Shadow Hag it's very much needed
               (Tracker:ProviderCountForCode("d3sk") >= 4 or has("feather")) and kill_moldorm_hard() and
               kill_armos_hard() and kill_subterror_hard()
end

function d4clear()
    return has("feather") and has("bracelet") and has("hook1") and has("bombs") and has("shooter") and
               (has("sword1") or has("emberseeds") or has("scentseeds") or has("galeseeds")) and kill_normal() and
               (has("sword1") or has("boomerang"))
end
function d4clear_h()
    return has("feather") and has("bracelet") and has("hook1") and has("bombs") and
               (has("shooter") and (has("emberseeds") or has("scentseeds") or has("galeseeds")) or
                   (has("boomerang") and ((has("satchel") and has("scentseeds")) or has("sword1")))) and kill_normal() and
               (has("sword1") or has("boomerang"))
end

function d5clear()
    return has("cane") and has("hook1") and has("sword1") and has("feather") and has("bracelet") and has("shooter") and
               has("emberseeds") and Tracker:ProviderCountForCode("d5sk") >= 5
end
function d5clear_h()
    -- Should be the same as above, keeping it separate in case of future changes
    return has("cane") and has("hook1") and has("sword1") and has("feather") and has("bracelet") and has("shooter") and
               has("emberseeds") and Tracker:ProviderCountForCode("d5sk") >= 5
end

function d6clear_present()
    return has("hook1") and has("bombs") and has("feather") and has("d6key") and openD6wall() and has("bracelet") and
               has("shooter") and has("emberseeds") and has("satchel") and has("scentseeds") and
               (has("sword1") or has("ring_expert")) and Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_h()
    return has("hook1") and has("bombs") and has("d6key") and openD6wall() and has("bracelet") and has("shooter") and
               has("emberseeds") and has("satchel") and has("scentseeds") and
               Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_shuffle()
    return
        has("hook1") and has("bombs") and has("feather") and d6_past_shuffle() and openD6wall() and has("bracelet") and
            has("shooter") and has("emberseeds") and has("satchel") and has("scentseeds") and
            (has("sword1") or has("ring_expert")) and Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_shuffle_h()
    return has("hook1") and has("bombs") and d6_past_shuffle_hard() and openD6wall() and has("bracelet") and
               has("shooter") and has("emberseeds") and has("satchel") and has("scentseeds") and
               Tracker:ProviderCountForCode("d6sk_present") >= 3
end

function d6clear()
    return has("d6keyold") and d6clear_present() and has("cane") and has("bombs") and has("shooter") and
               has("emberseeds") and has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_h()
    return has("d6keyold") and d6clear_present_hard() and has("cane") and has("bombs") and has("shooter") and
               has("emberseeds") and has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_shuffle()
    return d6_present_shuffle() and d6clear_present_shuffle() and has("cane") and has("bombs") and has("shooter") and
               has("emberseeds") and has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_shuffle_h()
    return d6_present_shuffle_hard() and d6clear_present_shuffle_hard() and has("cane") and has("bombs") and
               has("shooter") and has("emberseeds") and has("mermaidsuit") and has("hook1") and has("feather")
end

function d7clear()
    return has("hook2") and has("cane") and kill_underwater() and has("feather") and
               Tracker:ProviderCountForCode("d7sk") >= 7
end
function d7clear_h()
    return has("hook2") and has("cane") and kill_underwater_hard() and has("feather") and
               Tracker:ProviderCountForCode("d7sk") >= 7
end

function d8clear()
    return
        has("bombs") and has("cane") and has("hook1") and has("shooter") and has("emberseeds") and has("scentseeds") and
            has("powerglove") and has("feather") and has("sword1")
end
function d8clear_h()
    -- Should be the same as above, keeping it separate in case of future changes
    return
        has("bombs") and has("cane") and has("hook1") and has("shooter") and has("emberseeds") and has("scentseeds") and
            has("powerglove") and has("feather") and has("sword1")
end

