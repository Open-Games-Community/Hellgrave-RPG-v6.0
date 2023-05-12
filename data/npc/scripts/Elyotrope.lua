local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid)
	npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
	npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
	npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
	npcHandler:onThink()
end

local function greetCallback(cid)
	npcHandler.topic[cid] = 0
	return true
end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
	if msgcontains(msg, "brings") then
		npcHandler:say("Ah, you have heard about the Ark and all about this circle. And indeed your reputation for solving certain {problems} has preceded you.", cid)
	elseif msgcontains(msg, "problems") then
		npcHandler:say(" I have problems in the south-east, do you see these watches blowing fire everywhere! Can you help me in this {mission} ?", cid)
	elseif msgcontains(msg, "mining") then
		npcHandler:say("If you got already the Pick, you can check near me the crystal you can start mining on the world. If you didnt have the Adentis Pick as me for a {mission}", cid)
	elseif msgcontains(msg, "mission") then
	if player:getStorageValue(114901) == 1 then
		npcHandler:say("You already finished this mission", cid)
		else
		npcHandler:say("My studies indicate that dragons are everywhere near the mountains where the minerals abound. We have to stop him. ...", cid)
		npcHandler:say("Therefore I need you to go kill them and catch me 10 Dragon's Tail. Are you willing to help me in this dire mission?", cid)
		npcHandler.topic[cid] = 2
		end
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 2 then
	if player:getStorageValue(114901) == 1 then
		npcHandler:say("You already finished this mission", cid)
		else
		setPlayerStorageValue(cid, Storage.CraftSystem.Tools.Job, 1)
		npcHandler:say("Good! Go kill some dragons and come back when you get 25 Dragon's Tail, then come back and ask me for {Dragons Tail}.", cid)
		end
	elseif msgcontains(msg, "Dragon's Tail") or msgcontains(msg, "Dragons tail") then
	 if player:getStorageValue(114901) == 1 then
		npcHandler:say("You already finished this mission", cid)
		else
		npcHandler:say("Do you have 25 {Dragon's Tail} to bring me?", cid)
		npcHandler.topic[cid] = 3
	end
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 3 then
		if player:removeItem(12413, 25) then
			npcHandler:say("Excellent! You can now ask me for {trade} to buy tools for gather some resources. ", cid)
			setPlayerStorageValue(cid, Storage.CraftSystem.Tools.Job, 2)
			setPlayerStorageValue(cid, 114901, 1)
		else
			npcHandler:say("You don\'t have the 10 {Dragon's Tail}  back here when you got the items.", cid)
			npcHandler:releaseFocus(cid)
		end
		end


end

local shopModule = ShopModule:new() 
npcHandler:addModule(shopModule) 

shopModule:addBuyableItem({'adentis pickaxe'}, 8980, 3000, 'adentis pickaxe') 
shopModule:addBuyableItem({'adentis axe'}, 8979, 3000, 'adentis axe') 
shopModule:addBuyableItem({'adentis gloves'}, 8983, 3000, 'adentis gloves') 
shopModule:addBuyableItem({'adentis skinning knife'}, 8978, 3000, 'adentis skinning knife')
shopModule:addBuyableItem({'fishing rod'}, 2580, 500, 'fishing rod') 

local function onTradeRequest(cid)
	local player = Player(cid)
	if player:getStorageValue(Storage.CraftSystem.Tools.Job) < 1 then
		npcHandler:say("Sorry, we dont trade with strangers.", cid)
		return false
	elseif player:getStorageValue(Storage.CraftSystem.Tools.Job) >= 2 then
		npcHandler:say("Buy some Tools to start gathering some resources around the world.", cid)
		return true 
	end
end



npcHandler:setMessage(MESSAGE_GREET, "Greetings, dear citizen of Mordragor. Please tell me what {brings} you here, to my humble adobe.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Oh well.")

npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)
npcHandler:setCallback(CALLBACK_ONTRADEREQUEST, onTradeRequest)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
