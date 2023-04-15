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
    actionId = 39180,
    baseChance = 100, 
    cooldown = {
        active = true,
        key = 545832,
        value = 1800
    },
    chanceIncreasers = {
        {itemId = 13560, chanceIncrease = 15},
        {itemId = 13559, chanceIncrease = 25},
        {itemId = 13565, chanceIncrease = 50}
    },
    rewards = {
        {itemId = 5937, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 5802, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 5799, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 4873, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 4865, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 4870, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 5939, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 6088, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 5938, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 4868, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 6090, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 6106, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 6549, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 6551, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 7242, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 7249, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 9117, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 9674, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 8699, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 10302, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 10304, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 10613, minCount = 1, maxCount = 2, chance = 500},
        {itemId = 14349, minCount = 1, maxCount = 1, chance = 500},
        {itemId = 10046, minCount = 1, maxCount = 1, chance = 500},
        {itemId = 13167, minCount = 1, maxCount = 1, chance = 500},
        {itemId = 13168, minCount = 1, maxCount = 1, chance = 500},
        {itemId = 13581, minCount = 1, maxCount = 1, chance = 500},
        {itemId = 12295, minCount = 1, maxCount = 1, chance = 500},
        {itemId = 10158, minCount = 1, maxCount = 1, chance = 500},
        {itemId = 26316, minCount = 1, maxCount = 5, chance = 500},
        {itemId = 26314, minCount = 1, maxCount = 5, chance = 500},
        {itemId = 26311, minCount = 1, maxCount = 5, chance = 500},
    }
}

local ultraRareRewardFirst = Action()

function ultraRareRewardFirst.onUse(player, item, fromPosition, target, toPosition, isHotkey)

    if config.cooldown.active then
        local currentTime = os.time()
        local currentStorage = player:getStorageValue(config.cooldown.key)
        if currentStorage > currentTime then
            player:sendCancelMessage("You can only open one chest per elder rift. The Elder Rift has 30 minuts cooldown.")
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

ultraRareRewardFirst:aid(config.actionId)
ultraRareRewardFirst:register()