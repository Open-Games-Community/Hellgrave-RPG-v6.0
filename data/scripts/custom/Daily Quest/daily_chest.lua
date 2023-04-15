local DailyChest = Action()

local config = {
     storage = 45392,
     exstorage = 40822,
     days = {
         ["Monday"] = {
             {itemid = 25377, count = {1, 2}}
         },
         ["Tuesday"] = {
             {itemid = 13166, count = {1, 1}},
             {itemid = 13165, count = {1, 1}}
         },
         ["Wednesday"] = {
             {itemid = 22396, count = {1, 4}},
             {itemid = 22397, count = {1}}
         },
         ["Thursday"] = {
             {itemid = 26310, count = {1, 35}}
         },
         ["Friday"] = {
             {itemid = 25172, count = {1, 10}}
         },
         ["Saturday"] = {
             {itemid = 24774, count = {1, 5}},
             {itemid = 24275, count = {1}}
         },
         ["Sunday"] = {
             {itemid = 26314, count = {1, 10}}
         }
     }
}

function DailyChest.onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
     local player = Player(cid)
     local x = config.days[os.date("%A")]
     if player:getStorageValue(config.storage) == tonumber(os.date("%w")) and player:getStorageValue(config.exstorage) > os.time() then
         return player:sendCancelMessage("The chest is empty, come back tomorrow for a new reward.")
     end
     local c = math.random(#x)
     local info, count = ItemType(x[c].itemid), x[c].count[2] and math.random(x[c].count[1], x[c].count[2]) or x[c].count[1]
     if count > 1 then
         text = count .. " " .. info:getPluralName()
     else
         text = info:getArticle() .. " " .. info:getName()
     end
     local itemx = Game.createItem(x[c].itemid, count)
     if player:addItemEx(itemx) ~= RETURNVALUE_NOERROR then
         player:getPosition():sendMagicEffect(CONST_ME_POFF)
         text = "You have found a reward weighing " .. itemx:getWeight() .. " oz. It is too heavy or you have not enough space."
     else
         text = "You have received " .. text .. "."
         player:setStorageValue(config.storage, tonumber(os.date("%w")))
         player:setStorageValue(config.exstorage, os.time() + 24*60*60)
     end
     player:sendTextMessage(MESSAGE_INFO_DESCR, text)
     return true
end

DailyChest:uid(34801)
DailyChest:register()
