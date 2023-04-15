local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)       npcHandler:onCreatureAppear(cid)       end
function onCreatureDisappear(cid)     npcHandler:onCreatureDisappear(cid)       end
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()         npcHandler:onThink()           end

local storage = 19591
local sotQuest = 15002

function creatureSayCallback(cid, type, msg)
     if not npcHandler:isFocused(cid) then
         return false
     end
     local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

     if msgcontains(msg, "fight") then
         if getPlayerStorageValue(cid, storage) == -1 and getPlayerStorageValue(cid, sotQuest) == 1 then
            npcHandler:say("You heard about the Ancestral Spirit? You wanna fight him ?", cid)
             talkState[talkUser] = 1
         elseif getPlayerStorageValue(cid, storage) == 1 then
            npcHandler:say("Did you kill the Ancestral Spirit?", cid)
             talkState[talkUser] = 1
         else
            npcHandler:say("You already finished the mission.", cid)
         end
     elseif msgcontains(msg, "yes") and talkState[talkUser] == 1 then
         if getPlayerStorageValue(cid, storage) == -1 then
            npcHandler:say("Kill the Ancestral Spirit and come back to see me.", cid)
            setPlayerStorageValue(cid, storage, 1)
            setPlayerStorageValue(cid, Storage.LostArk.FirstFragment.Boss, 2)
         else
             if getPlayerStorageValue(cid, 19592) == 1 and doPlayerRemoveItem(cid, 12605, 1) then
                doPlayerAddExp(cid, 8000000)
                doPlayerAddItem(cid, 15462, 1)
                setPlayerStorageValue(cid, 19592, 0)
                setPlayerStorageValue(cid, Storage.LostArk.FirstFragment.Boss, 3)
                npcHandler:say("By the glory of the gods, you defeated him, here is what we were able to extract from the essence, the first fragment. You can use this fragment on Zoltun's Isle to access on the Ancestral Rift.", cid)
              else
                 selfSay("You didn't kill the Ancestral Spirit.", cid) 
             end
         end
         talkState[talkUser] = 0
     elseif msgcontains(msg, "no") and talkState[talkUser] == 1 then
         selfSay("Ok then.", cid)
         talkState[talkUser] = 0
     end
     return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
