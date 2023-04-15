
local minningPot = Action()


function minningPot.onUse(player, item)
    local playerStorage = player:getStorageValue(45001)
	if playerStorage then
        player:setStorageValue(45001, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of mining skill.")
        item:remove(1)
    elseif player:getStorageValue(45001) > 500 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 500.")
    end
end

minningPot:id(27210)
minningPot:register()

