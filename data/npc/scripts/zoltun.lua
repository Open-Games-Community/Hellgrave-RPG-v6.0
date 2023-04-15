local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)       npcHandler:onCreatureAppear(cid)       end
function onCreatureDisappear(cid)     npcHandler:onCreatureDisappear(cid)       end
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()         npcHandler:onThink()           end

local storage = 19703

function creatureSayCallback(cid, type, msg)
     if not npcHandler:isFocused(cid) then
         return false
     end
     local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

     if msgcontains(msg, "favor") then
         if getPlayerStorageValue(cid, storage) == -1 then
            npcHandler:say("Proof your strenght, i need you go to kill 50 Behemoths and 100 Serpent spawn, it is ok for you?", cid)
             talkState[talkUser] = 1
         elseif getPlayerStorageValue(cid, storage) == 1 then
            npcHandler:say("Did you kill 50 Behemoths and 100 Serpent Spawns?", cid)
             talkState[talkUser] = 1
         else
            npcHandler:say("You already did the mission.", cid)
         end
		elseif msgcontains(msg, "find the first fragment") then
            setPlayerStorageValue(cid, Storage.LostArk.FirstFragment.Boss, 1)
			npcHandler:say("The first fragment fell into the wrong hands, in a cave deep in dolwatha, go back to Dolwatha and talk with Dreanor upper Depot.", cid)
     elseif msgcontains(msg, "yes") and talkState[talkUser] == 1 then
         if getPlayerStorageValue(cid, storage) == -1 then
            npcHandler:say("Good, come back when you killed them.", cid)
            setPlayerStorageValue(cid, storage, 1)
         else
             if getPlayerStorageValue(cid, 19708) == 50 and getPlayerStorageValue(cid, 19709) == 100 then
                doPlayerAddExp(cid, 3000000)
                setPlayerStorageValue(cid, Storage.LostArk.FirstFragment.Explorer, 3)
                setPlayerStorageValue(cid, 19708, 0)
                setPlayerStorageValue(cid, 19709, 0)
                npcHandler:say("Nice, now you can ask me more information about how to {find the first fragment}.", cid)
              else
                 selfSay("You didn't kill them all.", cid) 
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
