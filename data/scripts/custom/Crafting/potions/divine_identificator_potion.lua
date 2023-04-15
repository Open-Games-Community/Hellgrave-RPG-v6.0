
local divineIdentificatorPot = Action()


function divineIdentificatorPot.onUse(player, item)
    local playerStorage = player:getStorageValue(31184)
	if playerStorage then
        player:setStorageValue(31184, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of Divine Identificator Skill.")
        item:remove(1)
    elseif player:getStorageValue(31184) > 400 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 400.")
    end
end

divineIdentificatorPot:id(27197)
divineIdentificatorPot:register()

