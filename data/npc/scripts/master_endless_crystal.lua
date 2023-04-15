local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = {
	{id=42088, buy=0, sell=11, name='Spiritthorn Armor'},
	{id=42089, buy=0, sell=9, name='Spiritthorn Helmet'},
	{id=42090, buy=0, sell=9, name='Alicorn Headguard'},
	{id=42091, buy=0, sell=9, name='Arcanomancer Regalia'},
	{id=42092, buy=0, sell=9, name='Arboreal Crown'},
	{id=32448, buy=0, sell=15, name='Naga Sword'},
	{id=32449, buy=0, sell=15, name='Naga Axe'},
	{id=33429, buy=0, sell=15, name='Naga Club'},
	{id=33479, buy=0, sell=4, name='Frostflower boots'},
	{id=33930, buy=0, sell=15, name='Naga Crossbow'},
	{id=33931, buy=0, sell=4, name='Feverbloom boots'},
	{id=33932, buy=0, sell=15, name='Naga Wand'},
	{id=33933, buy=0, sell=15, name='Naga Rod'},
	{id=33946, buy=0, sell=9, name='Dawnfire Sherwani'},
	{id=33947, buy=0, sell=9, name='Midnight Tunic'},
	{id=33948, buy=0, sell=9, name='Dawnfire Pantaloons'},
	{id=33949, buy=0, sell=9, name='Midnight Sarong'},
	{id=42093, buy=0, sell=11, name='Arboreal Tome'},
	{id=42094, buy=0, sell=11, name='Arcanomancer Folio'},
	
}

local function setNewTradeTable(table)
	local items, item = {}
	for i = 1, #table do
		item = table[i]
		items[item.id] = {id = item.id, buy = item.buy, sell = item.sell, subType = 0, name = item.name}
	end
	return items
end

local function onBuy(cid, item, subType, amount, ignoreCap, inBackpacks)
	local player = Player(cid)
	local itemsTable = setNewTradeTable(shop)
	if not ignoreCap and player:getFreeCapacity() < ItemType(itemsTable[item].id):getWeight(amount) then
		return player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough cap.")
	end
	if itemsTable[item].buy then
		if player:removeItem(Npc():getCurrency(), amount * itemsTable[item].buy) then
			if amount > 1 then
				currencyName = ItemType(Npc():getCurrency()):getPluralName():lower()
			else
				currencyName = ItemType(Npc():getCurrency()):getName():lower()
			end
			player:addItem(itemsTable[item].id, amount)
			return player:sendTextMessage(MESSAGE_INFO_DESCR,
						"Bought "..amount.."x "..itemsTable[item].name.." for "..itemsTable[item].buy * amount.." "..currencyName..".")
		else
			return player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough "..currencyName..".")
		end
	end
end

local function onSell(cid, item, subType, amount, ignoreCap, inBackpacks)
	local player = Player(cid)
	local itemsTable = setNewTradeTable(shop)
	if not ignoreCap and player:getFreeCapacity() < ItemType(itemsTable[item].id):getWeight(amount) then
		return player:sendTextMessage(MESSAGE_FAILURE, "You don't have enough cap.")
		end
		if player:removeItem(item, amount, 1, amount* itemsTable[item].sell) then
			end
		if player:addItem(32447, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Endless Crystal.")
end
return true
end



local answerType = {}
local answerLevel = {}

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

	
	if msgcontains(msg, "Trade") then
		openShopWindow(cid, shop, onBuy, onSell)
		npcHandler:say("You can sell your looted equipments for some refined Crystals. The {ancestral} power is increasing day by day, we need more heroes!", cid)
	elseif msgcontains(msg, "ancestral") then
		npcHandler:say("You know, the Ancestral was created after some heros defeat the {powerful evil} on Freewind.")
	elseif msgcontains(msg, "powerful evil") then
		npcHandler:say("When the demon fell, the blast of the explosion opened a {breach} between the two worlds.")
	elseif msgcontains(msg, "breach") then
		npcHandler:say("It is said then, that the demon had on him a {mysterious egg}, and that this one was scattered in the breach.")
	elseif msgcontains(msg, "mysterious egg") then
		npcHandler:say("The egg is said to have {immeasurable power} and could give extreme powers to whoever forges a weapon with it.")
	elseif msgcontains(msg, "immeasurable power") then
		npcHandler:say("Oh, but you're a freshman. This egg with extraordinary powers is reserved for heroes and those who dare to defy death. Come on, enough chatter, go practice a bit.")
	end
	return true
end






npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
