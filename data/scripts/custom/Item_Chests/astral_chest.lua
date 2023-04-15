local rewards = {
    { id = 10047, name = "Refined Magma Crystal" },
    { id = 10048, name = "Refined Solar Crystal" },
    { id = 2636, name = "Ediem Carp"},
    { id = 10050, name = "Refined Amber Crystal" },
    { id = 10061, name = "Refined Sapphir Crystal" },
    { id = 2638, name = "Ancestral Trout"},
    { id = 10063, name = "Refined Gold Crystal"},
    { id = 10064, name = "Refined Lava Crystal"},
    { id = 32410, name = "endless crystal"},
    { id = 32446, name = "demoniac crystal"},
    { id = 42084, name = "amber dust"},
    { id = 42082, name = "amber sliver"},
    { id = 10615, name = "Rare Red Carp"},
    { id = 10066, name = "Refined Lava Crystal"},
    { id = 10068, name = "Refined Malachite Crystal"},
    { id = 10062, name = "Refined Light Solar Crystal"}
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 13581 and target.itemid == 13169 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 10)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened an Astral Chest and you  obtained x10 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(13581)
KeyChest:register()