local goshLoot = Action()

local JEWEL = {38917, 38918, 38919, 38920, 38921, 38922, 38923, 38924, 38925, 38926, 38927, 38928, 38929, 38930, 38931, 38932, 38933, 38934}
local REWARD = {38917, 38918, 38919, 38920, 38921, 38922, 38923, 38924, 38925, 38926, 38927, 38928, 38929, 38930, 38931, 38932, 38933, 38934}
function goshLoot.onUse(cid, item, fromPosition, itemEx, toPosition)
      local randomChance = math.random(1, #REWARD)
      doPlayerAddItem(cid, REWARD[randomChance], 1)

local randomLoot = math.random(1,20)
    if randomLoot == 1 then
    doPlayerSendTextMessage(cid, 22, "You found an extra item!")
             local randomChance = math.random(1, #REWARD)
              doPlayerAddItem(cid, REWARD[randomChance], 1)
    end

local randomJewel = math.random(1,10)
    if randomJewel == 1 then
    doPlayerSendTextMessage(cid, 22, "You found an extra item!")
      local randomChance = math.random(1, #JEWEL)
      doPlayerAddItem(cid, JEWEL[randomChance], 1)
    end

doSendMagicEffect(getPlayerPosition(cid), 172)
   doRemoveItem(item.uid, 1)
   return true
end

goshLoot:id(25380)
goshLoot:register()