
local axePot = Action()


function axePot.onUse(player, item)
	if player then
        local skillAxe = player:getSkillLevel(SKILL_AXE)
        player:setSkillLevel(SKILL_AXE, skillAxe + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added +1 Axe Skill.")
        item:remove(1)
    end
end

axePot:id(27209)
axePot:register()

