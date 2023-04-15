
local fishingPot = Action()


function fishingPot.onUse(player, item)
	if player then
        local skillFish = player:getSkillLevel(SKILL_FISHING)
        player:setSkillLevel(SKILL_FISHING, skillFish + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You added +1 Fishing Skill.")
        item:remove(1)
    end
end

fishingPot:id(27179)
fishingPot:register()

