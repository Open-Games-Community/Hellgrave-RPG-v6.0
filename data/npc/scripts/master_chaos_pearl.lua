local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = { -- 1.5M - 1 Chaos Pearl
	{id=42073, buy=2, sell=0, name='Demoniac Core'},
	{id=40744, buy=3, sell=0, name='Divine Essence'},
	{id=40807, buy=6, sell=0, name='Demoniac Essence'},
	{id=27352, buy=22, sell=0, name='Endless Flame'},	
	{id=27420, buy=47, sell=0, name='Amber Flame'},
	{id=42080, buy=50, sell=0, name='Divine Egg'},
	{id=42079, buy=90, sell=0, name='Amber Egg'},
	{id=26269, buy=8, sell=0, name='Chaos Triumph Badge'},
	{id=26286, buy=12, sell=0, name='Demonic Pure Heart'},
	
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
		if player:addItem(27384, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Chaos Pearl.")
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
	end
	return true
end






npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
