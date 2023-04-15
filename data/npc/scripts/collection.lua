local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local talkState = {}
local rtnt = {}
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end

npcHandler:setMessage(MESSAGE_GREET, "Greetings |PLAYERNAME|. Do you want to start doing your own {collection}? Or did you have {completed} your collection ?")

local itemsDelivery = {

    ['ornamented helmet'] = {cost = 0, items = {{12505, 1}},  storageID = 180001},
    ['ornamented armor'] = {cost = 0, items = {{12506, 1}},  storageID = 180002},
    ['ornamented legs'] = {cost = 0, items = {{12507, 1}},  storageID = 180003},
    ['evermoon shield'] = {cost = 0, items = {{35197, 1}},  storageID = 180004},
    ['evermoon armor'] = {cost = 0, items = {{35198, 1}},  storageID = 180005},
    ['evermoon boots'] = {cost = 0, items = {{35199, 1}},  storageID = 180006},
    ['evermoon helmet'] = {cost = 0, items = {{30366, 1}},  storageID = 180007},
    ['evermoon legs'] = {cost = 0, items = {{35202, 1}},  storageID = 180008},
    ['skull shield of the depth'] = {cost = 0, items = {{41761, 1}},  storageID = 180009},
    ['skull spellbook of the depth'] = {cost = 0, items = {{41762, 1}},  storageID = 180010},
    ['skull helmet of the depth'] = {cost = 0, items = {{41556, 1}},  storageID = 180011},
    ['skull armor of the depth'] = {cost = 0, items = {{41480, 1}},  storageID = 180012},
    ['skull legs of the depth'] = {cost = 0, items = {{41479, 1}},  storageID = 180013},
    ['skull boots of the depth'] = {cost = 0, items = {{41474, 1}},  storageID = 180014},
    ['skull axe of the depth'] = {cost = 0, items = {{41456, 1}},  storageID = 180015},
    ['skull hammer of the depth'] = {cost = 0, items = {{41454, 1}},  storageID = 180016},
    ['skull bow of the depth'] = {cost = 0, items = {{41452, 1}},  storageID = 180017},
    ['skull crossbow of the depth'] = {cost = 0, items = {{41451, 1}},  storageID = 180018},
    ['skull wand of the depth'] = {cost = 0, items = {{39180, 1}},  storageID = 180019},
    ['dreadwake helmet'] = {cost = 0, items = {{41448, 1}},  storageID = 180020},
    ['dreadwake armor'] = {cost = 0, items = {{41438, 1}},  storageID = 180021},
    ['dreadwake legs'] = {cost = 0, items = {{41428, 1}},  storageID = 180022},
    ['dreadwake boots'] = {cost = 0, items = {{41427, 1}},  storageID = 180023},
    ['dreadwake shield'] = {cost = 0, items = {{41313, 1}},  storageID = 180024},
    ['dreadwake sword'] = {cost = 0, items = {{41314, 1}},  storageID = 180025},
    ['dreadwake axe'] = {cost = 0, items = {{41315, 1}},  storageID = 180026},
    ['dreadwake club'] = {cost = 0, items = {{41316, 1}},  storageID = 180027},
    ['dreadwake bow'] = {cost = 0, items = {{40959, 1}},  storageID = 180028},
    ['spiritthorn armor'] = {cost = 0, items = {{42088, 1}},  storageID = 180029},
    ['spiritthorn helmet'] = {cost = 0, items = {{42089, 1}},  storageID = 180030},
    ['alicorn headguard'] = {cost = 0, items = {{42090, 1}},  storageID = 180031},
    ['arcanomancer regalia'] = {cost = 0, items = {{42091, 1}},  storageID = 180032},
    ['arboreal crown'] = {cost = 0, items = {{42092, 1}},  storageID = 180033},
    ['naga sword'] = {cost = 0, items = {{32448, 1}},  storageID = 180034},
    ['naga axe'] = {cost = 0, items = {{32449, 1}},  storageID = 180035},
    ['naga club'] = {cost = 0, items = {{33429, 1}},  storageID = 180036},
    ['frostflower boots'] = {cost = 0, items = {{33479, 1}},  storageID = 180037},
    ['naga crossbow'] = {cost = 0, items = {{33930, 1}},  storageID = 180038},
    ['feverbloom boots'] = {cost = 0, items = {{33931, 1}},  storageID = 180039},
    ['naga wand'] = {cost = 0, items = {{33932, 1}},  storageID = 180040},
    ['naga rod'] = {cost = 0, items = {{33933, 1}},  storageID = 180041},
    ['dawnfire sherwani'] = {cost = 0, items = {{33946, 1}},  storageID = 180042},
    ['midnight tunic'] = {cost = 0, items = {{33947, 1}},  storageID = 180043},
    ['dawnfire pantaloons'] = {cost = 0, items = {{33948, 1}},  storageID = 180044},
    ['midnight sarong'] = {cost = 0, items = {{33949, 1}},  storageID = 180045},
    ['arboreal tome'] = {cost = 0, items = {{42093, 1}},  storageID = 180046},
    ['arcanomancer folio'] = {cost = 0, items = {{42094, 1}},  storageID = 180047},
    ['anubis legs'] = {cost = 0, items = {{27216, 1}},  storageID = 180048},
    ['anubis armor'] = {cost = 0, items = {{27217, 1}},  storageID = 180049},
    ['anubis boots'] = {cost = 0, items = {{27218, 1}},  storageID = 180050},
    ['northren helmet'] = {cost = 0, items = {{27219, 1}},  storageID = 180051},
    ['northren legs'] = {cost = 0, items = {{27220, 1}},  storageID = 180052},
    ['screed legs'] = {cost = 0, items = {{27221, 1}},  storageID = 180053},
    ['screed armor'] = {cost = 0, items = {{27222, 1}},  storageID = 180054},
    ['bronze boots'] = {cost = 0, items = {{27223, 1}},  storageID = 180055},
    ['mummy boots'] = {cost = 0, items = {{27224, 1}},  storageID = 180056},
    ['mummy spellbook'] = {cost = 0, items = {{36817, 1}},  storageID = 180057},
    ['mummy skirt'] = {cost = 0, items = {{36819, 1}},  storageID = 180058},
}

  

function creatureSayCallback(cid, type, msg)
local talkUser = cid
local storageCompleted = 237806
local hasStorages = true;
for k, v in pairs(itemsDelivery) do
  if getPlayerStorageValue(cid, v.storageID) ~= 1 then
    hasStorages = false;
    break;
  end
end
    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if itemsDelivery[msg] ~= nil then
        if (getPlayerStorageValue(cid, itemsDelivery[msg].storageID) ~= -1) then
                npcHandler:say('You already have registered this item to your collection!', cid)
                npcHandler:resetNpc()
        else
        local itemsTable = itemsDelivery[msg].items
        local items_list = ''
            if table.maxn(itemsTable) > 0 then
                for i = 1, table.maxn(itemsTable) do
                    local item = itemsTable[i]
                    items_list = items_list .. item[2] .. ' ' .. ItemType(item[1]):getName()
                    if i ~= table.maxn(itemsTable) then
                        items_list = items_list .. ', '
                    end
                end
            end
        local text = ''
            if (itemsDelivery[msg].cost > 0) then
                text = itemsDelivery[msg].cost .. ' gp'
            elseif table.maxn(itemsDelivery[msg].items) then
                text = items_list
            elseif (itemsDelivery[msg].cost > 0) and table.maxn(itemsDelivery[msg].items) then
                text = items_list .. ' and ' .. itemsDelivery[msg].cost .. ' gp'
            end
            npcHandler:say('Do you want to register '.. text .. ' to your collection?', cid)
            rtnt[talkUser] = msg
            talkState[talkUser] = itemsDelivery[msg].storageID
            return true
        end
    elseif msgcontains(msg, "yes") then
        if (talkState[talkUser] > 180000 and talkState[talkUser] < 180100) then
            local items_number = 0
            if table.maxn(itemsDelivery[rtnt[talkUser]].items) > 0 then
                for i = 1, table.maxn(itemsDelivery[rtnt[talkUser]].items) do
                    local item = itemsDelivery[rtnt[talkUser]].items[i]
                    if (getPlayerItemCount(cid,item[1]) >= item[2]) then
                        items_number = items_number + 1
                    end
                end
            end
            if(getPlayerMoney(cid) >= itemsDelivery[rtnt[talkUser]].cost) and (items_number == table.maxn(itemsDelivery[rtnt[talkUser]].items)) then
                doPlayerRemoveMoney(cid, itemsDelivery[rtnt[talkUser]].cost)
                if table.maxn(itemsDelivery[rtnt[talkUser]].items) > 0 then
                    for i = 1, table.maxn(itemsDelivery[rtnt[talkUser]].items) do
                        local item = itemsDelivery[rtnt[talkUser]].items[i]
                        doPlayerRemoveItem(cid,item[1],item[2])
                    end
                end
                setPlayerStorageValue(cid,itemsDelivery[rtnt[talkUser]].storageID,1)
                npcHandler:say('You have registered the item to the collection.', cid)
            else
                npcHandler:say('You do not have this item!', cid)
            end
            rtnt[talkUser] = nil
            talkState[talkUser] = 0
            npcHandler:resetNpc()
            return true
        end
    elseif msgcontains(msg, "collection") then
        npcHandler:say('To make your own collection, you can talk to me the name of the item you want add to your collection. Use !collection talkaction to check all items can be added on your collection. If you complete all collection you will be reward with a demoniac egg.', cid)
    elseif msgcontains(msg, "completed") then
        if getPlayerStorageValue(cid, storageCompleted) == 1 then
            if hasStorages then
            npcHandler:say('You already completed the Collection and earned a Demoniac Egg.', cid)
            elseif not hasStorages then
            npcHandler:say('The collection cannot be completed because a new item has been added on the collection, ask to administrator.', cid)
            end
        elseif getPlayerStorageValue(cid, storageCompleted) == -1 then
            if hasStorages then
            setPlayerStorageValue(cid, storageCompleted, 1)
            npcHandler:say('You completed your Collection. Here is your reward, the famous Demoniac Egg.', cid)
            doPlayerAddItem(cid, 42076, 1)
            else
            npcHandler:say('You do not have completed the collection. Please check with !collection the items you need to register on your collection.', cid)
            end
        end
    end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())