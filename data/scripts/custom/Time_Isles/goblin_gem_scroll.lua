local kingGoblinGem = Action()

function kingGoblinGem.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(Position(31988, 31901, 10))
    item:remove(1)
  return true
end

kingGoblinGem:id(27321)
kingGoblinGem:register()