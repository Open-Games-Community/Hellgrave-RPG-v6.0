local event = {
    monsters = {
        {"Ogre Sage", "Infernalist", "Lamassu"},                  -- wave 1
        {"Haunted Dragon", "Terrorsleep", "Lava Golem", "cliff strider"},   -- wave 2 -- you can add infinite waves.
        {"Gazer Spectre", "Gazer Spectre", "lavafungus", "lavaworm", "Lava Golem", "Ogre Ruffian"},            -- wave 3
        {"Hellfire Fighter", "Ravenous Lava Lurker", "Hellfire Fighter", "demon", "Vexclaw", "Hellfire Fighter", "Hellfire Fighter", "Ravenous Lava Lurker"},
        {"Girtablilu Warrior", "Venerable Girtablilu", "Sight of Surrender", "Juggernaut", "War Golem", "War Golem", "lava golem"},
        {"Morgaroth"} -- wave final. (boss?)
    },
    spawnArea = {Position(31944, 31950, 5), Position(31953, 31959, 5)}, -- {top_Left_Corner, bottom_Right_Corner}
    leverIds = {1945, 1946}, -- left, right
    leverActionId = 38180,
    teleportTimer = 200, -- how long the teleport stays
    teleportDestination = Position(32215, 32268, 6), -- TP Temple Mordragor
   
    creatures = {}, -- don't touch
    currentWave = 0 -- don't touch
}

local function verifyEventCreatures()
    if #event.creatures > 0 then
        local creature = nil
        for pid = #event.creatures, 1, -1 do
            creature = Creature(event.creatures[pid][1])
            if not creature then
                table.remove(event.creatures, pid)
            end
        end
    end
end

local function spawnEventCreatures(wave, indexTracker)
    local attempts = 0
    local randomPosition = nil
    local creature = nil
    while attempts < 20 do
        randomPosition = Position(math.random(event.spawnArea[1].x, event.spawnArea[2].x), math.random(event.spawnArea[1].y, event.spawnArea[2].y), math.random(event.spawnArea[1].z, event.spawnArea[2].z))
        creature = Game.createMonster(event.monsters[wave][indexTracker], randomPosition, false, false)
        if not creature then
            tile = Tile(randomPosition)
            if tile and tile:isWalkable() and not Creature(tile:getTopCreature()) then
                creature = Game.createMonster(event.monsters[wave][indexTracker], randomPosition, false, true)
            end
        end
        if creature then
            indexTracker = indexTracker + 1
            table.insert(event.creatures, {creature:getId()})
            break
        end
        attempts = attempts + 1
    end
    if indexTracker <= #event.monsters[wave] then
        addEvent(spawnEventCreatures, 333, wave, indexTracker)
    end
end

local function flopLever(position, leverId, transformTo)
    Tile(position):getItemById(leverId):transform(transformTo)
end

local function removeLever(position, leverId)
    Tile(position):getItemById(leverId):remove()
end

local function createLever(position, leverId, actionId)
    local lever = Game.createItem(leverId, 1, position)
    lever:setActionId(actionId)
end

local function removeMagicForcefield(position)
    Tile(position):getItemById(1387):remove()
end

local function createMagicForcefield(position, destination)
    local magicForcefield = Game.createItem(1387, 1, position)
    magicForcefield:setDestination(destination)
end

local function countDown(timer, position)
    if timer % 5 == 0 and timer ~= 0 then
        for _, creature in pairs(Game.getPlayers()) do
            creature:say(timer, TALKTYPE_MONSTER_SAY, false, nil, position)
            break
        end
    end
    if timer > 0 then
        addEvent(countDown, 1000, timer - 1, position)
    end
end

local function monitorEvent(leverPosition)
    verifyEventCreatures()
    if #event.creatures > 0 then
        addEvent(monitorEvent, 1000, leverPosition)
        return
    end
    addEvent(Position.sendMagicEffect, 500, leverPosition, CONST_ME_POFF)
    addEvent(Position.sendMagicEffect, 1500, leverPosition, CONST_ME_POFF)
    addEvent(createLever, 2500, leverPosition, event.leverIds[1], event.leverActionId)
    addEvent(Position.sendMagicEffect, 2500, leverPosition, CONST_ME_MORTAREA)
end

local function eventManager(leverPosition)
    flopLever(leverPosition, event.leverIds[1], event.leverIds[2])
    addEvent(Position.sendMagicEffect, 500, leverPosition, CONST_ME_POFF)
    addEvent(Position.sendMagicEffect, 1500, leverPosition, CONST_ME_POFF)
    addEvent(removeLever, 2500, leverPosition, event.leverIds[2])
    if event.currentWave + 1 > #event.monsters then
        addEvent(createMagicForcefield, 2500, leverPosition, event.teleportDestination)
        addEvent(countDown, 2500, event.teleportTimer, leverPosition)
        addEvent(removeMagicForcefield, (1000 * event.teleportTimer) + 2500, leverPosition)
        addEvent(createLever, (1000 * event.teleportTimer) + 2500, leverPosition, event.leverIds[1], event.leverActionId)
        addEvent(Position.sendMagicEffect, (1000 * event.teleportTimer) + 2500, leverPosition, CONST_ME_MORTAREA)
        event.creatures = {}
        event.currentWave = 0
        return
    end
    event.currentWave = event.currentWave + 1
    addEvent(Position.sendMagicEffect, 2500, leverPosition, CONST_ME_FIREAREA)
    addEvent(spawnEventCreatures, 5000, event.currentWave, 1)
    addEvent(monitorEvent, 7500, leverPosition)
end


local monsterWaveEvent = Action()

function monsterWaveEvent.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item.itemid == event.leverIds[1] then
        eventManager(toPosition)
    end
    return true
end

monsterWaveEvent:aid(event.leverActionId)
monsterWaveEvent:register() 