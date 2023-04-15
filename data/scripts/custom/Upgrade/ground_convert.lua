local config = {
    [8000] = {targetId = 19748, transformId = 9146, chanceToRemoveItem = 25, groundConvertTimerInMilliseconds = 100},
}

local function convertGround(position, targetTileId, newTileId)
    local tile = Tile(position)
    if tile then
        local ground = tile:getGround()
        if ground then
            if ground:getId() == targetTileId then
                ground:transform(newTileId)
            end
        end
    end
end

local groundConverter = Action()

function groundConverter.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if target:isItem() then
        local index = config[item:getId()]
        if target:getId() == index.targetId then
            if math.random(100) <= index.chanceToRemoveItem then
                item:remove(1)
            end
            addEvent(convertGround, index.groundConvertTimerInMilliseconds, target:getPosition(), index.targetId, index.transformId)
        end
    end
    return true
end

for itemId, _ in pairs(config) do
    groundConverter:id(itemId)
end
groundConverter:register()