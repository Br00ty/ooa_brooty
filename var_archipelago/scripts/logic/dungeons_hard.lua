-- d1
function d1_boss_h()
    return d1_wide_room() and bush() and has("d1bk") and k_pumpkinhead_h()
end

function d1_u_room_h()
    return pot() or (d1_wide_room() and bush() and k_giantghini_h() and has("d1sk",3))
end

function d1_basement_h()
    return d1_u_room_h() and (ember() or mystery())
end

-- d2
function d2_bombed_terrace_h()
    return k_spikedbeetle_h() and bombs()
end

function d2_moblin_drop_h()
    return k_spikedbeetle_h() and k_normal()
end

function d2_enter_swoop_h()
    return (k_spikedbeetle_h() and feather()) or has("d2sk",2)
end

function d2_basement_h()
    return d2_enter_swoop_h() and k_swoop_h()
end

function d2_thwomp_shelf_h()
    return d2_basement_h() and (feather() or (cane() and (pegasus_satchel() or bombs())))
end

function d2_basement_drop_h()
    return d2_basement_h() and feather()
end

function d2_basement_chest_h()
    return d2_basement_h() and feather() and bombs() and lever_minecartabove() and k_normal()
end

function d2_moblin_platform_h()
    return d2_basement_h() and feather() and has("d2sk",3)
end

function d2_statue_puzzle_h()
    return d2_moblin_platform_h() and (lift1() or cane() or hook1() or push_enemy())
end

function d2_color_room_h()
    return d2_statue_puzzle_h() and has("d2sk",5)
end

function d2_boss_h()
    return d2_color_room_h() and has("d2bk") and bombs()
end

function d2_early_bombs()
    return d2_color_room_h() and has("d2bk")
end

-- d3
function d3_N_crystal_h()
    return has("d3sk", 1) and (any_shooter() or any_hyper_slingshot() or boomerang() or hook1())
end

function d3_armos_drop_h()
    return has("d3sk", 1) and (bombs() or bigsword() or cane() or magicboom() or (scent() and shoot_seeds()) or scent_satchel())
end

function d3_six_blocK_drop_h()
    return d3_W_crystal() and (bombs() or (scent() and shoot_seeds()) or hook1() or (cane() and lift1())) and
               (bombs() or any_hyper_slingshot() or any_shooter() or magicboom() or hook1() or boomerang())
end

function d3_conveyor_belt_room_h()
    return d3_six_blocK_drop_h() and (bombs() or bigsword() or cane() or magicboom() or (scent() and (shooter() or slingshot())) or scent_satchel())
end

function d3_B1F_spinner_h()
    return d3_S_crystal() and d3_E_crystal() and d3_N_crystal_h() and d3_W_crystal() and d3_break_crystal_switch()
end

function d3_torch_chest_h()
    return d3_B1F_spinner_h() and
               ((ember() and (shooter() or slingshot2() or (cape() and (satchel() or slingshot())))) or
                   mystery_shooter() or (mystery() and slingshot2()))
end

function d3_traverse1_h()
    return d3_traverse1() or ((boomerang() or (lift1() and toss())) and (feather() or pegasus_satchel()))
end

function d3_traverse2_h()
    return d3_traverse2() or
               (feather() and
                   (sword() or rodofseasons() or foolsore() or (bomb_jump2() and (ember() or scent() or mystery()))) and
                   (jump3() or hook1() or slingshot() or (lift1() and has("d3sk", 3))))
end

function d3_bridge_chest_h()
    return has("d3sk", 1) and (d3_traverse1_h() or (d3_post_subterror() and has("d3sk", 4)) and (jump3() or feather()))
end

function d3_B1F_east_h()
    return d3_B1F_spinner_h() and k_subterror() and
               (d3_W_crystal() or (has("d3sk", 3) and d3_traverse1() and (d3_traverse2() or jump3() or feather()))) and
               (magicboom() or any_shooter() or sword())
end

function d3_post_subterror_h()
    return d3_boss_door_h() or (d3_B1F_spinner_h() and k_subterror()) or (d3_traverse1_h() and has("d3sk", 3) and (jump3() or feather()))
end

function d3_boss_door_h()
    return ((((d3_B1F_spinner_h() and k_subterror()) or
               (d3_traverse1_h() and has("d3sk", 3) and (jump3() or feather()))) and (jump3() or feather()) and
               d3_traverse2_h())) or (has("d3sk", 3) and d3_traverse1_h() and d3_traverse2_h())
end

function d3_moldorm_drop_h()
    return k_moldorm() and d3_post_subterror_h()
end

function d3_boss_h()
    return d3_boss_door_h() and has("d3bk") and (ember_shooter() or scent_shooter() or ember_satchel() or scent_satchel() or (ember() and slingshot2()) or (scent() and slingshot2()))
end

-- d4
function d4_first_crystal_switch_h()
    return d4_first_crystal_switch() or (d4_minecartA() and boomerang())
end

function d4_second_crystal_switch_h()
    return d4_second_crystal_switch() or (d4_minecartB() and (boomerang() or any_hyper_slingshot()))
end

function d4_post_miniboss_h()
    return (cape() and (pegasus_satchel() or bombs())) or (d4_minecartD() and k_armos_warrior)
end

function d4_large_floor_puzzle_h()
    return d4_large_floor_puzzle() or (d4_minecartD() and k_armos_warrior() and bomb_jump3() and cane() and sword2())
end

function d4_boss_h()
    return d4_large_floor_puzzle_h() and has("d4bk") and hook1() and (sword() or foolsore() or boomerang() or punch_enemy())
end

function d4_lava_pot_chest_h()
    return d4_large_floor_puzzle_h() and lift1() and hook1() and has("d4sk",5)
end

-- d5
function d5_switchA_h()
    return k_normal() and (switch() or lift1()) 
end

function d5_darkroom_h()
    return d5_switchA_h() and switch() and (cane() or hook1() or k_normal() or push_enemy() or boomerang() or (pegasus() and shoot_seeds()) or cape())
end

function d5_likelike_h()
    return d5_switchA_h() and (switch_far() or lift1() or (feather() and cane() and (ember() or scent() or mystery())))
end

function d5_eyes_h()
    return d5_switchA_h() and
               (any_shooter() or any_hyper_slingshot() or (slingshot() and (scent() or pegasus() or mystery())) or
                   (pegasus_satchel() and feather() and mystery() and
                       (switch_far() or cape() or (lift1() and toss()) or cane())))
end

function d5_2statue_h()
    return d5_switchA_h() and pot() and cane() and feather() and
               (any_shooter() or any_hyper_slingshot() or boomerang() or (pegasus_satchel() and bombs() and cape()) or
                   sword() or rodofseasons() or foolsore() or any_slingshot() or
                   (bomb_jump2() and (ember_satchel() or scent_satchel() or mystery_satchel())))
end

function d5_boss_h()
    return d5_switchA_h() and has("d5bk") and cane() and (sword() or foolsore())
end

function d5_crossroads_h()
    return k_normal() and feather() and lift1() and has("d5sk", 2) and
               (cane() or (pegasus_satchel() and cape()) or jump3() or (sword() and hook1()))
end

function d5_3statue_h()
    return d5_switchA_h() and cane() and has("d5sk",5)
end

function d5_6statue_h()
    return d5_switchA_h() and ember_shooter() and feather() and has("d5sk",5)
end

function d5_redpeg_h()
    return d5_crossroads_h() and switch_far() and has("d5sk", 5)
end

function d5_owl_puzzle_h()
    return d5_redpeg_h()
end

-- d6 past
function d6past_colorroom_h()
    return (feather() or mystery()) and k_switchhook()
end

function d6_openwall_h()
    return bombs() and ember() and (shooter() or slingshot2() or (cape() and (slingshot() or satchel())))
end

function d6past_stalfos_h()
    return ember() and (k_normal_far() or scent_satchel() or feather() or has("l_hard"))
end

function d6past_rope_chest_h()
    return d6_openwall_h() and mermaid() and (k_underwater() or hook1())
end

-- d6 present
function d6present_orb_room_h()
    return d6present_orb_room() or feather()
end

function d6present_hit_orb_h()
    return d6present_orb_room_h() and
               (any_shooter() or boomerang() or any_hyper_slingshot() or (feather() and (sword() or slingshot())) or
                   (feather() and bombs() and (foolsore() or rodofseasons())) or
                   (jump3() and
                       (hook1() or ember_satchel() or scent_satchel() or mystery_satchel() or foolsore() or
                           rodofseasons())))
end

function d6present_rope_room_h()
    return d6present_orb_room_h() and
               (jump3() or (d6present_hit_orb() and (any_shooter() or any_slingshot() or boomerang() or bombs() or
                   (feather() and
                       (sword() or foolsore() or rodofseasons() or ember_satchel() or scent_satchel() or
                           mystery_satchel())))))
end

function d6present_rope_chest_h()
    return d6present_rope_room_h() and scent_satchel()
end

function d6present_hand_room_h()
    return d6present_orb_room_h() and (cape() or (d6present_hit_orb_h() and bombs()))
end

function d6present_cube_chest_h()
    return d6present_hand_room_h() and bombs() and hook1()
end

function d6present_spinner_chest_h()
    return d6past_spinner() and d6present_hand_room_h() and (feather() or hook1())
end

function d6present_beamos_chest_h()
    return d6_openwall_h() and feather() and (flippers() or (hook1() and has("d6_2sk",2)))
end

function d6present_rng_chest_h()
    return d6present_beamos_chest_h() and lift1() and (sword() or foolsore() or cane() or hook1() or punch_enemy()) and
               has("d6_2sk", 3)
end

function d6present_channel_chest_h()
    return d6_openwall_h() and hook1() and has("d6_2sk",3)
end

function d6present_vire_chest_h()
    return d6present_spinner_chest_h() and has("d6_2sk",3) and hook1()
end

-- d7
function d7_right_wing_h()
    return k_moldorm_h() and (d7_stairway() or (draind7() and cane() and cape() and pegasus_satchel()))
end

-- d8
function d8_ghini_h()
    return d8_first() and has("d8sk", 1) and hook1() and cane() and (shooter() or slingshot2()) and (ember() or mystery())
end

function d8_bluepeg_h()
    return d8_ghini_h() and has("d8sk", 2)
end

function d8_maze_h()
    return d8_bluepeg_h() and feather() and (sword() or foolsore()) and has("d8sk",4)
end

function d8_neslate_h()
    return d8_maze_h() and feather() and flippers() and ember()
end

function d8_tileroom_h()
    return d8_maze_h() and lift2() and feather()
end

function d8_boss_h()
    return has("d8bk") and d8_tileroom_h() and requiredslates() and has("gallery")
end
