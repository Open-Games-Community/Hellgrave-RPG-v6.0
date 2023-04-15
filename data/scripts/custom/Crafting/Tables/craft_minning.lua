
local minningForge = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Miner's Forge", 
	mainMsg = "Welcome to the Miner's Forge Craft.\nPlease choose a category:", 
 
	craftTitle = "Miner's Forge: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n\nHere is a list of all resources that can be crafted from Minner's craft: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Ore Stones", 
			items = {
				[1] = {item = "Magma Ore", 
						itemID = 4871, 
						reqItems = {
								[1] = {item = 7705, count = 3}, -- 3 Magma Stones
							},
						},
 
				[2] = {item = "Crystal Ore",
						itemID = 7733,		
						reqItems = {
								[1] = {item = 5089, count = 3}, -- 3 Crystal Stones
							},
						},					
 
				[3] = {item = "Solar Ore",
						itemID = 4867,			
						reqItems = {
							    [1] = {item = 7736, count = 3}, -- 3 Solar Stones
					},
				},
 
				[4] = {item = "Amethyst Ore",
						itemID = 4866,				
						reqItems = {
							        [1] = {item = 7844, count = 3}, -- 3 Amethyst Stones
						},
					},
 
				[5] = {item = "Amber Ore",
						itemID = 7845,				
						reqItems = {
							        [1] = {item = 4854, count = 3}, -- 3 Amber Stones
						},
					},
 
				[6] = {item = "Lava Ore",
						itemID = 4855,			
						reqItems = {
							        [1] = {item = 7846, count = 3}, -- 3 Lava Stones
						},
					},
				[7] = {item = "Light Solar Ore",
						itemID = 4852,			
						reqItems = {
							        [1] = {item = 4851, count = 3}, -- 3 Light Solar Stones
						},
					},
				[8] = {item = "Malachite Ore",
						itemID = 6087,			
						reqItems = {
							        [1] = {item = 4853, count = 3}, -- 3 Malachite Stones
						},
					},
				[9] = {item = "Sapphir Ore",
						itemID = 14336,			
						reqItems = {
							        [1] = {item = 4872, count = 3}, -- 3 Sapphir Stones
						},
					},
				[10] = {item = "Gold Ore",
						itemID = 4869,			
						reqItems = {
							        [1] = {item = 4858, count = 3}, -- 3 Gold Stones
						},
					},
				},
			},
		},
	}
 
function minningForge.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Minning.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft ores.")
		return true
		end
end
minningForge:id(20744,20745)
minningForge:register()