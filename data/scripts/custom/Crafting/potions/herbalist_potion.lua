
local herbalistPot = Action()


function herbalistPot.onUse(player, item)
    local playerStorage = player:getStorageValue(45007)
	if playerStorage then
        player:setStorageValue(45007, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of herbalist skill.")
        item:remove(1)
    elseif player:getStorageValue(45007) > 500 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 500.")
    end
end

herbalistPot:id(27184)
herbalistPot:register()

