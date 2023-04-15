local config = {
    actionId = 43028, 
    bossName = "lost terror [*****]",
    bossPosition = Position(33229, 33209, 8), 
    bossArea = {
        fromPos = Position(33214, 33180, 8), 
        toPos = Position(33244, 33215, 8), 
        entrancePos = Position(33229, 33185, 8), 
        exitPosition = Position(33136, 32884, 2) 
    },
    participantsAllowAnyCount = true, 
    participantsPos = {
        Position(33136, 32883, 2),
        Position(33135, 32883, 2),
        Position(33137, 32883, 2), 
        Position(33136, 32884, 2),
        Position(33135, 32884, 2),
        Position(33137, 32884, 2),
        Position(33136, 32885, 2),
        Position(33135, 32885, 2),
        Position(33137, 32885, 2)  
    },
    attempts = {
        level = 1200, 
        storage = 314009, 
        seconds = 36000, -- 10 hour
        chaos = 150,
        prestige = 100,
        gearScore = 20000
    },
    createTeleportPos = Position(33229, 33185, 8),
    teleportToPosition = Position(33136, 32884, 2), 
    teleportRemoveSeconds = 240, 
    kickParticipantAfterSeconds = 180 * 10,
    leverIds = {1945, 1946} 
}




local function getSpectators()
    if not config.centerPosition then
        config.diffX = math.ceil((config.bossArea.toPos.x - config.bossArea.fromPos.x) / 2)
        config.diffY = math.ceil((config.bossArea.toPos.y - config.bossArea.fromPos.y) / 2)
        config.centerPosition = config.bossArea.fromPos + Position(config.diffX, config.diffY, 0)
    end
    return Game.getSpectators(config.centerPosition, false, false, config.diffX, config.diffX, config.diffY, config.diffY)
end

local lostTerrorBoss = Action()

function lostTerrorBoss.onUse(player, item, fromPos, target, toPos, isHotkey)
    local participants = {}
    for index, pos in pairs(config.participantsPos) do
        local tile = Tile(pos)
        if not tile then error("[Warning - Tile not found]") end
        local participant = tile:getTopVisibleCreature(player)
        if participant and participant:isPlayer() then
            if index == 1 and participant ~= player then
                player:sendCancelMessage("Only the first participant can pull the lever.")
                return true
            end
            
            if participant:getStorageValue(config.attempts.storage) >= os.time() then
                player:sendCancelMessage(string.format("The player %s must wait 10 hours before being able to enter again.", participant:getName()))
                return true
            elseif participant:getStorageValue(Storage.Levels.Stats.Chaos) < config.attempts.chaos then
                player:sendCancelMessage(string.format("The player %s don't have the required Chaos Level: %d.", participant:getName(), config.attempts.chaos))
                return true
            elseif participant:getLevel() < config.attempts.level then
                player:sendCancelMessage(string.format("The player %s is not level %d.", participant:getName(), config.attempts.level))
                return true   
            elseif participant:getStorageValue(Storage.Levels.Stats.Prestige) < config.attempts.prestige then
                player:sendCancelMessage(string.format("The player %s don't have the required Prestige: %d.", participant:getName(), config.attempts.prestige))
                return true 
            elseif participant:getStorageValue(Storage.Levels.Stats.GearScore) < config.attempts.gearScore then
                player:sendCancelMessage(string.format("The player %s don't have the required Gear Score: %d.", participant:getName(), config.attempts.gearScore))
                return true
            end
            participants[#participants +1] = participant    
        end
    end

    local spectators = getSpectators()
    for _, spectator in pairs(spectators) do
        if spectator:isPlayer() then
            player:sendCancelMessage("At this time the room is occupied, please try again later.")
            return true
        end
    end

    for _, spectator in pairs(spectators) do spectator:remove() end
    local boss = Game.createMonster(config.bossName, config.bossPosition)
    if not boss then error(Game.getReturnMessage(RETURNVALUE_NOTENOUGHROOM)) end
    boss:registerEvent("lostTerrorDeath")
    for index, participant in pairs(participants) do
        config.participantsPos[index]:sendMagicEffect(CONST_ME_POFF)
        participant:teleportTo(config.bossArea.entrancePos, false)
        config.bossArea.entrancePos:sendMagicEffect(CONST_ME_TELEPORT)
        participant:setStorageValue(config.attempts.storage, os.time() + config.attempts.seconds)
    end

    config.kickEventId = addEvent(function ()
        for _, spectator in pairs(getSpectators()) do
            if spectator:isPlayer() then
                spectator:getPosition():sendMagicEffect(CONST_ME_POFF)
                spectator:teleportTo(config.bossArea.exitPosition, false)
                config.bossArea.exitPosition:sendMagicEffect(CONST_ME_TELEPORT)
                spectator:sendTextMessage(MESSAGE_INFO_DESCR, "It's been a long time and you haven't managed to defeat the boss.")
            else
                spectator:remove()
            end
        end
    end, config.kickParticipantAfterSeconds * 1000)

    item:transform(item:getId() == config.leverIds[1] and config.leverIds[2] or config.leverIds[1])
    return true
end

lostTerrorBoss:aid(config.actionId)
lostTerrorBoss:register()

local creatureEvent = CreatureEvent("lostTerrorDeath")

function creatureEvent.onDeath()
    stopEvent(config.kickEventId)
    local teleport = Game.createItem(1387, 1, config.createTeleportPos)
    if teleport then
        teleport:setDestination(config.teleportToPosition)
        addEvent(function ()
            local tile = Tile(config.createTeleportPos)
            if tile then
                local teleport = tile:getItemById(1387)
                if teleport then
                    teleport:remove()
                    config.teleportToPosition:sendMagicEffect(CONST_ME_POFF)
                end
            end

            for _, spectator in pairs(getSpectators()) do
                if spectator:isPlayer() then
                    spectator:getPosition():sendMagicEffect(CONST_ME_POFF)
                    spectator:teleportTo(config.teleportToPosition, false)
                    config.teleportToPosition:sendMagicEffect(CONST_ME_TELEPORT)
                end
            end
        end, config.teleportRemoveSeconds * 1000)
    end
    return true
end

creatureEvent:register()
