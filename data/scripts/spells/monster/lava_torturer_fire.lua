local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ORANGE_ENERGY_SPARK)

local condition = Condition(CONDITION_FIRE)
condition:setParameter(CONDITION_PARAM_DELAYED, 1)
condition:addDamage(30, 9000, -30)
combat:addCondition(condition)

	arr = {
		{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
		{0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0},
		{0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0},
		{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
		{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
		{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
		{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
		{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
		{0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0},
		{0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0},
		{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1}
	}

local area = createCombatArea(arr)
combat:setArea(area)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:name("lava torturer fire")
spell:words("lava torturer fire")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(true)
spell:needDirection(true)
spell:register()