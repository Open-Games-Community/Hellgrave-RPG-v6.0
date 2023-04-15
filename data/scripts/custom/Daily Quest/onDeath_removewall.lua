local config = {
    positionCheck = {north_west = Position(31837, 32013, 10), south_east = Position(31841, 32013, 10)},
    item = {Position(31839, 32009, 10), 3364}, -- {item_position, itemid}
    timer = 60, -- timer is how long until the 'stone' aka: item, is replaced.
    discoveryText = "A passageway has opened nearby!\nQuickly, get inside!"
}

local toggle = 0
local function changePassageway()
    local item = Tile(config.item[1]):getItemById(config.item[2])
    if item then
        item:remove()
        return true
    end
    config.item[1]:sendMagicEffect(CONST_ME_BIGPLANTS)
    Game.createItem(config.item[2], 1, config.item[1])
    toggle = 0
end

local creatureevent = CreatureEvent("onDeath_open_passageway")

function creatureevent.onDeath(creature, corpse, killer, mostDamageKiller, lastHitUnjustified, mostDamageUnjustified)
    if toggle == 1 then
        return true
    end
    local deathPosition = creature:getPosition()
    if not deathPosition:isInRange(config.positionCheck.north_west, config.positionCheck.south_east) then
        return true
    end
    toggle = 1
    config.item[1]:sendMagicEffect(CONST_ME_POFF)
    changePassageway()
    addEvent(changePassageway, config.timer * 1000)
    creature:say(config.discoveryText, TALKTYPE_MONSTER_SAY, false, nil, deathPosition)    
    return true
end

creatureevent:register()