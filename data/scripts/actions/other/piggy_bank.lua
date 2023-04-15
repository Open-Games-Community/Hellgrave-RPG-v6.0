local piggyBank = Action()

function piggyBank.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if math.random(6) == 1 then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		item:remove()
		local goldCoin = math.random(1, 100)
		player:addItem(ITEM_GOLD_COIN, goldCoin)
	else
		player:getPosition():sendMagicEffect(CONST_ME_SOUND_YELLOW)
		local platinumCoin = math.random (1, 50)
		item:remove()
		player:addItem(ITEM_PLATINUM_COIN, platinumCoin)
	end
	return true
end

piggyBank:id(2114)
piggyBank:register()
