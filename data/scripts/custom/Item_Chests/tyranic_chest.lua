local rewards = {
    { id = 10091, name = "Relic of Venom" },
    { id = 10097, name = "Water Relic" },
    { id = 11428, name = "Karma Arch" },
    { id = 9676, name = "Fire Artefact" },
    { id = 13569, name = "Key of Sacrifice Chest"},
    { id = 13582, name = "Sacrifice Chest" },
    { id = 16004, name = "Ancestral Crystal" },
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 13168 and target.itemid == 13167 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 5)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Tyranic Chest and you obtained x5 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(13168)
KeyChest:register()