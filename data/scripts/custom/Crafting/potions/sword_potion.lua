
local swordPot = Action()


function swordPot.onUse(player, item)
	if player then
        local skillSword = player:getSkillLevel(SKILL_SWORD)
        player:setSkillLevel(SKILL_SWORD, skillSword + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added +1 Sword Skill.")
        item:remove(1)
    end
end

swordPot:id(27207)
swordPot:register()

