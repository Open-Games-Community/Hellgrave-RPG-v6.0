
local legendaryCraftPotion = Action()


function legendaryCraftPotion.onUse(player, item)
    local playerStorage = player:getStorageValue(39447)
	if playerStorage then
        player:setStorageValue(39447, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of Legendary Craft Skill.")
        item:remove(1)
    elseif player:getStorageValue(39447) > 1000 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 1000.")
    end
end

legendaryCraftPotion:id(27198)
legendaryCraftPotion:register()

