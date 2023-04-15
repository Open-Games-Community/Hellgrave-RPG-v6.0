local treasureSecondGoblin = CreatureEvent("treasureSecondGoblin")
local enemyNames = {
    [1] = "Treasure Goblin the second"
}

local function removeTeleport(position)
    local spawnedTeleport = Tile(position):getItemById(1387)
    if spawnedTeleport then
        spawnedTeleport:remove()
        position:sendMagicEffect(CONST_ME_POFF)
    end
  
    return true
end

local function formatString(s)
    s = string.gsub(s, "[%d%p%c%s]", "")
    s = s:lower()
  
    return s
end

function treasureSecondGoblin.onKill(creature, target)
    if not target or not target:isMonster() then
        return true
    end
  
    local f = false
    local t = formatString(target:getName())
    for _, v in ipairs(enemyNames) do
        if t == formatString(v) then
            f = true
        end
    end
  
    if not f then
        return true
    end

    local teleportSpawn = Position(32027, 32011, 11) -- Position for teleport to spawn
    removeTeleport(teleportSpawn)
    teleportSpawn:sendMagicEffect(CONST_ME_TELEPORT)
  
    local item = Game.createItem(1387, 1, teleportSpawn)
    if item:isTeleport() then
        local teleportTo = Position(32017, 32357, 1) -- Teleport destination
        item:setDestination(teleportTo)
    end

    target:say('Take the teleport before they disappear!', TALKTYPE_MONSTER_SAY, 0, 0, teleportSpawn)
    addEvent(removeTeleport, 120000, teleportSpawn)
    doPlayerPopupFYI(creature, "A Teleport Appears.")
    return true
end
treasureSecondGoblin:register()
