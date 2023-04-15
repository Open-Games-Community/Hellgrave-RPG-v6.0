
local clubPot = Action()


function clubPot.onUse(player, item)
	if player then
        local skillClub = player:getSkillLevel(SKILL_CLUB)
        player:setSkillLevel(SKILL_CLUB, skillClub + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added +1 Club Skill.")
        item:remove(1)
    end
end

clubPot:id(27183)
clubPot:register()

