--- Revscript by XIKINI 
--- Credits to 
--       __                         ___                        ___                  
--      |  |\           ___        /  /\           ___        /  /\           ___   
--      |  |:|         /__/\      /  /:/          /__/\      /  /::|         /__/\  
--      |  |:|         \__\:\    /  /:/           \__\:\    /  /:|:|         \__\:\ 
--      |__|:|__       /  /::\  /  /::\____       /  /::\  /  /:/|:|__       /  /::\
-- ____/__/::::\   __/  /:/\/ /__/:/\:::::\   __/  /:/\/ /__/:/ |:| /\   __/  /:/\/
-- \__\::::/~~~~  /__/\/:/~~  \__\/~|:|~~~~  /__/\/:/~~  \__\/  |:|/:/  /__/\/:/~~ 
--    |~~|:|      \  \::/        |  |:|      \  \::/         |  |:/:/   \  \::/    
--    |  |:|       \  \:\        |  |:|       \  \:\         |__|::/     \  \:\    
--    |__|:|        \__\/        |__|:|        \__\/         /__/:/       \__\/    
--     \__\|                      \__\|                      \__\/                 

local config = {
    actionId = 39179,
    baseChance = 300, 
    cooldown = {
        active = true, 
        key = 545831,
        value = 300 
    },
    chanceIncreasers = {
        {itemId = 13560, chanceIncrease = 10},
        {itemId = 13559, chanceIncrease = 20},
        {itemId = 13565, chanceIncrease = 40}
    },
    rewards = {
        {itemId = 4871, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7733, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4867, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4866, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7845, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4855, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4852, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 6087, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 14336, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4869, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 6089, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 6387, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 6547, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 6548, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 6550, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 6557, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 24774, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7246, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7286, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 42027, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 9002, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 2236, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 14342, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 8710, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 14346, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 9677, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 9694, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 9696, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 41944, minCount = 5, maxCount = 15, chance = 800},
        {itemId = 41995, minCount = 3, maxCount = 10, chance = 800},
        {itemId = 9698, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 9697, minCount = 1, maxCount = 5, chance = 800}
    }
}

local rareRewardFirst = Action()

function rareRewardFirst.onUse(player, item, fromPosition, target, toPosition, isHotkey)

    if config.cooldown.active then
        local currentTime = os.time()
        local currentStorage = player:getStorageValue(config.cooldown.key)
        if currentStorage > currentTime then
            player:sendCancelMessage("You can only open one chest per ancestral rift. The Ancestral Rift has 10 minuts cooldown.")
            return true
        end
        player:setStorageValue(config.cooldown.key, (currentTime + config.cooldown.value))
    end
    local chance = config.baseChance
    for i = 1, # config.chanceIncreasers do 
        local increaserCount = player:getItemCount(config.chanceIncreasers[i].itemId)
        local increasersUsed = 0
        while chance < 1000 and increaserCount > 0 do 
            chance = chance + config.chanceIncreasers[i].chanceIncrease
            increaserCount = increaserCount - 1
            increasersUsed = increasersUsed + 1
        end
        player:removeItem(config.chanceIncreasers[i].itemId, increasersUsed)
    end
    local rand = math.random(1000)
    if rand > chance then
        player:say("No reward.", TALKTYPE_MONSTER_SAY)
        return true
    end
    local rewardList = {} 
    while #rewardList < 1 do
        for i = 1, #config.rewards do
            rand = math.random(1000)
            if rand <= config.rewards[i].chance then
                rewardList[#rewardList + 1] = i
            end
        end
    end
   
    rand = math.random(#rewardList)   
    player:addItem(config.rewards[rand].itemId, math.random(config.rewards[rand].minCount, config.rewards[rand].maxCount), true)
    player:say("Received " .. ItemType(config.rewards[rand].itemId):getName():lower() .. " as reward.", TALKTYPE_MONSTER_SAY)
    return true
end

rareRewardFirst:aid(config.actionId)
rareRewardFirst:register()