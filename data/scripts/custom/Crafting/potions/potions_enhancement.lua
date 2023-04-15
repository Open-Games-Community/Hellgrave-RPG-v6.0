local strikeEnhancement = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE,
    bonusPercent = 8,
    duration = 3600
}
function strikeEnhancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

strikeEnhancement:id(41558)
strikeEnhancement:register()

local swordEnhancement = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_SWORD,
    bonusPercent = 8,
    duration = 3600
}
function swordEnhancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

swordEnhancement:id(41559)
swordEnhancement:register()

local axeEnhancement = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_AXE,
    bonusPercent = 8,
    duration = 3600
}
function axeEnhancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

axeEnhancement:id(41560)
axeEnhancement:register()

local clubEnhancement = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_CLUB,
    bonusPercent = 8,
    duration = 3600
}
function clubEnhancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

clubEnhancement:id(41561)
clubEnhancement:register()

local distanceEnhancement = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_DISTANCE,
    bonusPercent = 8,
    duration = 3600
}
function distanceEnhancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

distanceEnhancement:id(41562)
distanceEnhancement:register()

local magicEnhancement = Action()
local config = {
    bonus = CONDITION_PARAM_STAT_MAGICPOINTS,
    bonusPercent = 8,
    duration = 7200
}
function magicEnhancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

magicEnhancement:id(41563)
magicEnhancement:register()

local shieldEnchancement = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_SHIELD,
    bonusPercent = 8,
    duration = 3600
}
function shieldEnchancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

shieldEnchancement:id(41564)
shieldEnchancement:register()

local fishingEnchancement = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_FISHING,
    bonusPercent = 20,
    duration = 3600
}
function fishingEnchancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

fishingEnchancement:id(41565)
fishingEnchancement:register()

local critDamageEnhancement = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_CRITICAL_HIT_DAMAGE,
    bonusPercent = 8,
    duration = 3600
}
function critDamageEnhancement.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

critDamageEnhancement:id(41566)
critDamageEnhancement:register()



local elementalBonus = Action()
local config = {
    bonus = CONDITION_PARAM_SKILL_CRITICAL_HIT_DAMAGE,
    bonusOne = CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE,
    bonusTwo = CONDITION_PARAM_SKILL_FISHING,
    bonusThree = CONDITION_PARAM_SKILL_SHIELD,
    bonusFour = CONDITION_PARAM_STAT_MAGICPOINTS,
    bonusFive = CONDITION_PARAM_SKILL_DISTANCE,
    bonusSix = CONDITION_PARAM_SKILL_CLUB,
    bonusSeven = CONDITION_PARAM_SKILL_AXE,
    bonusEight = CONDITION_PARAM_SKILL_SWORD,
    bonusPercent = 8,
    duration = 3600
}
function elementalBonus.onUse(player, item)
        if player then
            local bonus = Condition(CONDITION_ATTRIBUTES)
            local bonusOne = Condition(CONDITION_ATTRIBUTES)
            local bonusTwo = Condition(CONDITION_ATTRIBUTES)
            local bonusThree = Condition(CONDITION_ATTRIBUTES)
            local bonusFour = Condition(CONDITION_ATTRIBUTES)
            local bonusFive = Condition(CONDITION_ATTRIBUTES)
            local bonusSix = Condition(CONDITION_ATTRIBUTES)
            local bonusSeven = Condition(CONDITION_ATTRIBUTES)
            local bonusEight = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            bonus:setParameter(config.bonusOne, config.bonusPercent)
            bonus:setParameter(config.bonusTwo, config.bonusPercent)
            bonus:setParameter(config.bonusThree, config.bonusPercent)
            bonus:setParameter(config.bonusFour, config.bonusPercent)
            bonus:setParameter(config.bonusFive, config.bonusPercent)
            bonus:setParameter(config.bonusSix, config.bonusPercent)
            bonus:setParameter(config.bonusSeven, config.bonusPercent)
            bonus:setParameter(config.bonusEight, config.bonusPercent)
            player:addCondition(bonus)
            player:addCondition(bonusOne)
            player:addCondition(bonusTwo)
            player:addCondition(bonusThree)
            player:addCondition(bonusFour)
            player:addCondition(bonusFive)
            player:addCondition(bonusSix)
            player:addCondition(bonusSeven)
            player:addCondition(bonusEight)
            item:remove(1)
            return true
        end

    player:getPosition():sendMagicEffect(CONST_ME_POFF)
    return true
end

elementalBonus:id(26251)
elementalBonus:register()




