
local tier5runes = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Tier V Runes Craft", 
	mainMsg = "Welcome to the Tier V Runes Craft.\nPlease choose a category:", 
 
	craftTitle = "Tier V Runes: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a Tier V Rune.\n\nHere is a list of all differents Tier V Runes that can be crafted: ",  
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Tier V Runes", 
			items = {
				[1] = {item = "Uncommon Tier V Rune", 
						itemID = 7754, 
						reqItems = {
								[1] = {item = 7753, count = 2}, -- 2 Common Tier V Rune
							},
						},
 
				[2] = {item = "Rare Tier V Rune",
						itemID = 7755,		
						reqItems = {
								[1] = {item = 7754, count = 2}, -- 2 Uncommon Tier V Rune
							},
						},					
 
				[3] = {item = "Epic Tier V Rune",
						itemID = 7756,			
						reqItems = {
								[1] = {item = 7755, count = 2}, -- 2 Rare Tier V Rune
						},
					},
 
				[4] = {item = "Mythic Tier V Rune",
						itemID = 7757,				
						reqItems = {
							    [1] = {item = 7756, count = 2}, -- 2 Epic Tier V Rune
						},
					},
 
				[5] = {item = "Legendary Tier V Rune",
						itemID = 7758,				
						reqItems = {
							    [1] = {item = 7757, count = 2}, -- 2 Mythic Tier V Rune
						},
					},
				[6] = {item = "Exotic Tier V Rune",
						itemID = 7763,				
						reqItems = {
							    [1] = {item = 7758, count = 2}, -- 2 Legendary Tier V Rune
						},
					},
				[7] = {item = "Ascending Tier V Rune",
						itemID = 7764,				
						reqItems = {
							    [1] = {item = 7763, count = 2}, -- 2 Exotic Tier V Rune
						},
					},
				},
			},
			},
		}
 
function tier5runes.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.RunesTierV.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft Tier V runes.")
		return true
		end
end
tier5runes:id(39131)
tier5runes:register()