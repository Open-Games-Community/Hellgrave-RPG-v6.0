local stor = 12345 -- storage

local moveEvent = MoveEvent()

function moveEvent.onEquip(player, item, slot, isCheck)
    player:setStorageValue(stor, 1)
    return true
end

moveEvent:id(42888)
--moveEvent:level(lvl)
--moveEvent:magicLevel(lvl)
moveEvent:slot("hand")
--moveEvent:premium(bool)
--moveEvent:vocation(vocName[, showInDescription = false, lastVoc = false])
moveEvent:register()

local moveEvent = MoveEvent()

function moveEvent.onDeEquip(player, item, slot, isCheck)
    player:setStorageValue(stor, 1)
    return true
end

moveEvent:id(42888)
--moveEvent:level(lvl)
--moveEvent:magicLevel(lvl)
moveEvent:slot("hand")
--moveEvent:premium(bool)
--moveEvent:vocation(vocName[, showInDescription = false, lastVoc = false])
moveEvent:register()

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, magicLevel)
    local min = (level / 5) + (magicLevel * 8) + 50
    local max = (level / 5) + (magicLevel * 12) + 75
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(player, variant, isHotkey)
    if player:getStorageValue(stor) < 1 then
        player:sendCancelMessage("You can't cast the spell without using the item that allows it.")
        return false
    end
    return combat:execute(player, variant)
end

spell:name("Example Spell Name")
spell:words("exori gazia")
spell:group("attack")
spell:vocation("mage", "elite mage")
spell:id(24)
spell:cooldown(3 * 1000)
spell:groupCooldown(3 * 1000)
spell:level(60)
spell:mana(600)
spell:isPremium(true)
spell:needTarget(true)
spell:register()