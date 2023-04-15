local config = {
    chance = 2,
    summon = 'disphasis',
    bonus = CONDITION_PARAM_SKILL_SHIELD,
    bonusPercent = 10,
    duration = 45,
    minDetectableDamage = 100,
    onlyWeapons = false,
    ---
    chanceSecond = 2,
    summonSecond = 'lisandar',
    bonusSecond = CONDITION_PARAM_SKILL_SWORD,
    bonusPercentSecond = 10,
    durationSecond = 45,
    minDetectableDamageSecond = 100,
    onlyWeaponsSecond = true,
    ---
    chanceThirst = 2,
    summonThirst = 'ophyx',
    bonusThirst = CONDITION_PARAM_SKILL_SWORD,
    bonusPercentThirst = 10,
    durationThirst = 45,
    minDetectableDamageThirst = 100,
    onlyWeaponsThirst = true,
    ---
    chanceFour = 2,
    summonFour = 'phalanx',
    bonusFour = CONDITION_PARAM_SKILL_AXE,
    bonusPercentFour = 10,
    durationFour = 45,
    minDetectableDamageFour = 100,
    onlyWeaponsFour = true,
    ---
    chanceFive = 2,
    summonFive = 'rungor',
    bonusFive = CONDITION_PARAM_SKILL_DISTANCE,
    bonusPercentFive = 10,
    durationFive = 45,
    minDetectableDamageFive = 100,
    onlyWeaponsFive = true,
    ---
    chanceSix = 2,
    summonSix = 'sherix',
    bonusSix = CONDITION_PARAM_SKILL_DISTANCE,
    bonusPercentSix = 10,
    durationSix = 45,
    minDetectableDamageSix = 100,
    onlyWeaponsSix = true,
    ---
    chanceSeven = 2,
    summonSeven = 'worgen',
    bonusSeven = CONDITION_PARAM_SKILL_DISTANCE,
    bonusPercentSeven = 10,
    durationSeven = 45,
    minDetectableDamageSeven = 100,
    onlyWeaponsSeven = true,
    ---
    chanceEight = 2,
    summonEight = 'ulyssea',
    bonusEight = CONDITION_PARAM_SKILL_CLUB,
    bonusPercentEight = 10,
    durationEight = 45,
    minDetectableDamageEight = 100,
    onlyWeaponsEight = true,
}

local storagesSpell = {
    storageOne = 12458,
    storageTwo = 12459,
    storageThree = 12460,
    storageFour = 12461,
    storageFive = 12462,
    storageSix = 12463,
    storageSeven = 12464,
    storagesEight = 12465,
}


--- Do not touch if you dont know what you are doing ---

local function whenPlayerAttack(player, damage)
    local leftHand = player:getSlotItem(CONST_SLOT_LEFT)
    local weaponSpell = player:getSlotItem(CONST_SLOT_LEFT)
    local awakeningEmblem = player:getSlotItem(CONST_SLOT_AMMO)
    local crypticDragonEgg = player:getSlotItem(CONST_SLOT_AMMO)
    if damage >= config.minDetectableDamage and math.random(100) <= config.chance and leftHand and leftHand.itemid == 42033 then
        local monster = Game.createMonster(config.summon, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                    monster:remove()
                end
            end, config.duration * 1000, monster:getId())
            local bonus = Condition(CONDITION_ATTRIBUTES)
            bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
            bonus:setParameter(config.bonus, config.bonusPercent)
            player:addCondition(bonus)
        end
    elseif weaponSpell and weaponSpell.itemid == 42033 then
        player:setStorageValue(storagesSpell.storageOne, 1)
    elseif damage >= config.minDetectableDamage and math.random(100) <= config.chance and leftHand and leftHand.itemid == 40804 then
            local monster = Game.createMonster(config.summon, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                        monster:remove()
                    end
                end, config.duration * 1000, monster:getId())
                local bonus = Condition(CONDITION_ATTRIBUTES)
                bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
                bonus:setParameter(config.bonus, config.bonusPercent)
                player:addCondition(bonus)
            end
        elseif weaponSpell and weaponSpell.itemid == 40804 then
            player:setStorageValue(storagesSpell.storageOne, 1)
        elseif damage >= config.minDetectableDamage and math.random(100) <= config.chance and leftHand and leftHand.itemid == 40805 then
            local monster = Game.createMonster(config.summon, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                        monster:remove()
                    end
                end, config.duration * 1000, monster:getId())
                local bonus = Condition(CONDITION_ATTRIBUTES)
                bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
                bonus:setParameter(config.bonus, config.bonusPercent)
                player:addCondition(bonus)
            end
        elseif weaponSpell and weaponSpell.itemid == 40805 then
            player:setStorageValue(storagesSpell.storageOne, 1)
        elseif damage >= config.minDetectableDamage and math.random(100) <= config.chance and leftHand and leftHand.itemid == 40806 then
            local monster = Game.createMonster(config.summon, player:getPosition())
            if monster then
                monster:setMaster(player)
                monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
                addEvent(function (cid)
                    local monster = Monster(cid)
                    if monster then
                        monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                        monster:remove()
                    end
                end, config.duration * 1000, monster:getId())
                local bonus = Condition(CONDITION_ATTRIBUTES)
                bonus:setParameter(CONDITION_PARAM_TICKS, config.duration * 1000)
                bonus:setParameter(config.bonus, config.bonusPercent)
                player:addCondition(bonus)
            end
        elseif weaponSpell and weaponSpell.itemid == 40806 then
            player:setStorageValue(storagesSpell.storageOne, 1)
 elseif awakeningEmblem and awakeningEmblem.itemid == 25945 then
    player:setStorageValue(113284, os.time() + 60)
elseif crypticDragonEgg and crypticDragonEgg.itemid == 29220 then
    player:setStorageValue(114337, os.time() + 60)
    elseif damage >= config.minDetectableDamageSecond and math.random(100) <= config.chanceSecond and leftHand and leftHand.itemid == 42035 then
        local monster = Game.createMonster(config.summonSecond, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                    monster:remove()
                end
            end, config.durationSecond * 1000, monster:getId())
            local bonusSecond = Condition(CONDITION_ATTRIBUTES)
            bonusSecond:setParameter(CONDITION_PARAM_TICKS, config.durationSecond * 1000)
            bonusSecond:setParameter(config.bonusSecond, config.bonusPercentSecond)
            player:addCondition(bonusSecond)
        end
    elseif weaponSpell and weaponSpell.itemid == 42035 then
        player:setStorageValue(storagesSpell.storageTwo, 1)
    elseif damage >= config.minDetectableDamageThirst and math.random(100) <= config.chanceThirst and leftHand and leftHand.itemid == 42036 then
        local monster = Game.createMonster(config.summonThirst, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                    monster:remove()
                end
            end, config.durationThirst * 1000, monster:getId())
            local bonusThirst = Condition(CONDITION_ATTRIBUTES)
            bonusThirst:setParameter(CONDITION_PARAM_TICKS, config.durationThirst * 1000)
            bonusThirst:setParameter(config.bonusThirst, config.bonusPercentThirst)
            player:addCondition(bonusThirst)
        end
    elseif weaponSpell and weaponSpell.itemid == 42036 then
        player:setStorageValue(storagesSpell.storageThree, 1)
    elseif damage >= config.minDetectableDamageFour and math.random(100) <= config.chanceFour and leftHand and leftHand.itemid == 42038 then
        local monster = Game.createMonster(config.summonFour, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                    monster:remove()
                end
            end, config.durationFour * 1000, monster:getId())
            local bonusFour = Condition(CONDITION_ATTRIBUTES)
            bonusFour:setParameter(CONDITION_PARAM_TICKS, config.durationFour * 1000)
            bonusFour:setParameter(config.bonusFour, config.bonusPercentFour)
            player:addCondition(bonusFour)
        end
    elseif weaponSpell and weaponSpell.itemid == 42038 then
        player:setStorageValue(storagesSpell.storageFour, 1)
    elseif damage >= config.minDetectableDamageFive and math.random(100) <= config.chanceFive and leftHand and leftHand.itemid == 24777 then
        local monster = Game.createMonster(config.summonFive, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                    monster:remove()
                end
            end, config.durationFive * 1000, monster:getId())
            local bonusFive = Condition(CONDITION_ATTRIBUTES)
            bonusFive:setParameter(CONDITION_PARAM_TICKS, config.durationFive * 1000)
            bonusFive:setParameter(config.bonusFive, config.bonusPercentFive)
            player:addCondition(bonusFive)
        end
    elseif weaponSpell and weaponSpell.itemid == 24777 then
        player:setStorageValue(storagesSpell.storageFive, 1)
    elseif damage >= config.minDetectableDamageSix and math.random(100) <= config.chanceSix and leftHand and leftHand.itemid == 40854 then
        local monster = Game.createMonster(config.summonSix, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                    monster:remove()
                end
            end, config.durationSix * 1000, monster:getId())
            local bonusSix = Condition(CONDITION_ATTRIBUTES)
            bonusSix:setParameter(CONDITION_PARAM_TICKS, config.durationSix * 1000)
            bonusSix:setParameter(config.bonusSix, config.bonusPercentSix)
            player:addCondition(bonusSix)
        end
    elseif weaponSpell and weaponSpell.itemid == 40854 then
        player:setStorageValue(storagesSpell.storageSix, 1)
    elseif damage >= config.minDetectableDamageSeven and math.random(100) <= config.chanceSeven and leftHand and leftHand.itemid == 42045 then
        local monster = Game.createMonster(config.summonSeven, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                    monster:remove()
                end
            end, config.durationSeven * 1000, monster:getId())
            local bonusSeven = Condition(CONDITION_ATTRIBUTES)
            bonusSeven:setParameter(CONDITION_PARAM_TICKS, config.durationSeven * 1000)
            bonusSeven:setParameter(config.bonusSeven, config.bonusPercentSeven)
            player:addCondition(bonusSeven)
        end
    elseif weaponSpell and weaponSpell.itemid == 42045 then
        player:setStorageValue(storagesSpell.storageSeven, 1)
    elseif damage >= config.minDetectableDamageEight and math.random(100) <= config.chanceEight and leftHand and leftHand.itemid == 39173 then
        local monster = Game.createMonster(config.summonEight, player:getPosition())
        if monster then
            monster:setMaster(player)
            monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            addEvent(function (cid)
                local monster = Monster(cid)
                if monster then
                    monster:getPosition():sendMagicEffect(CONST_ME_POFF)
                    monster:remove()
                end
            end, config.durationEight * 1000, monster:getId())
            local bonusEight = Condition(CONDITION_ATTRIBUTES)
            bonusEight:setParameter(CONDITION_PARAM_TICKS, config.durationEight * 1000)
            bonusEight:setParameter(config.bonusEight, config.bonusPercentEight)
            player:addCondition(bonusEight)
        end
    elseif weaponSpell and weaponSpell.itemid == 39173 then
        player:setStorageValue(storagesSpell.storagesEight, 1)
    end
end

----- Config onPlayerAttack ----

local creatureEvent = CreatureEvent("WhenPlayerAttackHealth")

function creatureEvent.onHealthChange(creature, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not player then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    if primaryType == COMBAT_HEALING or not player:isPlayer() then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    if not config.onlyWeapons or table.contains({ORIGIN_WAND, ORIGIN_MELEE, ORIGIN_RANGED}, origin) then
        whenPlayerAttack(player, primaryDamage + secondaryDamage)
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

creatureEvent:register()

local creatureEvent = CreatureEvent("WhenPlayerAttackMana")

function creatureEvent.onManaChange(creature, player, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not player then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    if primaryType == COMBAT_MANADRAIN or not player:isPlayer() then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    if not config.onlyWeapons or table.contains({ORIGIN_WAND, ORIGIN_MELEE, ORIGIN_RANGED}, origin) then
        whenPlayerAttack(player, primaryDamage + secondaryDamage)
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end

creatureEvent:register()



------- Spell One ItemOne------------

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 251)
combat:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 3) + (maglevel * 6.0)
	local max = (level / 3) + (maglevel * 12)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(storagesSpell.storageOne) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("Death Hur")
spell:words("exevo death hur")
spell:group("attack")
spell:vocation("elite mage", "elite priest")
spell:id(454)
spell:cooldown(5 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(500)
spell:mana(115)
spell:magicLevel(90)
spell:isPremium(true)
spell:needDirection(true)
spell:needTarget(false)
spell:register()

------- Spell Two ItemTwo------------

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 250)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_USECHARGES, 1)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	
	local min = (level / 5) + (skill + 2 * attack) * 1.2
	local max = (level / 5) + (skill + 2 * attack) * 3

	return -min * 1.0, -max * 1.4
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(storagesSpell.storageTwo) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("Exori max")
spell:words("Exori max")
spell:group("attack")
spell:vocation("Elite Warrior")
spell:id(455)
spell:cooldown(5 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(500)
spell:mana(380)
spell:needWeapon(true)
spell:magicLevel(8)
spell:isPremium(true)
spell:needTarget(false)
spell:register()

------- Spell Three ItemThree------------
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 245)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_USECHARGES, 1)
combat:setArea(createCombatArea(AREA_SQUARE2X2))

function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	
	local min = (level / 5) + (skill + 2 * attack) * 1.2
	local max = (level / 5) + (skill + 2 * attack) * 2.9

	return -min * 1.0, -max * 1.2
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(storagesSpell.storageThree) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("Flam Max")
spell:words("flam max")
spell:group("attack")
spell:vocation("Elite Warrior")
spell:id(456)
spell:cooldown(5 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(500)
spell:mana(400)
spell:magicLevel(8)
spell:needWeapon(true)
spell:isPremium(true)
spell:needTarget(false)
spell:register()

------- Spell Four ItemFour------------
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 247)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_USECHARGES, 1)
combat:setArea(createCombatArea(AREA_DIAGONAL2X2))

function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	
	local min = (level / 5) + (skill + 2 * attack) * 1.2
	local max = (level / 5) + (skill + 2 * attack) * 2.8

	return -min * 1.0, -max * 1.1
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(storagesSpell.storageFour) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("Terra Strike")
spell:words("Terra Striker")
spell:group("attack")
spell:vocation("Elite Warrior")
spell:id(457)
spell:cooldown(5 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(500)
spell:mana(380)
spell:magicLevel(8)
spell:needWeapon(true)
spell:isPremium(true)
spell:needTarget(false)
spell:register()

------- Spell Five ItemFive------------
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 195)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 28)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)

function onGetFormulaValues(player, skill, attack, factor)
	local levelTotal = player:getLevel() / 5
	return -(((2 * skill + attack / 2200) * 2.35) + (levelTotal) + 8), -(((2 * skill + attack / 1475) * 3.50) + (levelTotal) + 15)
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(storagesSpell.storageFive) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("Exori con max")
spell:words("exori con max")
spell:group("attack")
spell:vocation("elite hunter")
spell:id(458)
spell:range(7)
spell:needTarget(true)
spell:blockWalls(true)
spell:cooldown(5 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(500)
spell:mana(115)
spell:magicLevel(10)
spell:isPremium(true)
spell:register()

------- Spell Six ItemSix ------------
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 40)
combat:setArea(createCombatArea(AREA_BEAM4))

function onGetFormulaValues(player, skill, attack, factor)
	local levelTotal = player:getLevel() / 5
	return -(((2 * skill + attack / 2300) * 2.10) + (levelTotal) + 10), -(((2 * skill + attack / 1755) * 3.10) + (levelTotal) + 15)
end


combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(storagesSpell.storageSix) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("San Max")
spell:words("San Max")
spell:group("attack")
spell:vocation("elite hunter")
spell:id(459)
spell:cooldown(5 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(500)
spell:mana(200)
spell:magicLevel(8)
spell:isPremium(true)
spell:needDirection(true)
spell:needTarget(false)
spell:register()

------- Spell Seven ItemSeven------------
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 9)
	local max = (level / 5) + (maglevel * 12)
	return -min * 0.9, -max * 2.0
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(storagesSpell.storageSeven) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("wind wave")
spell:words("wind wave")
spell:group("attack")
spell:vocation("elite hunter")
spell:id(460)
spell:cooldown(5 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(500)
spell:mana(200)
spell:magicLevel(8)
spell:isPremium(true)
spell:needTarget(false)
spell:register()

------- Spell Eight ItemEight------------
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, 253)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_USECHARGES, 1)
combat:setArea(createCombatArea(AREA_CIRCLE2X2))

function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	
	local min = (level / 5) + (skill + 2 * attack) * 1.2
	local max = (level / 5) + (skill + 2 * attack) * 2.8

	return -min * 1.0, -max * 1.1
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(storagesSpell.storagesEight) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("Mortal Shell")
spell:words("mortal shell")
spell:group("attack")
spell:vocation("Elite Warrior")
spell:id(461)
spell:cooldown(5 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(500)
spell:mana(380)
spell:magicLevel(8)
spell:needWeapon(true)
spell:isPremium(true)
spell:needTarget(false)
spell:register()
