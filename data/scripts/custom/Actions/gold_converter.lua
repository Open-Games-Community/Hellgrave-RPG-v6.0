local goldConverter = Action()

local config = {
    [ITEM_GOLD_COIN] = {changeTo = ITEM_PLATINUM_COIN},
    [ITEM_PLATINUM_COIN] = {changeBack = ITEM_GOLD_COIN, changeTo = ITEM_CRYSTAL_COIN},
    [ITEM_CRYSTAL_COIN] = {changeBack = ITEM_PLATINUM_COIN, changeTo = ITEM_AMBER_COIN},
    [ITEM_AMBER_COIN] = {changeBack = ITEM_CRYSTAL_COIN, changeTo = ITEM_DEMONIAC_COIN},
    [ITEM_DEMONIAC_COIN] = {changeBack = ITEM_AMBER_COIN}
 }

function goldConverter.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local coin = config[item:getId()]
    if coin.changeTo and item.type == 100 then
        item:remove()
        player:addItem(coin.changeTo, 1)
    elseif coin.changeBack then
        item:remove(1)
        player:addItem(coin.changeBack, 100)
    else
        return false
    end
    return true
end

goldConverter:id(2148,2152,2160,42061,42087)
goldConverter:register()