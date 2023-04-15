local monster = {"dog", "cat", "butterfly", "chiken", "yellow butterfly"}
local townid = 1 
local time = 60
local time2 = 120
local time3 = 180
local time4 = 240
local time5 = 300
local time6 = 600

local storages = {
    storage1 = 385400,
    storage2 = 385401,
    storage3 = 385402,
    storage4 = 385403,
    storage5 = 385404
}
local function setMeFree(playerid)
    local player = Player(playerid)
    if not player then
        return print("Prison - Player ".. player:getName() .." is not Online. Skipping exit prison.")
    end

    player:sendTextMessage(MESSAGE_INFO_DESCR, "You are free now! Take care the next time!")
    player:teleportTo(Town(townid):getTemplePosition())
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)

   return true
end

local prisonTeleport = CreatureEvent("PrisonTeleport")
function prisonTeleport.onKill(player, target)
    if not isInArray(monster, target:getName():lower()) then
        return true
    end
    if player:getStorageValue(storages.storage1) == 0 then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You killed an innocent creature! It is a crime, you will be imprisoned for a short time to let you think. Think about it next time! You will be teleported automatically at the end of the time.")
    player:teleportTo(Position(32196, 32269, 8))
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    addEvent(setMeFree, time * 1000, player:getId())
    player:setStorageValue(storages.storage1, 1)
    elseif player:getStorageValue(storages.storage1) == 1 then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You killed an innocent creature for the second time! It is a crime, you will be imprisoned for 2 minuts to let you think. Think about it next time! You will be teleported automatically at the end of the time.")
    player:teleportTo(Position(32196, 32269, 8))
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    addEvent(setMeFree, time2 * 1000, player:getId())
    player:setStorageValue(storages.storage2, 1)
    elseif player:getStorageValue(storages.storage2) == 1 then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You killed an innocent creature for the third time! It is a crime, you will be imprisoned for 3 minuts to let you think. Think about it next time! You will be teleported automatically at the end of the time.")
    player:teleportTo(Position(32196, 32269, 8))
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    addEvent(setMeFree, time3 * 1000, player:getId())
    player:setStorageValue(storages.storage3, 1)
    elseif player:getStorageValue(storages.storage3) == 1 then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You killed an innocent creature for the fourth time! It is a crime, you will be imprisoned for four minuts to let you think. Think about it next time! You will be teleported automatically at the end of the time.")
    player:teleportTo(Position(32196, 32269, 8))
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    addEvent(setMeFree, time4 * 1000, player:getId())
    player:setStorageValue(storages.storage4, 1)
    elseif player:getStorageValue(storages.storage4) == 1 then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You killed an innocent creature again! It is a crime, you will be imprisoned for five minuts to let you think. Think about it next time! You will be teleported automatically at the end of the time.")
    player:teleportTo(Position(32196, 32269, 8))
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    addEvent(setMeFree, time5 * 1000, player:getId())
    player:setStorageValue(storages.storage5, 1)
    elseif player:getStorageValue(storages.storage5) == 1 then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You killed an innocent creature again! It is a crime, you will be imprisoned for ten minuts to let you think. Think about it next time! You will be teleported automatically at the end of the time.")
    player:teleportTo(Position(32196, 32269, 8))
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    addEvent(setMeFree, time6 * 1000, player:getId())
    end

    return true
end
prisonTeleport:register()


local loginPrison = CreatureEvent("LoginPrison")
function loginPrison.onLogin(player)
    player:registerEvent("PrisonTeleport")
    return true
end
loginPrison:register()