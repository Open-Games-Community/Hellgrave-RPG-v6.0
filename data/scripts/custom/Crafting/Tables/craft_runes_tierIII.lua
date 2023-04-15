
local tier3runes = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Tier III Runes Craft", 
	mainMsg = "Welcome to the Tier III Runes Craft.\nPlease choose a category:", 
 
	craftTitle = "Tier III Runes: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a Tier III Rune.\n\nHere is a list of all differents Tier III Runes that can be crafted: ",  
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Tier III Runes", 
			items = {
				[1] = {item = "Uncommon Tier III Rune", 
						itemID = 7746, 
						reqItems = {
								[1] = {item = 7745, count = 2}, -- 2 Common Tier III Rune
							},
						},
 
				[2] = {item = "Rare Tier III Rune",
						itemID = 7747,		
						reqItems = {
								[1] = {item = 7746, count = 2}, -- 2 Uncommon Tier III Rune
							},
						},					
 
				[3] = {item = "Epic Tier III Rune",
						itemID = 7748,			
						reqItems = {
								[1] = {item = 7747, count = 2}, -- 2 Rare Tier III Rune
						},
					},
 
				[4] = {item = "Mythic Tier III Rune",
						itemID = 7749,				
						reqItems = {
							    [1] = {item = 7748, count = 2}, -- 2 Epic Tier III Rune
						},
					},
 
				[5] = {item = "Legendary Tier III Rune",
						itemID = 7750,				
						reqItems = {
							    [1] = {item = 7749, count = 2}, -- 2 Mythic Tier III Rune
						},
					},
				[6] = {item = "Exotic Tier III Rune",
						itemID = 7751,				
						reqItems = {
							    [1] = {item = 7750, count = 2}, -- 2 Legendary Tier III Rune
						},
					},
				[7] = {item = "Ascending Tier III Rune",
						itemID = 7752,				
						reqItems = {
							    [1] = {item = 7751, count = 2}, -- 2 Exotic Tier III Rune
						},
					},
				},
			},
			},
		}
 
function tier3runes.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.RunesTierIII.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft Tier III runes.")
		return true
		end
end
tier3runes:id(13983)
tier3runes:register()