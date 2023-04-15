
local masterIdentifPot = Action()


function masterIdentifPot.onUse(player, item)
    local playerStorage = player:getStorageValue(31186)
	if playerStorage then
        player:setStorageValue(31186, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of Master Identificator Skill.")
        item:remove(1)
    elseif player:getStorageValue(31186) > 500 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 500.")
    end
end

masterIdentifPot:id(27196)
masterIdentifPot:register()

