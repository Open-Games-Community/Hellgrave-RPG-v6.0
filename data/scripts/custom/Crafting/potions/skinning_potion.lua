
local skinPot = Action()


function skinPot.onUse(player, item)
    local playerStorage = player:getStorageValue(45003)
	if playerStorage then
        player:setStorageValue(45003, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of skinning skill.")
        item:remove(1)
    elseif player:getStorageValue(45003) > 500 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 500.")
    end
end

skinPot:id(27188)
skinPot:register()

