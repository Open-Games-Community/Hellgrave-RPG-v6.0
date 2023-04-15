local legendaryFishing = Action()

local waters = {4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 4665, 4666, 4820, 4821, 4822, 4823, 4824, 4825, 4608, 4609, 4610, 4611, 4612, 4613, 7236}
local lava = {598, 599, 600, 601, 9883}
local swamp = {4691, 4692, 4693, 4694, 4695, 4696, 4697, 4698, 4699, 4700, 4701, 4702, 4703, 4704, 4705, 4706, 4707, 4708, 4709, 4710, 4711, 4712, 4752}

local water_monsters = {
    [1] = {name = "Tortoise", chance = 75000, fishing = 10, level = 10, tries = 1, msg = "|PLAYERNAME| has caught a tortoise!", broadcastToServer = false},
    [2] = {name = "Toad", chance = 50000, fishing = 10, level = 15, tries = 2, msg = "|PLAYERNAME| has caught a toad!", broadcastToServer = false},
    [3] = {name = "Water elemental", chance = 35000, fishing = 15, level = 20, tries = 3, msg = "|PLAYERNAME| has caught a water elemental!", broadcastToServer = false},
    [4] = {name = "Sea Serpent", chance = 25000, fishing = 20, level = 40, tries = 4, msg = "|PLAYERNAME| has caught a sea serpent!", broadcastToServer = false},
    [5] = {name = "Warlock", chance = 15000, fishing = 25, level = 50, tries = 5, msg = "|PLAYERNAME| has caught a warlock!", broadcastToServer = false},
    [6] = {name = "Hellspawn", chance = 8000, fishing = 30, level = 70, tries = 6, msg = "|PLAYERNAME| has caught a hellspawn!", broadcastToServer = false},
    [7] = {name = "Dark Torturer", chance = 5000, fishing = 40, level = 100, tries = 7, msg = "|PLAYERNAME| has caught a Dark Torturer while fishing!", broadcastToServer = true},
    [8] = {name = "Hellgorak", chance = 1000, fishing = 50, level = 120, tries = 10, msg = "|PLAYERNAME| has caught a Hellgorak while fishing!", broadcastToServer = true},
}

local lava_monsters = {
    [1] = {name = "Fire Elemental", chance = 75000, fishing = 10, level = 10, tries = 1, msg = "|PLAYERNAME| has caught a fire elemental!", broadcastToServer = false},
    [2] = {name = "Fire Devil", chance = 50000, fishing = 10, level = 15, tries = 2, msg = "|PLAYERNAME| has caught a fire devil!", broadcastToServer = false},
    [3] = {name = "Dragon", chance = 35000, fishing = 15, level = 20, tries = 3, msg = "|PLAYERNAME| has caught a dragon!", broadcastToServer = false},
    [4] = {name = "Dragon Lord", chance = 25000, fishing = 20, level = 40, tries = 4, msg = "|PLAYERNAME| has caught a dragon lord!", broadcastToServer = false},
    [5] = {name = "Fury", chance = 15000, fishing = 25, level = 50, tries = 5, msg = "|PLAYERNAME| has caught a fury!", broadcastToServer = false},
    [6] = {name = "Hellfire fighter", chance = 8000, fishing = 30, level = 70, tries = 6, msg = "|PLAYERNAME| has caught a hellfire fighter!", broadcastToServer = false},
    [7] = {name = "Demon", chance = 5000, fishing = 40, level = 100, tries = 7, msg = "|PLAYERNAME| has caught a Demon while fishing!", broadcastToServer = true},
    [8] = {name = "Madareth", chance = 1000, fishing = 50, level = 120, tries = 10, msg = "|PLAYERNAME| has caught a Madareth while fishing!", broadcastToServer = true},
}

local swap_monsters = {
    [1] = {name = "Efreet", chance = 75000, fishing = 10, level = 10, tries = 1, msg = "|PLAYERNAME| has caught a efreet!", broadcastToServer = false},
    [2] = {name = "Slime", chance = 50000, fishing = 10, level = 15, tries = 2, msg = "|PLAYERNAME| has caught a slime!", broadcastToServer = false},
    [3] = {name = "Defiler", chance = 35000, fishing = 15, level = 20, tries = 3, msg = "|PLAYERNAME| has caught a Defiler!", broadcastToServer = false},
    [4] = {name = "Plaguesmith", chance = 25000, fishing = 20, level = 40, tries = 4, msg = "|PLAYERNAME| has caught a Plaguesmith!", broadcastToServer = false},
    [5] = {name = "Destroyer", chance = 15000, fishing = 25, level = 50, tries = 5, msg = "|PLAYERNAME| has caught a Destroyer!", broadcastToServer = false},
    [6] = {name = "Grimeleech", chance = 8000, fishing = 30, level = 70, tries = 6, msg = "|PLAYERNAME| has caught a Grimeleech!", broadcastToServer = false},
    [7] = {name = "Hellflayer", chance = 5000, fishing = 40, level = 100, tries = 7, msg = "|PLAYERNAME| has caught a Hellflayer while fishing!", broadcastToServer = true},
    [8] = {name = "Zugurosh", chance = 1000, fishing = 50, level = 120, tries = 10, msg = "|PLAYERNAME| has caught a Zugurosh while fishing!", broadcastToServer = true}
}

local chance = 500000

local catchFishStorage = 15000 
local chanceCatchNormalFish = 70 
local chanceCatchNorthernPike = 70 
local fishId = 2638 
exhaust = Condition(CONDITION_EXHAUST_HEAL)
exhaust:setParameter(CONDITION_PARAM_TICKS, (configManager.getNumber(configKeys.EX_ACTIONS_DELAY_INTERVAL) + 1))
  
function legendaryFishing.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local NorthernPikeId = 2638 
        if player:getCondition(CONDITION_EXHAUST_HEAL) then
            return player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_YOUAREEXHAUSTED))
        end
      
    if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
        return player:sendCancelMessage("You may not fish from protection zone.")
    end
    if not isInArray(waters, target.itemid) and not isInArray(lava, target.itemid) and not isInArray(swamp, target.itemid) then
        return false
    end
 
    local tmp_table = {}
 
    if isInArray(waters, target.itemid) then
        tmp_table = water_monsters
        toPosition:sendMagicEffect(CONST_ME_LOSEENERGY)
    elseif isInArray(lava, target.itemid) then
        tmp_table = lava_monsters
        toPosition:sendMagicEffect(CONST_ME_HITBYFIRE)
    elseif isInArray(swamp, target.itemid) then
        tmp_table = swap_monsters
        toPosition:sendMagicEffect(9)
    end
 
    for i = 1, #tmp_table do
        if (player:getLevel() >= tmp_table[i].level and player:getSkillLevel(SKILL_FISHING) >= tmp_table[i].fishing) then
            local catchChance = math.random(1, chance)
        local fishSkill = player:getSkillLevel(SKILL_FISHING)       
            if catchChance <= (tmp_table[i].chance + ((fishSkill - 10)* 1000)) then
                local MONS = Game.createMonster(tmp_table[i].name, player:getPosition())
                player:addSkillTries(SKILL_FISHING, tmp_table[i].tries)             
                if MONS then
                    if tmp_table[i].broadcastToServer then
                        local text = string.gsub(tmp_table[i].msg, "|PLAYERNAME|", player:getName())
                        Game.broadcastMessage(text)
                    end
                end
            break
            end
        end
    end
 
    if isInArray(waters, target.itemid) then
        if player:getStorageValue(catchFishStorage) == 1 then
            if math.random(1, 100) <= chanceCatchNormalFish then
                player:addItem(fishId, 1, true)
            else
                if math.random(1, 100) <= chanceCatchNorthernPike then
                    player:addItem(NorthernPikeId, 1, true)
                end
            end
        end
    end

    player:addCondition(exhaust)
return true
end

legendaryFishing:id(39198)
legendaryFishing:allowFarUse(true)
legendaryFishing:register()

