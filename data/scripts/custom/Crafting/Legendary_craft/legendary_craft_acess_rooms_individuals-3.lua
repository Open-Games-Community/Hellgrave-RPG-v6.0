--- DO NOT TOUCH THIS SCRIPTS UNTIL YOU KNOW WHAT YOU ARE DOING
-- You can Expect Errors if you change something
-- This script allows to only 1 player enter per room, define a time to stay on room, it spawn a deer around the world,
-- Tp stays only for 1s

local config = {
    actionId = 41675, 
    bossName = "deer",
    bossPosition = Position(32414, 32262, 7), 
    bossArea = {
        fromPos = Position(29390, 31751, 11), 
        toPos = Position(29412, 31768, 11), 
        entrancePos = Position(29401, 31765, 11), 
        exitPosition = Position(29351, 31767, 11) 
    },
    participantsAllowAnyCount = true, 
    participantsPos = {
        Position(29353, 31765, 11),
    },
    attempts = {
        level = 400, 
        storage = 501205, 
        seconds = 60 -- 1 min
    },
    createTeleportPos = Position(32189, 32297, 7), 
    teleportToPosition = Position(29351, 31767, 11), 
    teleportRemoveSeconds = 1, 
    kickParticipantAfterSeconds = 60 * 60,
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

local leegndaryRommThree = Action()

function leegndaryRommThree.onUse(player, item, fromPos, target, toPos, isHotkey)
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
                player:sendCancelMessage(string.format("The player %s must wait 1 minuts before being able to enter again.", participant:getName()))
                return true
            elseif participant:getLevel() < config.attempts.level then
                player:sendCancelMessage(string.format("The player %s is not level %d.", participant:getName(), config.attempts.level))
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
    boss:registerEvent("legendaryCraftThree")
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
                spectator:sendTextMessage(MESSAGE_INFO_DESCR, "It's been a long time and you haven't managed to find the schema to create a legendary item, try again.")
            else
                spectator:remove()
            end
        end
    end, config.kickParticipantAfterSeconds * 1000)

    item:transform(item:getId() == config.leverIds[1] and config.leverIds[2] or config.leverIds[1])
    return true
end

leegndaryRommThree:aid(config.actionId)
leegndaryRommThree:register()


