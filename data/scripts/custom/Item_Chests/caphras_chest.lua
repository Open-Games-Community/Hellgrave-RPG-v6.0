local rewards = {
    { id = 36986, name = "Mystic Essence" },
    { id = 39226, name = "Abyssal Crystal Fluid" },
    { id = 36987, name = "Abyssal Essence"},
    { id = 39227, name = "Ascending Crystal Fluid" },
    { id = 36989, name = "Chaos Essence" },
    { id = 39228, name = "Chaos Crystal Fluid"},
    { id = 27605, name = "Chaos Blood"},
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if player then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 3)
        item:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Chaos Chest and you obtained x3 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(23063)
KeyChest:register()