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

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then 
		return false 
	end

	local player = Player(cid)

	
	if(msgcontains(msg, "outfit")) or (msgcontains(msg, "addon")) then
		selfSay("In exchange for a truly generous donation, I will offer a special outfit. Do you want to make a donation?", cid)
		npcHandler.topic[cid] = 1
	elseif(msgcontains(msg, "yes")) then
		if npcHandler.topic[cid] == 1 then
			selfSay("Excellent! Now, let me explain. If you donate 1.000.000.000 gold pieces, you will be entitled to wear a unique outfit. ...", cid)
			selfSay("You will be entitled to wear the {armor} for 500.000.000 gold pieces, {helmet} for an additional 250.000.000 and the {boots} for another 250.000.000 gold pieces. ...", cid)
			selfSay("What will it be?", cid)
			npcHandler.topic[cid] = 2
		elseif npcHandler.topic[cid] == 2 then
			selfSay("In that case, return to me once you made up your mind.", cid)
			npcHandler.topic[cid] = 0
		elseif npcHandler.topic[cid] == 3 then -- ARMOR/OUTFIT
			if player:getStorageValue(Storage.OutfitQuest.GoldenOutfit) < 1 then
				if player:getMoney() + player:getBankBalance() >= 500000000 then
					local inbox = player:getSlotItem(CONST_SLOT_STORE_INBOX)
					if inbox and inbox:getEmptySlots() > 0 then
						local decoKit = inbox:addItem(26054, 1)
						local decoItemName = ItemType(36345):getName()
							decoKit:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, "Unwrap it in your own house to create a " .. decoItemName .. ".")
							decoKit:setCustomAttribute("unWrapId", 36345)
							selfSay("Take this armor as a token of great gratitude. Let us forever remember this day, my friend!", cid)
							player:removeMoneyNpc(500000000)
							player:addOutfit(1211)
							player:addOutfit(1210)
							player:getPosition():sendMagicEffect(171)
							player:setStorageValue(Storage.OutfitQuest.GoldenOutfit, 1)
					else
						selfSay("Please make sure you have free slots in your store inbox.", cid)
					end				
				else
					selfSay("You do not have enough money to donate that amount.", cid)
				end
			else
				selfSay("You alread have that addon.", cid)
			end
			npcHandler.topic[cid] = 2
		elseif npcHandler.topic[cid] == 4 then
			if player:getStorageValue(Storage.OutfitQuest.GoldenOutfit) == 1 then
				if player:getStorageValue(Storage.OutfitQuest.GoldenOutfit) < 2 then
					if player:getMoney() + player:getBankBalance() >= 250000000 then
						selfSay("Take this helmet as a token of great gratitude. Let us forever remember this day, my friend. ", cid)
						player:removeMoneyNpc(250000000)
						player:addOutfitAddon(1210, 2)
						player:addOutfitAddon(1211, 2)
						player:getPosition():sendMagicEffect(171)
						player:setStorageValue(Storage.OutfitQuest.GoldenOutfit, 2)
						npcHandler.topic[cid] = 2
					else
						selfSay("You do not have enough money to donate that amount.", cid)
						npcHandler.topic[cid] = 2
					end
				else
					selfSay("You alread have that outfit.", cid)
					npcHandler.topic[cid] = 2
				end
			else
				selfSay("You need to donate {armor} outfit first.", cid)
				npcHandler.topic[cid] = 2
			end
			npcHandler.topic[cid] = 2
		elseif npcHandler.topic[cid] == 5 then
			if player:getStorageValue(Storage.OutfitQuest.GoldenOutfit) == 2 then
				if player:getStorageValue(Storage.OutfitQuest.GoldenOutfit) < 3 then
					if player:getMoney() + player:getBankBalance() >= 250000000 then
						selfSay("Take this boots as a token of great gratitude. Let us forever remember this day, my friend. ", cid)
						player:removeMoneyNpc(250000000)
						player:addOutfitAddon(1210, 1)
						player:addOutfitAddon(1211, 1)
						player:getPosition():sendMagicEffect(171)
						player:setStorageValue(Storage.OutfitQuest.GoldenOutfit, 3)
						npcHandler.topic[cid] = 2
					else
						selfSay("You do not have enough money to donate that amount.", cid)
						npcHandler.topic[cid] = 2
					end
				else
					selfSay("You alread have that outfit.", cid)
					npcHandler.topic[cid] = 2
				end
			else
				selfSay("You need to donate {helmet} addon first.", cid)
				npcHandler.topic[cid] = 2
			end
			npcHandler.topic[cid] = 2
	end
	elseif(msgcontains(msg, "armor")) and npcHandler.topic[cid] == 2 then
		selfSay("So you wold like to donate 500.000.000 gold pieces which in return will entitle you to wear a unique armor?", cid)
		npcHandler.topic[cid] = 3 
	elseif(msgcontains(msg, "helmet")) and npcHandler.topic[cid] == 2 then
		selfSay("So you would like to donate 250.000.000 gold pieces which in return will entitle you to wear unique helmet?", cid)
		npcHandler.topic[cid] = 4 
	elseif(msgcontains(msg, "boots")) and npcHandler.topic[cid] == 2 then
		selfSay("So you would like to donate 250.000.000 gold pieces which in return will entitle you to wear a unique boots?", cid)
		npcHandler.topic[cid] = 5 
	end
	
end
-- Promotion
local node1 = keywordHandler:addKeyword({'promot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can promote you for 200000 gold coins. You need at least level 100. Do you want me to promote you?'})
	node1:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, cost = 200000, level = 100, text = 'Congratulations! You are now promoted.'})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then, come back when you are ready.', reset = true})
-- Basic

-- Greeting message
keywordHandler:addGreetKeyword({"hail king"}, {npcHandler = npcHandler, text = "I greet thee, my loyal subject |PLAYERNAME|."})
keywordHandler:addGreetKeyword({"salutations king"}, {npcHandler = npcHandler, text = "I greet thee, my loyal subject |PLAYERNAME|."})

npcHandler:setMessage(MESSAGE_WALKAWAY, 'How rude!')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

npcHandler:addModule(FocusModule:new())
