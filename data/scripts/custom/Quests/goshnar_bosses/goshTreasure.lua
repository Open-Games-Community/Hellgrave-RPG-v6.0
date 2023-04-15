local goshTreasure = Action()

local temple = {x=32869,y=31886,z=8}
local pos = getPlayerPosition(cid)
function goshTreasure.onUse(cid, item, frompos, item2, topos)
         if getCreatureCondition(cid, CONDITION_INFIGHT) then
             doPlayerSendCancel(cid, "You can't use this when you're in a fight.")
             doSendMagicEffect(pos, CONST_ME_POFF)
             return true
         end
doTeleportThing(cid, temple)
doSendMagicEffect(temple, 35)
doRemoveItem(item.uid, 1)
return true
end

goshTreasure:id(25379)
goshTreasure:register()


