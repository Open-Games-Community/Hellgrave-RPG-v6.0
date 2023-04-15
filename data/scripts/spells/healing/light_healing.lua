local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, 254)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onGetFormulaValues(player, level, magicLevel) -- already compared to the official tibia | compared date: 05/07/19(m/d/y)
	local min = (level * 0.2 + magicLevel * 1.4) + 8
	local max = (level * 0.2 + magicLevel * 1.795) + 11
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end

spell:name("Light Healing")
spell:words("exura")
spell:group("healing")
spell:vocation("priest;true", "elite priest;true", "hunter;true", "elite hunter;true", "mage;true", "elite mage;true")
spell:id(1)
spell:cooldown(1000)
spell:groupCooldown(1000)
spell:level(8)
spell:mana(20)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
