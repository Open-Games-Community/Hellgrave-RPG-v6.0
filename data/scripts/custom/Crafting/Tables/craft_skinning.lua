
local skinningCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Skinning Craft", 
	mainMsg = "Welcome to the Skinning Craft System.\nPlease choose a category:", 
 
	craftTitle = "Skinning Craft: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n\nHere is a list of all resources that can be crafted from Skinning craft: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Resources", 
			items = {
				[1] = {item = "Hardened Skin", 
						itemID = 10104,  
						reqItems = {
								[1] = {item = 10124, count = 10}, -- 2 Dorsal Fur
								[2] = {item = 10137, count = 10}, -- 2 Monster Jaws
								[3] = {item = 10128, count = 10}, -- 1 Clog
							},
						},
 
				[2] = {item = "Monster Skull",
						itemID = 10131,		
						reqItems = {
							[1] = {item = 10136, count = 3}, -- 3 Skull of dragon
							[2] = {item = 10106, count = 3}, -- 3 Giant Monster Scale
							},
						},					
 
				[3] = {item = "Tail Bone",
						itemID = 10129,			
						reqItems = {
							[1] = {item = 10032, count = 10}, -- 10 Monster Pawn
							[2] = {item = 10100, count = 3}, -- 3 Large chunk of meat
					},
				},
 
				[4] = {item = "Monster Horn",
						itemID = 10130,				
						reqItems = {
							        [1] = {item = 10126, count = 3}, -- 3 Fractured Bones
									[2] = {item = 10125, count = 3}, -- 3 Monster Tail
						},
					},
 
				[5] = {item = "Golden Dragon Scale",
						itemID = 10133,				
						reqItems = {
							        [1] = {item = 10134, count = 10}, -- 10 Silver Dragon Scale
									[2] = {item = 10122, count = 1}, -- 1 Rare Leather
						},
					},
 
				[6] = {item = "Dorsal Bone",
						itemID = 10139,			
						reqItems = {
							        [1] = {item = 10109, count = 3}, -- 3 Giant monster ribs
									[2] = {item = 10138, count = 2}, -- 2 Vertebral Column
						},
					},
				},
			},
			[2] = {tiers = "Relic", 
			items = {
				[1] = {item = "Skinner's Relic",
					itemID = 36549,			
					reqItems = {
							[1] = {item = 10104, count = 4}, -- 4 Hardened Skin
							[2] = {item = 10108, count = 10}, -- 10 Monster Coast
							[3] = {item = 10129, count = 5}, -- 5 Tail bone
							[4] = {item = 10130, count = 5}, -- 5 Monster Horn
							[5] = {item = 10131, count = 5}, -- 5 Monster Skull
							[6] = {item = 10133, count = 5}, -- 5 Golden Dragon Scale
							[7] = {item = 10139, count = 5}, -- 5 Dorsal Bone
					},
				},
				},
			},
		},
	}
 
function skinningCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.Skinning.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft fur's and bones.")
		return true
		end
end
skinningCraft:id(32637)
skinningCraft:register()