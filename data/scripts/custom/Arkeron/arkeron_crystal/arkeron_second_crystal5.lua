local topLeftCorner = Position(32893, 32905, 5)
local bottomRightCorner = Position(33385, 33189, 5)


local arkeronUseItem = GlobalEvent("arkeronDeuxiemeCinqStay")

function arkeronUseItem.onThink(interval, item)
    for _, player in pairs(Game.getPlayers()) do
        local position = player:getPosition()
        if not player then
			return false
		end
        if position:isInRange(topLeftCorner, bottomRightCorner) and player:removeItem(18559, 1) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "A Crystal Wrath has been consumed.")
        elseif position:isInRange(topLeftCorner, bottomRightCorner) and not player:removeItem(18559, 1) then
            player:teleportTo(Position(32724, 33123, 5))
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Crystal Wrath is consumed, you have been teleported to the city.")
        end
    end
    return true
end

arkeronUseItem:interval(1800000)
arkeronUseItem:register()