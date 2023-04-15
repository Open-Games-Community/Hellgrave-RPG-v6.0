
local veryRareIdentificatorPot = Action()


function veryRareIdentificatorPot.onUse(player, item)
    local playerStorage = player:getStorageValue(31168)
	if playerStorage then
        player:setStorageValue(31168, playerStorage + 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have added 1 level of Very Rare Identificator Skill.")
        item:remove(1)
    elseif player:getStorageValue(31168) > 500 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Sorry you have reached level 500.")
    end
end

veryRareIdentificatorPot:id(27199)
veryRareIdentificatorPot:register()

