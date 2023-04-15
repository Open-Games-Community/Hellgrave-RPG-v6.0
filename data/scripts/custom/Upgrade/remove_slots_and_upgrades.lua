local itemUpgrader = Action()

local replaceIds =
{
    [25917] = 25917,
    [12568] = 12568,
}

function itemUpgrader.onUse(player, item, fromPos, target, toPos, isHotkey)
  if not target or not target:isItem() then
    return player:sendCancelMessage("Sorry not possible, only work on items.")
    end
    if replaceIds[target:getId()] then
      player:sendTextMessage(MESSAGE_INFO_DESCR, "Slots Stats have been removed.")
      local targetId = target:getId()
      target:transform(item:getId()) 
      target:transform(targetId)
    else
      player:sendCancelMessage(MESSAGE_INFO_DESCR, "You cannot remove slots from this item.")
    end
    item:remove(1)
end

 itemUpgrader:id(25983)
 itemUpgrader:register()

 