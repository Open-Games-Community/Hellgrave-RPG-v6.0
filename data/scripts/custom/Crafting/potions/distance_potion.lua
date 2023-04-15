
local distancePot = Action()


function distancePot.onUse(player, item)
	if player then
        local skillDist = player:getSkillLevel(SKILL_DISTANCE)
        player:setSkillLevel(SKILL_DISTANCE, skillDist + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added +1 distance Skill.")
        item:remove(1)
    end
end

distancePot:id(27211)
distancePot:register()

