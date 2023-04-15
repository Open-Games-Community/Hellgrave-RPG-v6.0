
local epicIdentificatorPot = Action()


function epicIdentificatorPot.onUse(player, item)
    local playerStorage = player:getStorageValue(31190)
	if playerStorage then
        player:addSkillTries(SKILL_FIST, 5)
        player:setStorageValue(31190, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of Epic Identificator Skill.")
        item:remove(1)
    elseif player:getStorageValue(31190) > 500 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 500.")
    end
end

epicIdentificatorPot:id(27202)
epicIdentificatorPot:register()

