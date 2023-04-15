local rewards = {
    { id = 36982, name = "Mystic Stone Essence" },
    { id = 36983, name = "Abyssal Stone Essence" },
    { id = 36984, name = "Ascending Stone Essence" },
    { id = 36985, name = "Chaos Stone Essence" },
    { id = 11400, name = "Dragon Egg"}
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if player then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 6)
        item:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened an Void Chest and you obtained x6 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(23064)
KeyChest:register()