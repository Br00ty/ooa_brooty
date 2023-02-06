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
