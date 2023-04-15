local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_LIGHT)
condition:setParameter(CONDITION_PARAM_LIGHT_LEVEL, 6)
condition:setParameter(CONDITION_PARAM_LIGHT_COLOR, 215)
condition:setParameter(CONDITION_PARAM_TICKS, (6 * 60 + 10) * 1000)
combat:addCondition(condition)

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end

spell:name("Light")
spell:words("utevo lux")
spell:group("support")
spell:vocation("priest;true", "elite priest;true", "Warrior;true", "Elite Warrior;true", "hunter;true", "elite hunter;true", "mage;true", "elite mage;true")
spell:id(10)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(8)
spell:mana(20)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()