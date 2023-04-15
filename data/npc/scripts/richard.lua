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

local voices = {
	{text = "Don't forget to always have a rope with you! Buy one here, only the best quality!"},
	{text = "Don't complain to Me when you fell down a hole without a rope to get you out! You can buy one here now!"},
	{text = "Everything an adventurer needs!"},
	{text = "A rope is the adventurer's best friend!"},
	{text = "Fresh meat! Durable provisions! Ropes and shovels!"},
	{text = "Feeling like a bit of treasure-seeking? \z
		Buy a shovel or a pick and investigate likely-looking stone piles and cracks!"}
}

npcHandler:addModule(VoiceModule:new(voices))

-- NPC shop
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
-- Buyable
-- Name, id, price, count/charges
shopModule:addBuyableItem({"backpack"}, 1988, 10, 1)
shopModule:addBuyableItem({"bag"}, 1987, 4, 1)
shopModule:addBuyableItem({"bread"}, 2689, 3, 1)
shopModule:addBuyableItem({"carrot"}, 2684, 1, 1)
shopModule:addBuyableItem({"cheese"}, 2696, 5, 1)
shopModule:addBuyableItem({"cherry"}, 2679, 1, 1)
shopModule:addBuyableItem({"egg"}, 2695, 1, 1)
shopModule:addBuyableItem({"fishing rod"}, 2580, 150, 1)
shopModule:addBuyableItem({"ham"}, 2671, 8, 1)
shopModule:addBuyableItem({"machete"}, 2420, 6, 1)
shopModule:addBuyableItem({"meat"}, 2666, 5, 1)
shopModule:addBuyableItem({"pick"}, 2553, 15, 1)
shopModule:addBuyableItem({"rope"}, 2120, 50, 1)
shopModule:addBuyableItem({"salmon"}, 2668, 2, 1)
shopModule:addBuyableItem({"scroll"}, 1949, 5, 1)
shopModule:addBuyableItem({"shovel"}, 2554, 10, 1)
shopModule:addBuyableItem({"torch"}, 2050, 2, 1)
shopModule:addBuyableItem({"worm"}, 14354, 1, 1)
-- Sellable
shopModule:addSellableItem({"cheese"}, 2696, 2, 1)
shopModule:addSellableItem({"fishing rod"}, 2580, 30, 1)
shopModule:addSellableItem({"meat"}, 2666, 2, 1)
shopModule:addSellableItem({"rope"}, 2120, 8, 1)
shopModule:addSellableItem({"shovel"}, 2554, 2, 1)

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
	if msgcontains(msg, "job") then
		npcHandler:say(
			{
				"I was a carpenter, back on Main. Wanted my own little shop. Didn't sit with the old man. \z
					So I shipped to somewhere else. Terrible storm.",
				"Woke up on this island. Had to eat squirrels before the adventurers found me and took me in. End of story."
			},
		cid, false, true, 10)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, "rope") then
		npcHandler:say(
			{
				"Only the best quality, I assure you. A rope in need is a friend indeed! Imagine you stumble into a rat \z
					hole without a rope - heh, your bones will be gnawed clean before someone finds ya!",
				"Now, about that rope - ask me for equipment to see my wares. <winks>"
			},
		cid, false, true, 10)
		npcHandler.topic[cid] = 0
	end
	return true
end


npcHandler:setMessage(MESSAGE_GREET, "Hello there, mate. Here for a {trade}? My stock's just been refilled.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Of course, just browse through my wares. \z
	You can also have a look at food or {equipment} only.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Have fun!")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
