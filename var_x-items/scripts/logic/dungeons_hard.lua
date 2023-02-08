-- d1
function d1_boss_h()
    return d1_wide_room() and bush() and has("d1bk") and k_pumpkinhead_h()
end

function d1_u_room_h()
    return pot() or (d1_wide_room() and bush() and k_giantghini_h() and has("d1sk",3))
end

function d1_basement_h()
    return d1_u_room_h() and ember()
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
