
local soulPoti = Action()

function soulPoti.onUse(player, item)
    if player:isPremium() then
		maxsoul = 100
	else
		maxsoul = 100
	end
	local points = player:getMaxSoul()
	if player:getMaxSoul() < maxsoul then
        item:remove(1)
		player:addSoul(maxsoul - player:getSoul())
        player:sendTextMessage(MESSAGE_INFO_DESCR ,"You sucessfully restore your soul points.")
		player:getPosition():sendMagicEffect(253)     
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR,"Not possible use, you have "..points.." soul points and you are full.")
        player:getPosition():sendMagicEffect(206)
    end
    return true
end

soulPoti:id(27191)
soulPoti:register()