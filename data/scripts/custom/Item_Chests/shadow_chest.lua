local rewards = {
    { id = 36978, name = "Mystic Stone Fragment" },
    { id = 36979, name = "Abyssal Stone Fragment" },
    { id = 36980, name = "Ascending Stone Fragment" },
    { id = 36981, name = "Chaos Stone Fragment" },
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if player then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 30)
        item:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Shadow Chest and you obtained x30 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(23065)
KeyChest:register()