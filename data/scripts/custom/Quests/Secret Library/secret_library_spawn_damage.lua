local effects = {
	{fromPosition = Position(29969, 33440, 8), toPosition = Position(29969, 33443, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29976, 33440, 8), toPosition = Position(29976, 33443, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29983, 33440, 8), toPosition = Position(29983, 33443, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29987, 33446, 8), toPosition = Position(29989, 33446, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29983, 33449, 8), toPosition = Position(29983, 33451, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29976, 33449, 8), toPosition = Position(29976, 33451, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29969, 33449, 8), toPosition = Position(29969, 33451, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29965, 33453, 8), toPosition = Position(29967, 33453, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29965, 33458, 8), toPosition = Position(29967, 33458, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29965, 33463, 8), toPosition = Position(29967, 33463, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29971, 33465, 8), toPosition = Position(29971, 33467, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29978, 33465, 8), toPosition = Position(29978, 33467, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29985, 33465, 8), toPosition = Position(29985, 33467, 8), effect = CONST_ME_HOLYDAMAGE},
	{fromPosition = Position(29954, 33514, 8), toPosition = Position(29954, 33516, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(29960, 33514, 8), toPosition = Position(29960, 33516, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(29966, 33514, 8), toPosition = Position(29966, 33516, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(29972, 33514, 8), toPosition = Position(29972, 33516, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(29978, 33514, 8), toPosition = Position(29978, 33516, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(29984, 33514, 8), toPosition = Position(29990, 33516, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(30020, 33514, 8), toPosition = Position(30020, 33515, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(30026, 33514, 8), toPosition = Position(30026, 33515, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(30032, 33514, 8), toPosition = Position(30032, 33515, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(30038, 33514, 8), toPosition = Position(30038, 33515, 8), effect = CONST_ME_FIREAREA},
	{fromPosition = Position(30044, 33514, 8), toPosition = Position(30044, 33515, 8), effect = CONST_ME_FIREAREA}
}

local spawnDamage = GlobalEvent("spawn damage")
function spawnDamage.onThink(interval)
	local jolf
	for i = 1, #effects do
		local settings = effects[i]
		fromPosition = settings.fromPosition
		toPosition = settings.toPosition
		local spectators = Game.getSpectators(settings.fromPosition, false, true, 7, 7, 5, 5)
		if #spectators > 0 then
			if settings.effect then
				for y = fromPosition.y, toPosition.y do
					local newPosition = Position(fromPosition.x, y, fromPosition.z)
					newPosition:sendMagicEffect(settings.effect)

					jolf = Tile(newPosition):getTopCreature()
					if jolf and jolf:isPlayer() then
						doTargetCombatHealth(0, jolf, COMBAT_PHYSICALDAMAGE, -500, -1000, settings.effect)
					end
				end
				for x = fromPosition.x, toPosition.x do
					local newPosition2 = Position(x, fromPosition.y, fromPosition.z)
					newPosition2:sendMagicEffect(settings.effect)
					jolf = Tile(newPosition2):getTopCreature()
					if jolf and jolf:isPlayer() then
						doTargetCombatHealth(0, jolf, COMBAT_PHYSICALDAMAGE, -10, -500, settings.effect)
					end
				end
			end
		end
	end
	return true
end

spawnDamage:interval(9000)
spawnDamage:register()
