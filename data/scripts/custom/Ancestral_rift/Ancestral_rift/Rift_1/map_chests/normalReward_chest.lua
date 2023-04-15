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
    actionId = 39178,
    baseChance = 500, 
    cooldown = {
        active = true, 
        key = 545830,
        value = 600 
    },
    chanceIncreasers = {
        {itemId = 13560, chanceIncrease = 5},
        {itemId = 13559, chanceIncrease = 15},
        {itemId = 13565, chanceIncrease = 20}
    },
    rewards = {
        {itemId = 6105, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 6556, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7243, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7244, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7245, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7247, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7248, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 8267, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 8584, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 8694, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 9675, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 8707, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 8701, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7705, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 5089, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7736, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7844, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4854, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 7846, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4851, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4853, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4872, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 4858, minCount = 3, maxCount = 6, chance = 800},
        {itemId = 10100, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 10032, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 10106, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 10107, minCount = 2, maxCount = 4, chance = 800},
        {itemId = 16004, minCount = 1, maxCount = 5, chance = 800}
    }
}

local normalRewardFirst = Action()

function normalRewardFirst.onUse(player, item, fromPosition, target, toPosition, isHotkey)

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

normalRewardFirst:aid(config.actionId)
normalRewardFirst:register()