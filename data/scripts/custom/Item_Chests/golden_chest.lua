local rewards = {
    { id = 27441, name = "Radiance Sigil of Soul VI" },
    { id = 27451, name = "Annihilation Sigil of Soul VI" },
    { id = 27264, name = "Nightmare Sigil of Soul VI" },
    { id = 27285, name = "Calamity Sigil of Soul VI" },
    { id = 27313, name = "Cryptic Sigil of Soul VI" },
    { id = 27296, name = "Heirloom Sigil of Soul VI" },
    { id = 27275, name = "Spirit Sigil of Soul VI" },
    { id = 27442, name = "Radiance Sigil of Soul VII" },
    { id = 27265, name = "Nightmare Sigil of Soul VII" },
    { id = 27287, name = "Calamity Sigil of Soul VII" },
    { id = 27297, name = "Heirloom Sigil of Soul VII" },
    { id = 27276, name = "Spirit Sigil of Soul VII" },
    { id = 27315, name = "Cryptic Sigil of Soul VII" },
    { id = 27213, name = "Annihilation Sigil of Soul VII" },
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 27338 and target.itemid == 27337 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 5)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Golden Chest and you obtained x5 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(27338)
KeyChest:register()