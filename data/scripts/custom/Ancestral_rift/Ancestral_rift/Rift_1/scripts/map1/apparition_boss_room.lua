local config = {
    actionId = 32150,
    delay = 60 * 10, -- 10 min
    delayPersistent = false,
    bosses = {
        { name = "tyrant slug [1]", pos = Position(29631, 32395, 9) },
        { name = "tyrant slug [1]", pos = Position(29636, 32398, 9) }
    }
}

local movInBoss = MoveEvent()

function movInBoss.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
    local playerId = player:getId()
    local ground = Tile(position):getGround()
    if ground then
        local now = os.time()
        local delay = config.delayPersistent and ground:getCustomAttribute("delay") or config.time
        if not delay or delay <= now then
            position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
            for _, info in pairs(config.bosses) do
                Game.createMonster(info.name, info.pos)
            end
            if not config.delayPersistent then
                config.time = now + config.delay
            else
                ground:setCustomAttribute("delay", now + config.delay)
            end
        else
        end
    end
    return true
end

movInBoss:aid(config.actionId)
movInBoss:register()