local rewards = {
    { id = 26301, name = "Flame Egg" },
    { id = 26302, name = "Rocky Egg" },
    { id = 26303, name = "Forest Egg"},
    { id = 26304, name = "Crystal Egg" },
    { id = 26305, name = "Wind Egg" },
    { id = 26306, name = "Guardian Egg"},
    { id = 26307, name = "Angel Egg"},
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 27348 and target.itemid == 27347 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 3)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened an Exodus Chest and you obtained x3 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(27348)
KeyChest:register()