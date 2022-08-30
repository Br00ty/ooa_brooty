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

-- maku path

function maku_basement()
    return (rescue_nayru() or (lynna_village() and shovel()))
end

-- d1

-- d2

-- d3

-- d4
function d4_minecartA()
    return feather() and has("d4sk",1)
end

-- d5

-- d6

-- d7

-- d8

-- dungeon full clear functions
function d1clear()
	return use_seeds() and ember() and 
	lift1() and k_ghini() and k_pumpkinhead()
end
function d1clear_h()
	return use_seeds() and ember() and 
	lift1() and k_ghini_hard() and k_pumpkinhead_h()
end

function d2clear()
	return has("feather") and has("bombs") and 
	(has("bracelet") or has("cane")) and 
	hit_lever() and k_normal() and
	k_beetle() and k_swoop()
end
function d2clear_h()
	return has("feather") and has("bombs") and 
	(has("bracelet") or has("cane") or 
	(has("shield1") and has("hook1"))) and 
	hit_lever() and k_normal_h() and
	kill_beetle_hard() and kill_swoop_h()
end

function d3clear()
	return has("bombs") and has("shooter") and has("emberseeds") and 
	--not actually needed in all cases but if there's a key at Shadow Hag it's very much needed
	(Tracker:ProviderCountForCode("d3sk") >= 4 or max_jump() >= 2) and
	kill_moldorm() and kill_armos() and kill_subterror()
end
function d3clear_h()
	return has("bombs") and has("shooter") and 
	(has("emberseeds") or has("mysteryseeds")) and
	--not actually needed in all cases but if there's a key at Shadow Hag it's very much needed
	(Tracker:ProviderCountForCode("d3sk") >= 4 or has("feather")) and
	kill_moldorm_hard() and kill_armos_hard() and kill_subterror_hard()
end

function d4clear()
	return has("feather") and has("bracelet") and 
	has("hook1") and has("bombs") and has("shooter") and 
	(has("sword1") or has("emberseeds") or
	has("scentseeds") or has("galeseeds")) and
	kill_normal() and (has("sword1") or has("boomerang"))
end
function d4clear_h()
	return has("feather") and has("bracelet") and 
	has("hook1") and has("bombs") and 
	(has("shooter") and (has("emberseeds") or
	has("scentseeds") or has("galeseeds")) or
	(has("boomerang") and ((has("satchel") and has("scentseeds")) 
	or has("sword1")))) and
	kill_normal() and (has("sword1") or has("boomerang"))
end

function d5clear()
	return has("cane") and has("hook1") and 
	has("sword1") and has("feather") and has("bracelet") and 
	has("shooter") and has("emberseeds") and
	Tracker:ProviderCountForCode("d5sk") >= 5
end
function d5clear_h()
	-- Should be the same as above, keeping it separate in case of future changes
	return has("cane") and has("hook1") and 
	has("sword1") and has("feather") and has("bracelet") and 
	has("shooter") and has("emberseeds") and
	Tracker:ProviderCountForCode("d5sk") >= 5
end

function d6clear_present()
	return has("hook1") and has("bombs") and has("feather") and
	has("d6key") and openD6wall() and has("bracelet") and 
	has("shooter") and has("emberseeds") and 
	has("satchel") and has("scentseeds") and
	(has("sword1") or has("ring_expert")) and
	Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_h()
	return has("hook1") and has("bombs") and 
	has("d6key") and openD6wall() and has("bracelet") and 
	has("shooter") and has("emberseeds") and 
	has("satchel") and has("scentseeds") and
	Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_shuffle()
	return has("hook1") and has("bombs") and has("feather") and
	d6_past_shuffle() and openD6wall() and has("bracelet") and 
	has("shooter") and has("emberseeds") and 
	has("satchel") and has("scentseeds") and
	(has("sword1") or has("ring_expert")) and
	Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_shuffle_h()
	return has("hook1") and has("bombs") and 
	d6_past_shuffle_hard() and openD6wall() and has("bracelet") and 
	has("shooter") and has("emberseeds") and 
	has("satchel") and has("scentseeds") and
	Tracker:ProviderCountForCode("d6sk_present") >= 3
end

function d6clear()
	return has("d6keyold") and d6clear_present() and has("cane") and
	has("bombs") and has("shooter") and has("emberseeds") and
	has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_h()
	return has("d6keyold") and d6clear_present_hard() and has("cane") and
	has("bombs") and has("shooter") and has("emberseeds") and
	has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_shuffle()
	return d6_present_shuffle() and d6clear_present_shuffle() and has("cane") and
	has("bombs") and has("shooter") and has("emberseeds") and
	has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_shuffle_h()
	return d6_present_shuffle_hard() and d6clear_present_shuffle_hard() and has("cane") and
	has("bombs") and has("shooter") and has("emberseeds") and
	has("mermaidsuit") and has("hook1") and has("feather")
end

function d7clear()
	return has("hook2") and has("cane") and
	kill_underwater() and has("feather") and
	Tracker:ProviderCountForCode("d7sk") >= 7
end
function d7clear_h()
	return has("hook2") and has("cane") and
	kill_underwater_hard() and has("feather") and
	Tracker:ProviderCountForCode("d7sk") >= 7
end

function d8clear()
	return has("bombs") and has("cane") and
	has("hook1") and has("shooter") and 
	has("emberseeds") and has("scentseeds") and
	has("powerglove") and has("feather") and has("sword1")
end
function d8clear_h()
	-- Should be the same as above, keeping it separate in case of future changes
	return has("bombs") and has("cane") and
	has("hook1") and has("shooter") and 
	has("emberseeds") and has("scentseeds") and
	has("powerglove") and has("feather") and has("sword1")
end

