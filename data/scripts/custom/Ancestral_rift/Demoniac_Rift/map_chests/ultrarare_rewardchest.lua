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
    actionId = 39181,
    baseChance = 150, 
    cooldown = {
        active = true,
        key = 545839,
        value = 14400
    },
    chanceIncreasers = {
        {itemId = 13560, chanceIncrease = 10},
        {itemId = 13559, chanceIncrease = 25},
        {itemId = 13565, chanceIncrease = 50}
    },
    rewards = {
        {itemId = 5937, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 5802, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 5799, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 4873, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 4865, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 4870, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 5939, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 6088, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 5938, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 4868, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 6090, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 26320, minCount = 1, maxCount = 5, chance = 1000},
        {itemId = 26321, minCount = 1, maxCount = 2, chance = 1000},
        {itemId = 26322, minCount = 1, maxCount = 3, chance = 1000},
        {itemId = 26323, minCount = 1, maxCount = 2, chance = 1000},
        {itemId = 27310, minCount = 1, maxCount = 3, chance = 1000},
        {itemId = 6106, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 6549, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 6551, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 7242, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 7249, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 9117, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 9674, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 8699, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 10302, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 10304, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 10613, minCount = 2, maxCount = 3, chance = 1000},
        {itemId = 9693, minCount = 1, maxCount = 1, chance = 1000},
        {itemId = 9699, minCount = 1, maxCount = 1, chance = 1000},
        {itemId = 9735, minCount = 1, maxCount = 1, chance = 1000},
        {itemId = 10089, minCount = 1, maxCount = 1, chance = 1000},
        {itemId = 14350, minCount = 1, maxCount = 1, chance = 1000},
        {itemId = 10092, minCount = 2, maxCount = 1, chance = 1000},
        {itemId = 18547, minCount = 1, maxCount = 1, chance = 1000},
    }
}

local ultraRareRewardDemoniac = Action()

function ultraRareRewardDemoniac.onUse(player, item, fromPosition, target, toPosition, isHotkey)

    if config.cooldown.active then
        local currentTime = os.time()
        local currentStorage = player:getStorageValue(config.cooldown.key)
        if currentStorage > currentTime then
            player:sendCancelMessage("You can only open one chest per demoniac rift. The Demoniac Rift has 2 hours cooldown.")
            return true
        end
        player:setStorageValue(config.cooldown.key, (currentTime + config.cooldown.value))
    end
    local chance = config.baseChance
    for i = 2, # config.chanceIncreasers do 
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
        for i = 2, #config.rewards do
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

ultraRareRewardDemoniac:aid(config.actionId)
ultraRareRewardDemoniac:register()