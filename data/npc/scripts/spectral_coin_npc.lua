local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = { -- 195 gps 1 Spectral Coin
	{id=10100, buy=1, sell=0, name='Large Chunk of Meat'},
	{id=10101, buy=2, sell=0, name='Thick Leather'},
	{id=10102, buy=3, sell=0, name='Tiger Fur'},
	{id=10104, buy=12, sell=0, name='Hardened Skin'},
	{id=10105, buy=2, sell=0, name='Carnivorous Ham'},
	{id=14351, buy=4, sell=0, name='Giant Monster Fur'},
	{id=10106, buy=3, sell=0, name='Giant Monster Scale'},
	{id=10107, buy=1, sell=0, name='Monster Ribs'},
	{id=10108, buy=4, sell=0, name='Monster Coast'},
	{id=10109, buy=2, sell=0, name='Giant Monster Ribs'},
	{id=10122, buy=5, sell=0, name='Rare Leather'},
	{id=10124, buy=2, sell=0, name='Dorsal Fur'},
	{id=10125, buy=3, sell=0, name='Monster Tail'},
	{id=10126, buy=3, sell=0, name='Fractured Bone'},
	{id=10127, buy=2, sell=0, name='Monster Hair'},
	{id=10128, buy=2, sell=0, name='Clogs'},
	{id=10129, buy=15, sell=0, name='Tail Bone'},
	{id=10130, buy=17, sell=0, name='Monster Horn'},
	{id=10131, buy=19, sell=0, name='Monster Skull'},
	{id=10132, buy=2, sell=0, name='Pair of Ribs Bones'},
	{id=10133, buy=42, sell=0, name='Golden Dragon Scale'},
	{id=10134, buy=4, sell=0, name='Silver Dragon Scale'},
	{id=10135, buy=3, sell=0, name='Monster Intestines'},
	{id=10136, buy=4, sell=0, name='Skull of Dragon'},
	{id=10137, buy=2, sell=0, name='Monster Jaw'},
	{id=10032, buy=1, sell=0, name='Monster Paw'},
	{id=10138, buy=4, sell=0, name='Vertebral Column'},
	{id=10139, buy=13, sell=0, name='Dorsal Bone'},
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
		if player:addItem(26313, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Spectral Coins.")
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
		npcHandler:say("You can buy skinning materials for some Spectral Coins.", cid)
	end
	return true
end





npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

