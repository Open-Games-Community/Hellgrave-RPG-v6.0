local config = {
	-- soil guardian
	[36572] = {female = 1244, male = 1243, addon = 1, effect = CONST_ME_GREEN_RINGS},
	[36573] = {female = 1244, male = 1243, addon = 2, effect = CONST_ME_GREEN_RINGS},
}

local addons = Action()

function addons.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local useItem = config[item.itemid]
	if not useItem then
		return true
	end

	local looktype = player:getSex() == PLAYERSEX_FEMALE and useItem.female or useItem.male

	if useItem.addon then
		if not player:isPremium()
				or not player:hasOutfit(looktype)
				or player:hasOutfit(looktype, useItem.addon) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, 'You own no premium account, lack the base outfit or already own this outfit part.')
			return true
		end

		player:addOutfitAddon(useItem.female, useItem.addon)
		player:addOutfitAddon(useItem.male, useItem.addon)
		player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
		if player:hasOutfit(looktype, 3) then
			player:addAchievement(useItem.achievement)
		end
		item:remove()
	else
		if not player:isPremium() or player:hasOutfit(looktype) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, 'You own no premium account or already own this outfit part.')
			return true
		end

		player:addOutfit(useItem.female)
		player:addOutfit(useItem.male)
		player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
		item:remove()
	end
	return true
end

addons:id(36573, 36572)
addons:register()
