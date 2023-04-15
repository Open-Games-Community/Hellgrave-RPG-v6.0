
local craftingPot = Action()


function craftingPot.onUse(player, item)
    local playerStorage = player:getStorageValue(30568)
	if playerStorage then
        player:setStorageValue(30568, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of crafting skill.")
        item:remove(1)
    elseif player:getStorageValue(30568) > 1000 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 1000.")
    end
end

craftingPot:id(27194)
craftingPot:register()

