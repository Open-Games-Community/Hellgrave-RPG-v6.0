local rewards = {
    { id = 27436, name = "Radiance Sigil of Soul I" },
    { id = 27446, name = "Annihilation Sigil of Soul I" },
    { id = 27259, name = "Nightmare Sigil of Soul I" },
    { id = 27280, name = "Calamity Sigil of Soul I" },
    { id = 27301, name = "Cryptic Sigil of Soul I" },
    { id = 27291, name = "Heirloom Sigil of Soul I" },
    { id = 27269, name = "Spirit Sigil of Soul I" },
    { id = 27437, name = "Radiance Sigil of Soul II" },
    { id = 27436, name = "Nightmare Sigil of Soul II" },
    { id = 27281, name = "Calamity Sigil of Soul II" },
    { id = 27292, name = "Heirloom Sigil of Soul II" },
    { id = 27270, name = "Spirit Sigil of Soul II" },
    { id = 27302, name = "Cryptic Sigil of Soul II" },
    { id = 27447, name = "Annihilation Sigil of Soul II" },
    { id = 27438, name = "Radiance Sigil of Soul III" },
    { id = 27261, name = "Nightmare Sigil of Soul III" },
    { id = 27293, name = "Heirloom Sigil of Soul III" },
    { id = 27282, name = "Calamity Sigil of Soul III" },
    { id = 27271, name = "Spirit Sigil of Soul III" },
    { id = 27307, name = "Cryptic Sigil of Soul III" },
    { id = 27448, name = "Annihilation Sigil of Soul III" },
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 27333 and target.itemid == 27334 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 20)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Bronze Chest and you obtained x20 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(27333)
KeyChest:register()