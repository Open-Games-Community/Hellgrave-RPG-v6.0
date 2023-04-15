local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = { -- 3000 gps 1 Cursed Token
	{id=36996, buy=1, sell=0, name='Harmonious Prismatic Seal'},
	{id=36997, buy=1, sell=0, name='Darkness Prismatic Seal'},
	{id=36998, buy=2, sell=0, name='Sacred Prismatic Seal'},
	{id=37005, buy=3, sell=0, name='Dimensional Prismatic Seal'},
	{id=37006, buy=4, sell=0, name='Primal Prismatic Seal'},
	{id=37007, buy=5, sell=0, name='Awakening Prismatic Seal'},
	{id=25971, buy=2, sell=0, name='Harmonious Crystal'},
	{id=25972, buy=4, sell=0, name='Darkness Crystal'},
	{id=25975, buy=6, sell=0, name='Dimensional Crystal'},
	{id=25976, buy=7, sell=0, name='Primal Crystal'},
	{id=25979, buy=11, sell=0, name='Awakening Crystal'},
	{id=25935, buy=8, sell=0, name='Void Essence'},
	{id=25936, buy=6, sell=0, name='Affliction Essence'},
	{id=25939, buy=13, sell=0, name='Eternity Essence'},

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
		if player:addItem(27311, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Cursed Tokens.")
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
		npcHandler:say("You can buy some Transcending Materials for Cursed Tokens.", cid)
	end
	return true
end





npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

