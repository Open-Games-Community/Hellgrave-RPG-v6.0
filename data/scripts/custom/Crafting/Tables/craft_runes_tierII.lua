
local tier2runes = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Tier II Runes Craft", 
	mainMsg = "Welcome to the Tier II Runes Craft.\nPlease choose a category:", 
 
	craftTitle = "Tier II Runes: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a Tier II Rune.\n\nHere is a list of all differents Tier II Runes that can be crafted: ",  
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Tier II Runes", 
			items = {
				[1] = {item = "Uncommon Tier II Rune", 
						itemID = 7878, 
						reqItems = {
								[1] = {item = 7877, count = 2}, -- 2 Common Tier II Rune
							},
						},
 
				[2] = {item = "Rare Tier II Rune",
						itemID = 7879,		
						reqItems = {
								[1] = {item = 7878, count = 2}, -- 2 Uncommon Tier II Rune
							},
						},					
 
				[3] = {item = "Epic Tier II Rune",
						itemID = 7880,			
						reqItems = {
								[1] = {item = 7879, count = 2}, -- 2 Rare Tier II Rune
						},
					},
 
				[4] = {item = "Mythic Tier II Rune",
						itemID = 7881,				
						reqItems = {
							    [1] = {item = 7880, count = 2}, -- 2 Epic Tier II Rune
						},
					},
 
				[5] = {item = "Legendary Tier II Rune",
						itemID = 7882,				
						reqItems = {
							    [1] = {item = 7881, count = 2}, -- 2 Mythic Tier II Rune
						},
					},
				[6] = {item = "Exotic Tier II Rune",
						itemID = 7883,				
						reqItems = {
							    [1] = {item = 7882, count = 2}, -- 2 Legendary Tier II Rune
						},
					},
				[7] = {item = "Ascending Tier II Rune",
						itemID = 7744,				
						reqItems = {
							    [1] = {item = 7883, count = 2}, -- 2 Exotic Tier II Rune
						},
					},
				},
			},
			},
		}
 
function tier2runes.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.RunesTierII.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft Tier II runes.")
		return true
		end
end
tier2runes:id(39132)
tier2runes:register()