-- Teleport to the Kindernia town after reaching level 100 (the player has five minutes before being teleported)
local function teleportToKinderniaTown(uid)
	local player = Player(uid)
	-- If not have the Oressa storage, teleport player to the town
	if player and player:getStorageValue(Storage.Kindernia.DoorVocation) == -1 then
		player:teleportTo(player:getTown():getTemplePosition())
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
end

local kinderniaAdvance = CreatureEvent("KinderniaAdvance")

function kinderniaAdvance.onAdvance(player, skill, oldLevel, newLevel)
	local town = player:getTown()
	-- Check that resides on Kindernia
	if town and town:getId() == TOWNS_LIST.KINDERNIA then
		if skill == SKILL_LEVEL then
			-- Notify min level to leave Kindernia
			if newLevel == 30 then
				player:sendTextMessage(
					MESSAGE_EVENT_ADVANCE,
					"Congratulations! \z
					You may now choose your vocation and leave Kindernia. Talk to Oressa upper Coltrayene Shop."
				)
			-- Notify max level to stay in Kindernia
			elseif newLevel >= 10000 then
				player:sendTextMessage(
					MESSAGE_EVENT_ADVANCE,
					"You have reached the limit level and have to choose your vocation and leave Kindernia."
				)
				-- Adds the event that teleports the player to the temple in five minutes after reaching level 10000
				addEvent(teleportToKinderniaTown, 5 * 60 * 1000, player:getId())
			end
		-- Notify reached a skill limit
		elseif skill ~= SKILL_LEVEL and isSkillGrowthLimited(player, skill) then
			if skill == SKILL_MAGLEVEL then
				player:sendTextMessage(
					MESSAGE_EVENT_ADVANCE,
					"You cannot train your magic level any further. \z
					If you want to improve it further, you must go to the mainland."
				)
			else
				player:sendTextMessage(
					MESSAGE_EVENT_ADVANCE,
					"You cannot train your skill level any further. \z
					If you want to improve it further, you must go to the mainland."
				)
			end
		end
	end
	return true
end

kinderniaAdvance:register()
