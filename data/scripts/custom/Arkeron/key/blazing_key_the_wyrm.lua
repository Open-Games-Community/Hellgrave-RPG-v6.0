local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 25894 and target.itemid == 5071 then
        item:remove(1)
        player:teleportTo(Position(32966, 32939, 7))
        toPosition:sendMagicEffect(244)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You entered on The Wyrm Hell.')
        return true
    end

end

KeyChest:id(25894)
KeyChest:register()