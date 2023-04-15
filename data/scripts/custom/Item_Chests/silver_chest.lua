local rewards = {
    { id = 27439, name = "Radiance Sigil of Soul IV" },
    { id = 27449, name = "Annihilation Sigil of Soul IV" },
    { id = 27262, name = "Nightmare Sigil of Soul IV" },
    { id = 27283, name = "Calamity Sigil of Soul IV" },
    { id = 27308, name = "Cryptic Sigil of Soul IV" },
    { id = 27294, name = "Heirloom Sigil of Soul IV" },
    { id = 27273, name = "Spirit Sigil of Soul IV" },
    { id = 27440, name = "Radiance Sigil of Soul V" },
    { id = 27263, name = "Nightmare Sigil of Soul V" },
    { id = 27284, name = "Calamity Sigil of Soul V" },
    { id = 27295, name = "Heirloom Sigil of Soul V" },
    { id = 27274, name = "Spirit Sigil of Soul V" },
    { id = 27309, name = "Cryptic Sigil of Soul V" },
    { id = 27450, name = "Annihilation Sigil of Soul V" },
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 27335 and target.itemid == 27336 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 10)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Silver Chest and you obtained x10 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(27335)
KeyChest:register()