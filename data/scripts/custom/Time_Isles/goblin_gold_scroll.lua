local kingGoblinGem = Action()

function kingGoblinGem.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(Position(32073, 31918, 7))
    item:remove(1)
  return true
end

kingGoblinGem:id(27316)
kingGoblinGem:register()