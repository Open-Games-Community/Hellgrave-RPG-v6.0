
local tier4runes = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Tier IV Runes Craft", 
	mainMsg = "Welcome to the Tier IV Runes Craft.\nPlease choose a category:", 
 
	craftTitle = "Tier IV Runes: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a Tier IV Rune.\n\nHere is a list of all differents Tier IV Runes that can be crafted: ",  
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Tier IV Runes", 
			items = {
				[1] = {item = "Uncommon Tier IV Rune", 
						itemID = 7870, 
						reqItems = {
								[1] = {item = 7869, count = 2}, -- 2 Common Tier IV Rune
							},
						},
 
				[2] = {item = "Rare Tier IV Rune",
						itemID = 7871,		
						reqItems = {
								[1] = {item = 7870, count = 2}, -- 2 Uncommon Tier IV Rune
							},
						},					
 
				[3] = {item = "Epic Tier IV Rune",
						itemID = 7872,			
						reqItems = {
								[1] = {item = 7871, count = 2}, -- 2 Rare Tier IV Rune
						},
					},
 
				[4] = {item = "Mythic Tier IV Rune",
						itemID = 7873,				
						reqItems = {
							    [1] = {item = 7872, count = 2}, -- 2 Epic Tier IV Rune
						},
					},
 
				[5] = {item = "Legendary Tier IV Rune",
						itemID = 7874,				
						reqItems = {
							    [1] = {item = 7873, count = 2}, -- 2 Mythic Tier IV Rune
						},
					},
				[6] = {item = "Exotic Tier IV Rune",
						itemID = 7875,				
						reqItems = {
							    [1] = {item = 7874, count = 2}, -- 2 Legendary Tier IV Rune
						},
					},
				[7] = {item = "Ascending Tier IV Rune",
						itemID = 7876,				
						reqItems = {
							    [1] = {item = 7875, count = 2}, -- 2 Exotic Tier IV Rune
						},
					},
				},
			},
			},
		}
 
function tier4runes.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.RunesTierIV.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft Tier IV runes.")
		return true
		end
end
tier4runes:id(39125)
tier4runes:register()