
local fistPot = Action()


function fistPot.onUse(player, item)
	if player then
        local skillFist = player:getSkillLevel(SKILL_FIST)
        player:setSkillLevel(SKILL_FIST, skillFist + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added +1 Fist Fighting Skill.")
        item:remove(1)
    end
end

fistPot:id(27182)
fistPot:register()

