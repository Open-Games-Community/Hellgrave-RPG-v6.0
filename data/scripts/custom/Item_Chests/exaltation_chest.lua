local rewards = {
    { id = 42061, name = "Amber Coin"},
    { id = 42072, name = "Astral source"},
    { id = 42077, name = "elder amphora" },
    { id = 25315, name = "demoniac rune" },
    { id = 12671, name = "ancestral essence" },
    { id = 42032, name = "luminous potion" },
    { id = 27632, name = "demoniac refined crystal" },
    { id = 42073, name = "demoniac core" },
    { id = 40787, name = "endless essence" },
    { id = 40744, name = "divine essence" },
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 13566 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 1)
        item:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Exaltation Chest and you obtained x1 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(13566)
KeyChest:register()