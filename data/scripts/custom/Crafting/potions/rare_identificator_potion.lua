
local rareIdentificatorPot = Action()


function rareIdentificatorPot.onUse(player, item)
    local playerStorage = player:getStorageValue(31188)
	if playerStorage then
        player:setStorageValue(31188, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of Rare Identificator Skill.")
        item:remove(1)
    elseif player:getStorageValue(31188) > 500 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 500.")
    end
end

rareIdentificatorPot:id(27201)
rareIdentificatorPot:register()

