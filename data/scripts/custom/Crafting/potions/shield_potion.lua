
local shieldPot = Action()


function shieldPot.onUse(player, item)
	if player then
        local skillShield = player:getSkillLevel(SKILL_SHIELD)
        player:setSkillLevel(SKILL_SHIELD, skillShield + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added +1 shield Skill.")
        item:remove(1)
    end
end

shieldPot:id(27212)
shieldPot:register()

