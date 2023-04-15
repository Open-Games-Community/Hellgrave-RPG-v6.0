local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)       npcHandler:onCreatureAppear(cid)       end
function onCreatureDisappear(cid)     npcHandler:onCreatureDisappear(cid)       end
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()         npcHandler:onThink()           end

local storage = 6243 -- Numero de Storage que le pondreis al NPC, recordad este numero

function creatureSayCallback(cid, type, msg)
     if not npcHandler:isFocused(cid) then
         return false
     end
     local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

     if msgcontains(msg, "task") then -- "task" sera lo que le direis al npc, si quereis marcarlo en npc.Lua poneis por ejemplo: Are you looking for a {task} ? y el player dira task.
         if getPlayerStorageValue(cid, storage) == -1 then
             selfSay("I have a rude Task for you, did you accept to Kill 1 Time each Goshnar Boss?", cid) -- mensaje de la task
             talkState[talkUser] = 1
         elseif getPlayerStorageValue(cid, storage) == 1 then
             selfSay("Did you kill 1 Goshnar Spite, 1 Goshnar Hatred, 1 Goshnar Cruelty, 1 Goshnar Malice, 1 Goshnar Greed, 1 Goshnar Megalomania?", cid) -- mensaje de preguntar si los ha matado
             talkState[talkUser] = 1
         else
             selfSay("You already did the task, you can do it only one time.", cid) -- en el caso que pondreis la task limitada, una sola vez, dira este mensaje
         end
     elseif msgcontains(msg, "yes") and talkState[talkUser] == 1 then -- "yes" dejarlo asi
         if getPlayerStorageValue(cid, storage) == -1 then
             selfSay("Good, come back when you killed them.", cid) -- lo que dira despues que cogas la mission
             setPlayerStorageValue(cid, storage, 1)
         else
             if getPlayerStorageValue(cid, 39015) == 1 and getPlayerStorageValue(cid, 39016) == 1 and getPlayerStorageValue(cid, 39017) == 1 and getPlayerStorageValue(cid, 39018) == 1 and getPlayerStorageValue(cid, 39019) == 1 and getPlayerStorageValue(cid, 39020) == 1 then
                 selfSay("Good job, here is your reward.", cid) -- mensaje del reward
                 doPlayerAddItem(cid, 25379, 1) 
                 setPlayerStorageValue(cid, 39015, 0)
				 setPlayerStorageValue(cid, 39016, 0) 
				 setPlayerStorageValue(cid, 39017, 0) 	
				 setPlayerStorageValue(cid, 39018, 0) 	
				 setPlayerStorageValue(cid, 39019, 0) 	
				 setPlayerStorageValue(cid, 39020, 0) 					 

             else
                 selfSay("You didn't kill them all.", cid) -- mensaje de cuando no los han matado
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