
local woodcuttingPot = Action()


function woodcuttingPot.onUse(player, item)
    local playerStorage = player:getStorageValue(45005)
	if playerStorage then
        player:setStorageValue(45005, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of woodcutting skill.")
        item:remove(1)
    elseif player:getStorageValue(45005) > 500 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 500.")
    end
end

woodcuttingPot:id(27206)
woodcuttingPot:register()

