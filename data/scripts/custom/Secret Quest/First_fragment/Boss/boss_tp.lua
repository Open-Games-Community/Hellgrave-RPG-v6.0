local ancestralBossOne = CreatureEvent("ancestralBossOne")
local enemyNames = {
    [1] = "Ancestral Spirit"
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

function ancestralBossOne.onKill(creature, target)
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

    local teleportSpawn = Position(31661, 32483, 12) -- Position for teleport to spawn
    removeTeleport(teleportSpawn)
    teleportSpawn:sendMagicEffect(CONST_ME_TELEPORT)
  
    local item = Game.createItem(1387, 1, teleportSpawn)
    if item:isTeleport() then
        local teleportTo = Position(31661, 32475, 12) -- Teleport destination
        item:setDestination(teleportTo)
    end

    target:say('A Teleport appears on north.', TALKTYPE_MONSTER_SAY, 0, 0, teleportSpawn)
    addEvent(removeTeleport, 100000, teleportSpawn)
    doPlayerPopupFYI(creature, "A Teleport Appears on North, take it.")
  
    return true
end
ancestralBossOne:register()
