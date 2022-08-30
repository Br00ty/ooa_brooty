---[[
function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count == amount
    end
end

-- lynna / south shore / palace
function lynna_city()
    return bush() or flute() or echoes() or (shore_present() and mermaid())
end

function lynna_village()
    return lynna_city() or echoes()
end

function maku_tree()
    return rescue_nayru() or (maku_basement() and has("pathkey") and k_normal())
end

function shore_present()
    return flute() or has("gloves") or (bush() and feather()) or (ages() and bush()) or
               ((bush() or flute() or echoes()) and (lift1() or mermaid()) or
                   (currents() and (feather() or flippers() or raft())))
end

function shore_present_h()
    return shore_present() or (currents() and shooter())
end

function raft()
    return lynna_village() and has("cheval") and has("chart")
end

function palace_chest()
    return lynna_village() and (ages() or (bush_safe() and mermaid()))
end

function palace_chest_h()
    return palace_chest() or (lynna_village() and satchel() and scent() and pegasus())
end

function rescue_nayru()
    return palace_chest() and mystery() and hook1() and (sword() or punch_enemy())
end

function maku_seed()
    return has("d1") and has("d2") and has("d3") and has("d4") and has("d5") and has("d6") and has("d7") and has("d8")
end

function balloon_guy()
    return feather() and (sword() or boomerang()) and
               (currents() or has("gloves") or ricky_flute() or (shore_present() and any_shooter()))
end

function balloon_guy_h()
    return feather() and (sword() or boomerang()) and (currents() or has("gloves") or ricky_flute() or
               (shore_present() and (any_shooter() or (boomerang() and (pegasus_satchel() or bombs())))))
end

function raft()
    return lynna_village() and has("cheval") and has("chart")
end

-- yoll graveyard
function graveyard()
    return ember()
end

function syrup()
    return graveyard() and has("gravekey") and (flippers() or bomb_jump2() or dimitri_flute() or hook2())
end

function syrup_h()
    return graveyard() and has("gravekey") and shovel() and (flippers() or bomb_jump2() or dimitri_flute() or hook2())
end

function d1_entrance()
    return graveyard() and has("gravekey")
end

-- fairies woods
function fairy_woods()
    return lift1() or dimitri_flute() or ages() or (lynna_city() and flippers()) or
               (currents() and (lever() or ricky_flute() or moosh_flute()))
end

function deku_forest()
    return lift1() or ages()
end

function forest_tree()
    return deku_forest() and (sword() or punch_object()) and
               (ember() or ages() or hook1() or gale_satchel() or feather())
end

function d2_entrance()
    return deku_forest() and (bombs() or currents())
end

function woods_chest()
    return (deku_forest() and currents()) or
               (fairy_woods() and (feather() or ricky_flute() or moosh_flute() or hook1()))
end

-- crescent island
function crescentpast()
    return raft() or (lynna_city() and mermaid()) or (crescentpresentwest() and currents())
end

function tokaycrystalcave()
    return crescentpast() and ((shovel() or crystal()) and feather())
end

function tokaybombcave()
    return crescentpast() and lift1() and bombs()
end

function tokaygame()
    return crescentpast() and lift1() and bombs()
end

function crescenttree()
    return crescentpast() and scent() and (sword() or punch_object()) and seed_item() and
               (ages() or (lift1() and echoes()))
end

function crescenttree_h()
    return crescentpast() and scent() and (sword() or punch_object()) and seed_item() and
               (ages() or (lift1() and (echoes() or (gale_satchel() and mermaid()))))
end

function crescentpresentwest()
    return dimitri_flute() or (lynna_city() and mermaid()) or
               (crescentpast() and (currents() or (shovel() and echoes())))
end

function crescentpresentwest()
    return dimitri_flute() or (lynna_city() and mermaid()) or
               ((raft() or (lynna_city() and mermaid()) or currents()) and (currents() or (shovel() and echoes())))
end

function d3_entrance()
    return crescentpresentwest()
end

-- nuun/symmetry city/talus peaks
function ricky_nuun()
    return
end

function dimitri_nuun()
    return
end

function moosh_nuun()
    return
end

function nuun()
    return lynna_city() and (currents() or (fairy_woods() and ember_shooter()))
end

function nuuncave()
    return nuun() and (dimitri_flute() or (has("nuun_ricky") and (flute() or currents())) or
               (has("nuun_moosh") and (flute() or currents() or (bush() and jump3()))))
end

function symmetrypresent()
    return nuun() and (currents() or flute())
end

function symmetrytree()
    return symmetrypresent() and (sword() or punch_object() or (dimitri_flute() and d4_entrance()))
end

function symmetrytree_h()
    return symmetrypresent() and (sword() or punch_object() or (dimitri_flute() and d4_entrance_h()))
end

function symmetrypast()
    return symmetrypresent() and (ages() or (bush_safe() and echoes()))
end

function restorationwall()
    return ages() or (symmetrypast() and currents() and lift1() and flippers())
end

function wallpatch()
    return restorationwall() and sword()
end

function wallpatch_h()
    return restorationwall() and (sword() or shield() or boomerand() or hook1() or scen() or shovel())
end

function d4_entrance()
    return symmetrypresent() and has("repairednut") and wallpatch()
end

function d4_entrance_h()
    return symmetrypresent() and has("repairednut") and wallpatch_h()
end

-- rolling ridge // fucking messy
function west_ridge_present()
    return (feather() or ages()) and ((hook1() and currents()) or -- From start
               (lynna_village() and mermaid() and currents() and jump3()))
end

function west_ridge_past()
    return (has("bombflower") and hook1() and -- From start
    (feather() or ages())) or (west_ridge_present() and ages() or (lift1() and echoes())) -- From present ridge
end

-- zora village/zora seas
function zoravillage()
    return mermaid() and ages() and hook1()
end

function zoratree()
    return zoravillage() and (sword() or punch_object() or (dimitri_flute() and cleanseas()))
end

function zoravillagepresent()
    return zoravillage()
end

function cleanseas()
    return zoravillage() and has("powder")
end

function d7_entrance()
    return kingzora() and cleanseas()
end

function kingzora()
    return zoravillage() and has("syrup")
end

-- d8 area
function d8_entrance()
    return crescentpast() and has("eyeball") and k_normal() and pot() and bombs() and (mermaid() or feather())
end

function d8_entrance_h()
    return crescentpast() and has("eyeball") and k_normal() and pot() and bombs() and (cane() or mermaid() or feather())
end

