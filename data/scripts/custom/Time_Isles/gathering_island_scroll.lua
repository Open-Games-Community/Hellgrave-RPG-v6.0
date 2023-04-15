local kingGoblinGem = Action()

function kingGoblinGem.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:teleportTo(Position(32183, 31886, 7))
    item:remove(1)
  return true
end

kingGoblinGem:id(27318)
kingGoblinGem:register()