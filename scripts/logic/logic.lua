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

-- item macros
function sword()
  return has("sword")
end

function sword2()
  return has("sword2")
end

function shield()
  return has("shield1")
end

function shield2()
  return has("shield2")
end

function lift1()
  return has("lift1")
end

function lift2()
  return has("lift2")
end

function flippers()
  return has("flippers")
end

function mermaid()
  return has("mermaid")
end

function feather()
  return has("feather")
end

function hook1()
  return has("hook1")
end

function hook2()
  return has("hook2")
end

function flute()
  return has("flute")
end

function shovel()
  return has("shovel")
end

function shooter()
  return has("shooter")
end

function satchel()
  return has("satchel")
end

function boomerang()
  return has("boomerang")
end

function bombs()
  return has("bombs")
end

function cane()
  return has("cane")
end

function echoes()
  return has("echoes")
end

function currents()
  return has("currents")
end

function ages()
  return has("ages")
end

function bomb_jump2() --hard logic
  return (feather() and (bombs() or pegasus()))
end

function jump3()
  return (feather() and pegasus())
end

function bomb_jump3() --hard logic
  return (feather() and pegasus() and bombs())
end

function farm()
  return (lift1() or sword() or cane() or boomerang() or flute() or shovel() or hook1())
end

function essences()
  return (has("d1") and has("d2") and has("d3") and has("d4") and has("d5") and has("d6") and has("d7") and has("d8"))
end

function ricky_flute()
  return (flute() and has("nuun_ricky"))
end

function dimitri_flute()
  return (flute() and has("nuun_dimitri"))
end

function moosh_flute()
  return (flute() and has("nuun_moosh"))
end

-- seed macros
function pegasus()
  return has("pegasusseeds")
end

function ember()
  return has("emberseeds")
end

function mystery()
  return has("mysteryseeds")
end

function scent()
  return has("scentseeds")
end

function gale()
  return has("galeseeds")
end

function seed_item()
  return (satchel() or shooter())
end

function pegasus_shooter()
  return (pegasus() and shooter())
end

function ember_shooter()
  return (ember() and shooter())
end

function mystery_shooter()
  return (mystery() and shooter())
end

function scent_shooter()
  return (scent() and shooter())
end

function gale_shooter()
  return (gale() and shooter())
end

function any_shooter()
  return (shooter() and (pegasus() or ember() or mystery() or scent() or gale()))
end

function pegasus_satchel()
  return (pegasus() and satchel())
end

function ember_satchel()
  return (ember() and satchel())
end

function mystery_satchel()
  return (mystery() and satchel())
end

function scent_satchel()
  return (scent() and satchel())
end

function gale_satchel()
  return (gale() and satchel())
end

function use_seeds()
  return (satchel() or shooter())
end

-- Get the number of seeds the player has
function seed_number()
	local n = 0
	
	if has("emberseeds") then
		n = n+1	
	end
	
	if has("mysteryseeds") then
		n = n+1
	end
	
	if has("scentseeds") then
		n = n+1
	end
	
	if has("galeseeds") then
		n = n+1
	end
	
	if has("pegasusseeds") then
		n = n+1
	end
	
	return n
end

-- ring macros
function fist()
  return has ("ring_fist")
end

function expert()
  return has ("ring_expert")
end

function energy()
  return has ("ring_energy")
end

function toss()
  return has ("ring_toss")
end

function peace()
  return has ("ring_peace")
end

function punch_object()
  return (has ("ring_fist") or has("ring_expert"))
end

function punch_enemy()
  return (has ("ring_expert"))
end

function punch_enemy_h()
  return (punch_enemy() or has("ring_fist"))
end

-- action macros
function crystal()
  return (sword() or bombs() or lift1() or ember() or expert())
end

function pot()
  return (lift1() or hook1() or sword2())
end

function push_enemy()
  return (shield() or (shovel() and (boomerang() or pegasus())))
end

function lever()
  return (sword() or ember() or scent() or mystery() or any_shooter() or hook1() or boomerang() or punch_object())
end

function lever_minecart()
  return (sword() or ember() or scent() or mystery() or any_shooter() or boomerang() or punch_object())
end

function lever_minecartabove()
  return (sword() or any_shooter() or boomerang())
end

function switch()
  return (sword() or bombs() or punch_object() or ember() or scent() or mystery() or any_shooter() or hook1() or boomerang())
end

function switch_far()
  return (bombs() or any_shooter() or hook1() or boomerang() or (sword() and energy()))
end

function bush_safe()
  return (sword() or hook1() or lift1() or bombs() or ember() or gale_shooter())
end

function bush()
  return (sword() or hook1() or lift1() or (gale_satchel() and bush_safe()))
end

function satchel_weapon()
  return (satchel() and ember())
end

function satchel_weapon_h()
  return (satchel_weapon() or (satchel() and (scent() or gale())))
end

function shooter_weapon()
  return (shooter() and (ember() or scent() or gale()))
end

-- kill macros
function k_normal()
  return (sword() or satchel_weapon() or shooter_weapon() or cane() or punch_enemy())
end

function k_normal_h()
  return (sword() or satchel_weapon_h() or shooter_weapon() or cane() or punch_enemy_h())
end

function k_underwater()
  return (sword() or shooter_weapon() or punch_enemy())
end

function k_underwater_h()
  return (sword() or shooter_weapon() or punch_enemy_h())
end

function k_switchhook()
  return (k_normal() or hook1())
end

function k_switchhook_h()
  return (k_normal_h() or hook1())
end

function k_giantghini()
  return (sword() or scent_shooter() or punch_enemy())
end

function k_giantghini_h()
  return (sword() or scent_shooter() or punch_enemy() or scent_satchel())
end

function k_pumpkinhead()
  return (sword() or ember() or scent_shooter() or punch_enemy())
end

function k_pumpkinhead_h()
  return (sword() or ember() or scent_shooter() or punch_enemy_h() or scent_satchel())
end

function k_spikedbeetle()
  return (gale_shooter() or (shield() and (sword() or satchel_weapon() or shooter_weapon() or cane() or hook1())) or (shovel() and (sword() or satchel_weapon() or shooter_weapon() or cane() or hook1())))
end

function k_spikedbeetle_h()
  return (gale_shooter() or gale_satchel() or (shield() and (sword() or satchel_weapon_h() or shooter_weapon() or cane() or hook1())) or (shovel() and (sword() or satchel_weapon_h() or shooter_weapon() or cane() or hook1())))
end

function k_swoop()
  return (sword() or scent_shooter() or hook1() or punch_enemy())
end

function k_swoop_h()
  return (sword() or scent_shooter() or hook1() or punch_enemy_h() or scent_satchel())
end

function k_moldorm()
  return (sword() or scent_shooter() or cane() or hook1() or punch_enemy())
end

function k_moldorm_h()
  return (sword() or scent_shooter() or cane() or hook1() or punch_enemy_h() or scent_satchel())
end

function k_subterror()
  return (shovel() and (sword() or hook1() or scent() or punch_enemy()))
end

function k_subterror_h()
  return (shovel() and (sword() or hook1() or scent() or punch_enemy_h()))
end

function k_wizzrobe()
  return (sword() or satchel_weapon() or shooter_weapon() or punch_enemy())
end

function k_wizzrobe_h()
  return (sword() or satchel_weapon_h() or shooter_weapon() or punch_enemy_h())
end