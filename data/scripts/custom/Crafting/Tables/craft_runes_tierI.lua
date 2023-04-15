
local tier1runes = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Tier I Runes Craft", 
	mainMsg = "Welcome to the Tier I Runes Craft.\nPlease choose a category:", 
 
	craftTitle = "Tier I Runes: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a Tier I Rune.\n\nHere is a list of all differents Tier I Runes that can be crafted: ",  
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Tier I Runes", 
			items = {
				[1] = {item = "Uncommon Tier I Rune", 
						itemID = 7862, 
						reqItems = {
								[1] = {item = 7861, count = 2}, -- 2 Common tier I Rune
							},
						},
 
				[2] = {item = "Rare Tier I Rune",
						itemID = 7863,		
						reqItems = {
								[1] = {item = 7862, count = 2}, -- 2 Uncommon tier I Rune
							},
						},					
 
				[3] = {item = "Epic Tier I Rune",
						itemID = 7864,			
						reqItems = {
								[1] = {item = 7863, count = 2}, -- 2 Rare tier I Rune
						},
					},
 
				[4] = {item = "Mythic Tier I Rune",
						itemID = 7865,				
						reqItems = {
							    [1] = {item = 7864, count = 2}, -- 2 Epic tier I Rune
						},
					},
 
				[5] = {item = "Legendary Tier I Rune",
						itemID = 7866,				
						reqItems = {
							    [1] = {item = 7865, count = 2}, -- 2 Mythic tier I Rune
						},
					},
				[6] = {item = "Exotic Tier I Rune",
						itemID = 7867,				
						reqItems = {
							    [1] = {item = 7866, count = 2}, -- 2 Legendary tier I Rune
						},
					},
				[7] = {item = "Ascending Tier I Rune",
						itemID = 7868,				
						reqItems = {
							    [1] = {item = 7867, count = 2}, -- 2 Exotic tier I Rune
						},
					},
				},
			},
			},
		}
 
function tier1runes.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.RunesTierI.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft Tier I runes.")
		return true
		end
end
tier1runes:id(39126)
tier1runes:register()