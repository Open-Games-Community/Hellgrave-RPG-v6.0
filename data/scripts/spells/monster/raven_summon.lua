local summons = {
    [1] = {name = "Raven Servant [**]"}
}

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_STEPSHORIZONTAL)

	arr = {
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
	}

	local area = createCombatArea(arr)
	combat:setArea(area)

local maxsummons = 5

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
creature:say("RISE MY SERVANTS! RISE!!", TALKTYPE_MONSTER_SAY)

	local summoncount = creature:getSummons()
	local creaturePos = creature:getPosition()
	if #summoncount < 10 then
		for i = 1, maxsummons do
			local mid = Game.createMonster(summons[math.random(#summons)].name, Position(creaturePos.x + math.random(-3, 3), creaturePos.y + math.random(-3, 3), creaturePos.z))
    		if not mid then
				return
			end
			mid:setMaster(creature)
		end
	end
	return combat:execute(creature, var)
end

spell:name("raven summon")
spell:words("###822")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(true)
spell:register()