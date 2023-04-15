local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = { -- 622 gps 1 Coin of Valor
	{id=4871, buy=2, sell=0, name='Magma Ore'},
	{id=5937, buy=36, sell=0, name='Precious Magma Crystal'},
	{id=7733, buy=2, sell=0, name='Crystal Ore'},
	{id=5802, buy=35, sell=0, name='Precious Crystal'},
	{id=4867, buy=2, sell=0, name='Solar Ore'},
	{id=5799, buy=36, sell=0, name='Precious Solar Crystal'},
	{id=4866, buy=3, sell=0, name='Amethyst Ore'},
	{id=4873, buy=38, sell=0, name='Precious Amethyst Crystal'},
	{id=7845, buy=4, sell=0, name='Amber Ore'},
	{id=4865, buy=43, sell=0, name='Precious Amber Crystal'},
	{id=4855, buy=2, sell=0, name='Lava Ore'},
	{id=4870, buy=35, sell=0, name='Precious Lava Crystal'},
	{id=4852, buy=2, sell=0, name='Light Solar Ore'},
	{id=5939, buy=34, sell=0, name='Precious Light Solar Crystal'},
	{id=6087, buy=2, sell=0, name='Malachite Ore'},
	{id=6088, buy=36, sell=0, name='Precious Malachite Crystal'},
	{id=14336, buy=3, sell=0, name='Sapphir Ore'},
	{id=5938, buy=39, sell=0, name='Precious Sapphir Crystal'},
	{id=4869, buy=3, sell=0, name='Gold Ore'},
	{id=4868, buy=42, sell=0, name='Precious Gold Crystal'},
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
		if player:addItem(26312, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Coins of Valor.")
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
		npcHandler:say("You can buy mining materials for some Coins of Valor.", cid)
	end
	return true
end





npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

