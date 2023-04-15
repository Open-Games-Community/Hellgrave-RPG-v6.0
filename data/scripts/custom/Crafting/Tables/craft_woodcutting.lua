
local lumberCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Woodcutting Craft", 
	mainMsg = "Welcome to the Woodcutting Craft System.\nPlease choose a category:", 
 
	craftTitle = "Woodcutting Craft: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n\nHere is a list of all resources that can be crafted from Woodcutting craft: ",  
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Resources", 
			items = {
				[1] = {item = "Wood Branch", 
						itemID = 14342, 
						reqItems = {
								[1] = {item = 8707, count = 1}, -- 1 Thick Branch
								[2] = {item = 8701, count = 1}, -- 1 Think Branch
							},
						},
 
				[2] = {item = "Big Branch",
						itemID = 8710,		
						reqItems = {
								[1] = {item = 8707, count = 2}, -- 2 Thick Branch
								[2] = {item = 8701, count = 2}, -- 2 Think Branch
							},
						},					
 
				[3] = {item = "Tree Trunk",
						itemID = 14346,			
						reqItems = {
								[1] = {item = 8707, count = 1}, -- 1 Thick Branch
								[2] = {item = 8701, count = 1}, -- 1 Think Branch
								[3] = {item = 8710, count = 1}, -- 1 Big Branch
						},
					},
 
				[4] = {item = "Enormous Tree Trunk",
						itemID = 8977,				
						reqItems = {
							    [1] = {item = 8707, count = 2}, -- 2 Thick Branch
								[2] = {item = 8701, count = 2}, -- 2 Think Branch
								[3] = {item = 14346, count = 2}, -- 2 Tree Trunk
						},
					},
 
				[5] = {item = "Empty Tree Trunk",
						itemID = 8699,				
						reqItems = {
							    [1] = {item = 14346, count = 5}, -- 5 Tree Trunk
								[2] = {item = 8977, count = 5}, -- 5 Enormous Tree Trunk
						},
					},
				},
			},
			[2] = {tiers = "Relic", 
			items = {
				[1] = {item = "Woodcutter's Relic",
					itemID = 36469,			
					reqItems = {
							[1] = {item = 21450, count = 5}, -- 5 Empty Tree Trunk
							[2] = {item = 8707, count = 20}, -- 20 Thick Branch
							[3] = {item = 8701, count = 20}, -- 20 Thin Branches
							[4] = {item = 8710, count = 5}, -- 5 Big Branch
					},
				},
				},
			},
			},
		}
 
function lumberCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.Woodcutting.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft wood.")
		return true
		end
end
lumberCraft:id(32635)
lumberCraft:register()