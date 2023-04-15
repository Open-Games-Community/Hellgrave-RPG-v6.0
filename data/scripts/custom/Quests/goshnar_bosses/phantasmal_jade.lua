local phantasmalJade = Action()
function phantasmalJade.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local config = {
		[12662] = {mountId = 167, message = "You receive the permission to ride a Phantasmal Jade"},
	}

	local mount = config[item.itemid]

	if not mount then
		return true
	end

	if not player:hasMount(mount.mountId) then
		player:addMount(mount.mountId)
		player:say(mount.message, TALKTYPE_MONSTER_SAY)
		item:remove(1)
	else
		player:sendTextMessage(19, "You already have this mount")
	end
	return true
end

phantasmalJade:id(12662)
phantasmalJade:register()