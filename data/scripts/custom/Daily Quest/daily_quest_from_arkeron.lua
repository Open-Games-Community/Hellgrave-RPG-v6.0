
local config = {
    cooldown = 60 * 60 * 24, -- in seconds - (Make it 'seconds * minutes * hours' - its will be '60 * 60 * 20' for 20 hours) (player cooldown)
    cooldown_storage = 811316,
    duration = 10, -- time till reset, in minutes (lever cooldown)
    level_req = 100, -- minimum level to do quest
    min_players = 1, -- minimum players to join quest
    lever_id = 1945, -- id of lever before pulled
    pulled_id = 1946, -- id of lever after pulled
}

local player_positions = {
    [1] = {fromPos = Position(32687, 33093, 6), toPos = Position(31869, 32010, 8)},
    [2] = {fromPos = Position(32687, 33094, 6), toPos = Position(31869, 32011, 8)},
    [3] = {fromPos = Position(32687, 33095, 6), toPos = Position(31869, 32012, 8)},
    [4] = {fromPos = Position(32687, 33096, 6), toPos = Position(31869, 32013, 8)}
}

local monsters = {
    [1] = {pos = Position(31870, 31994, 8), name = "Behemoth"},
    [2] = {pos = Position(31871, 31990, 8), name = "Giant Spider"}
}
local quest_range = {fromPos = Position(31863, 31988, 8), toPos = Position(31874, 32003, 8)} 

local exit_position = Position(32215, 32268, 6) -- Position completely outside the quest area

local dailyQuest = Action()

function doResetTheBossDukeKrule(position, cid_array)
 
    local tile = Tile(position)
 
    local item = tile and tile:getItemById(config.pulled_id)
    if not item then
        return
    end
 
    local monster_names = {}
    for key, value in pairs(monsters) do
        if not isInArray(monster_names, value.name) then
            monster_names[#monster_names + 1] = value.name
        end
    end
 
    for i = 1, #monsters do
        local creatures = Tile(monsters[i].pos):getCreatures()
        for key, creature in pairs(creatures) do
            if isInArray(monster_names, creature:getName()) then
                creature:remove()
            end
        end
    end
 
    for i = 1, #player_positions do
        local creatures = Tile(player_positions[i].toPos):getCreatures()
        for key, creature in pairs(creatures) do
            if isInArray(monster_names, creature:getName()) then
                creature:remove()
            end
        end
    end
 
    for key, cid in pairs(cid_array) do
        local participant = Player(cid)
    if participant and isInRange(participant:getPosition(), quest_range.fromPos, quest_range.toPos) then
            participant:teleportTo(exit_position)
            exit_position:sendMagicEffect(CONST_ME_TELEPORT)
        end
    end
 
    item:transform(config.lever_id)
end

local function removeBoss()
local specs, spec = Game.getSpectators(Position(33919, 31646, 8), false, false, 18, 18, 18, 18) -- Do not change
    for j = 1, #specs do
        spec = specs[j]
        if spec:getName():lower() == 'Demon' then
            spec:remove()
        end
    end
end

function dailyQuest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(config.cooldown_storage) >= os.time() then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Try Again in 24 Hours.")
        return true
    end
 
 
    local participants, pull_player = {}, false
    for i = 1, #player_positions do
        local fromPos = player_positions[i].fromPos
        local tile = Tile(fromPos)
        if not tile then
            print(">> ERROR: Daily Quest tile does not exist for Position(" .. fromPos.x .. ", " .. fromPos.y .. ", " .. fromPos.z .. ").")
            return player:sendCancelMessage("There is an issue with this quest. Please contact an administrator.")
        end
 
        local creature = tile:getBottomCreature()
        if creature then
            local participant = creature:getPlayer()
            if not participant then
                return player:sendCancelMessage("Participant is not a valid participant.")
            end
 
            if participant:getLevel() < config.level_req then
                return player:sendCancelMessage(participant:getName() .. " is not the required level.")
            end
 
            if participant.uid == player.uid then
                pull_player = true
            end
 
            participants[#participants + 1] = {participant = participant, toPos = player_positions[i].toPos}
        end
    end
 
    if #participants < config.min_players then
        return player:sendCancelMessage("You do not have the required amount of participants.")
    end
 
    if not pull_player then
        return player:sendCancelMessage("You are in the wrong position.")
    end
 
    for i = 1, #monsters do
        local toPos = monsters[i].pos
        if not Tile(toPos) then
            print(">> ERROR: Daily Quest tile does not exist for Position(" .. toPos.x .. ", " .. toPos.y .. ", " .. toPos.z .. ").")
            return player:sendCancelMessage("There is an issue with this quest. Please contact an administrator.")
        end
        removeBoss()
        Game.createMonster(monsters[i].name, monsters[i].pos, false, true)
    end
 
    local cid_array = {}
    for i = 1, #participants do
        participants[i].participant:teleportTo(participants[i].toPos)
        participants[i].toPos:sendMagicEffect(CONST_ME_TELEPORT)
        cid_array[#cid_array + 1] = participants[i].participant.uid
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have 30 minutes to kill and loot all monsters. Otherwise you will lose that chance and will be kicked out.")
    end
 
    item:transform(config.pulled_id)
    player:setStorageValue(config.cooldown_storage, os.time() + config.cooldown)
    addEvent(doResetTheBossDukeKrule, config.duration * 30 * 60000,  toPosition, cid_array)
    return true
end

dailyQuest:uid(37389)
dailyQuest:register()
