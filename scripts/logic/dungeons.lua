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

-- d5


