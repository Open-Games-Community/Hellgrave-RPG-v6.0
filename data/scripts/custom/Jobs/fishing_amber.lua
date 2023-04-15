local waterIds = {493, 4608, 4609, 4610, 4611, 13550, 13552, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 7236, 10499, 15401, 15402, 13549, 23785}
local normalLoot = {10926, 10303, 2633, 2634}
local commonLoot = {2632, 2630, 10308, 10942}
local rareLoot = {10616, 10307, 2635}
local divineLoot = {2629, 2631, 10614, 10613}
local extremeDivineLoot = {10615, 2638, 2636}
local extremeRareLoot = {10302, 10304, 2637}
local extremeCommonLoot = {10306, 11100, 2639, 10928}

local useWorms = true

local fishingAmber = Action()

function fishingAmber.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not isInArray(waterIds, target.itemid) then
		return false
	end

	local targetId = target.itemid

	if targetId ~= 7236 then
		toPosition:sendMagicEffect(CONST_ME_LOSEENERGY)
	end

	if targetId == 493 or targetId == 15402 then
		return true
	end


	player:addSkillTries(SKILL_FISHING, 1)
	if math.random(100) <= math.min(math.max(10 + (player:getEffectiveSkillLevel(SKILL_FISHING) - 10) * 0.697, 8), 50) then
		if useWorms and not player:removeItem("worm", 1) then
			return true
		end
		local rareChance = math.random(100)
			if rareChance == 2 then
				player:addItem(divineLoot[math.random(#divineLoot)], 1)
				player:addItem(extremeDivineLoot[math.random(#extremeDivineLoot)], 1)
				return true
			elseif rareChance <= 5 then
				player:addItem(rareLoot[math.random(#rareLoot)], 1)
				player:addItem(extremeRareLoot[math.random(#extremeRareLoot)], 1)
				return true
			elseif rareChance <= 13 then
				player:addItem(commonLoot[math.random(#commonLoot)], 1)
				player:addItem(extremeCommonLoot[math.random(#extremeCommonLoot)], 1)
				else
				player:addItem(normalLoot[math.random(#normalLoot)], 1)
				return true
			end
	end
	return true
end

fishingAmber:id(38146)
fishingAmber:allowFarUse(true)
fishingAmber:register()

