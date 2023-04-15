local jobsTalk = TalkAction("!collection")


function jobsTalk.onSay(player, words, param)

local ornamentedH = player:getStorageValue(180001)
local ornamentedA = player:getStorageValue(180002)
local ornamentedL = player:getStorageValue(180003)
local evermoonS = player:getStorageValue(180004)
local evermoonA = player:getStorageValue(180005)
local evermoonB = player:getStorageValue(180006)
local evermoonH = player:getStorageValue(180007)
local evermoonL = player:getStorageValue(180008)
local skullshield = player:getStorageValue(180009)
local skullspell = player:getStorageValue(180010)
local skullhel = player:getStorageValue(180011)
local skullarm = player:getStorageValue(180012)
local skulllegs = player:getStorageValue(180013)
local skullboots = player:getStorageValue(180014)
local skullaxe = player:getStorageValue(180015)
local skullhammer = player:getStorageValue(180016)
local skullbow = player:getStorageValue(180017)
local skullcross = player:getStorageValue(180018)
local skullwand = player:getStorageValue(180019)
local dreadH = player:getStorageValue(180020)
local dreadA = player:getStorageValue(180021)
local dreadL = player:getStorageValue(180022)
local dreadB = player:getStorageValue(180023)
local dreadSh = player:getStorageValue(180024)
local dreadS = player:getStorageValue(180025)
local dreadAxe = player:getStorageValue(180026)
local dreadC = player:getStorageValue(180027)
local dreadBow = player:getStorageValue(180028)
local spiritA = player:getStorageValue(180029)
local spiritH = player:getStorageValue(180030)
local alicoH = player:getStorageValue(180031)
local arcaRega = player:getStorageValue(180032)
local arborCro = player:getStorageValue(180033)
local nagaS = player:getStorageValue(180034)
local nagaA = player:getStorageValue(180035)
local nagaC = player:getStorageValue(180036)
local frostFlo = player:getStorageValue(180037)
local nagaCross = player:getStorageValue(180038)
local feverB = player:getStorageValue(180039)
local nagaWa = player:getStorageValue(180040)
local nagaR = player:getStorageValue(180041)
local dawnfireS = player:getStorageValue(180042)
local midnightT = player:getStorageValue(180043)
local dawnfireP = player:getStorageValue(180044)
local midnightS = player:getStorageValue(180045)
local arborealT = player:getStorageValue(180046)
local arcacnomancerFo = player:getStorageValue(180047)
local anubisL = player:getStorageValue(180048)
local anubisA = player:getStorageValue(180049)
local anubisB = player:getStorageValue(180050)
local northrenH = player:getStorageValue(180051)
local northrenL = player:getStorageValue(180052)
local screedL = player:getStorageValue(180053)
local screedA = player:getStorageValue(180054)
local bronzeB = player:getStorageValue(180055)
local mummyB = player:getStorageValue(180056)
local mummySpell = player:getStorageValue(180057)
local mummySki = player:getStorageValue(180058)

	local text = '                Collection Items        \n\n- In order to start your collection you need talk with The Collector Npc, located on Arkeron upper Hell Token Merchant, write to him the name of the item you wish to add to the collection.\n\n\n \z                  
    Ornamented Set:        \n\n\z
    - Ornamented Helmet: '..ornamentedH..'/1.\n\z
    - Ornamented Armor: '..ornamentedA..'/1.\n\z
    - Ornamented Legs: '..ornamentedL..'/1.\n\n\z
    Evermoon Set:        \n\n\z
    - Evermoon Shield: '..evermoonS..'/1.\n\z
    - Evermoon Helmet: '..evermoonH..'/1.\n\z
    - Evermoon Armor: '..evermoonA..'/1.\n\z
    - Evermoon Legs: '..evermoonL..'/1.\n\z
    - Evermoon Boots: '..evermoonB..'/1.\n\n\z
    Skull Depth Set:        \n\n\z
    - Skull Helmet of the Depth: '..skullhel..'/1.\n\z
    - Skull Armor of the Depth: '..skullarm..'/1.\n\z
    - Skull Legs of the Depth: '..skulllegs..'/1.\n\z
    - Skull Boots of the Depth: '..skullboots..'/1.\n\z
    - Skull Shield of the Depth: '..skullshield..'/1.\n\z
    - Skull Axe of the Depth: '..skullaxe..'/1.\n\z
    - Skull Hammer of the Depth: '..skullhammer..'/1.\n\z
    - Skull Bow of the Depth: '..skullbow..'/1.\n\z
    - Skull Crossbow of the Depth: '..skullcross..'/1.\n\z
    - Skull Wand of the Depth: '..skullwand..'/1.\n\z
    - Skull Spellbook of the Depth: '..skullspell..'/1.\n\n\z
    Dreadwake Set:        \n\n\z
    - Dreadwake Helmet: '..dreadH..'/1.\n\z
    - Dreadwake Armor: '..dreadA..'/1.\n\z
    - Dreadwake Legs: '..dreadL..'/1.\n\z
    - Dreadwake Boots: '..dreadB..'/1.\n\z
    - Dreadwake Shield: '..dreadSh..'/1.\n\z
    - Dreadwake Sword: '..dreadS..'/1.\n\z
    - Dreadwake Axe: '..dreadAxe..'/1.\n\z
    - Dreadwake Club: '..dreadC..'/1.\n\z
    - Dreadwake Bow: '..dreadBow..'/1.\n\n\z
    Naga Items:        \n\n\z
    - Spiritthorn Armor: '..spiritA..'/1.\n\z
    - Spiritthorn Helmet: '..spiritH..'/1.\n\z
    - Alicorn Headguard: '..alicoH..'/1.\n\z
    - Arcanomancer Regalia: '..arcaRega..'/1.\n\z
    - Arboreal Crown: '..arborCro..'/1.\n\z
    - Frostflower Boots: '..frostFlo..'/1.\n\z
    - Feverbloom Boots: '..feverB..'/1.\n\z
    - Dawnfire Sherwani: '..dawnfireS..'/1.\n\z
    - Dawnfire Pantaloons: '..dawnfireP..'/1.\n\z
    - Midnight Sarong: '..midnightS..'/1.\n\z
    - Midnight Tunic: '..midnightT..'/1.\n\z
    - Arboreal Tome: '..arborealT..'/1.\n\z
    - Arcanomancer Folio: '..arcacnomancerFo..'/1.\n\z
    - Naga Sword: '..nagaS..'/1.\n\z
    - Naga Axe: '..nagaA..'/1.\n\z
    - Naga Club: '..nagaC..'/1.\n\z
    - Naga Crossbow: '..nagaCross..'/1.\n\z
    - Naga Wand: '..nagaWa..'/1.\n\z
    - Naga Rod: '..nagaR..'/1.\n\n\z
    Anubis Items:        \n\n\z
    - Anubis Armor: '..anubisA..'/1.\n\z
    - Anubis Legs: '..anubisL..'/1.\n\z
    - Anubis Boots: '..anubisB..'/1.\n\z
    - Northren Helmet: '..northrenH..'/1.\n\z
    - Northren Legs: '..northrenL..'/1.\n\z
    - Screed Armor: '..screedA..'/1.\n\z
    - Screed Legs: '..screedL..'/1.\n\z
    - Bronze Boots: '..bronzeB..'/1.\n\z
    - Mummy Skirt: '..mummySki..'/1.\n\z
    - Mummy Boots: '..mummyB..'/1.\n\z
    - Mummy Spellbook: '..mummySpell..'/1.\n\z' 

	return false,  player:showTextDialog(42076, "" .. text)
end

jobsTalk:register()