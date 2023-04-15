
local herbalistCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Herbalist Craft", 
	mainMsg = "Welcome to the Herbalist Craft.\nPlease choose a category:", 
 
	craftTitle = "Herbalist Crafting: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n\nHere is a list of all resources that can be crafted from Herbalist craft: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Herbs and Mushrooms", 
			items = {
				[1] = {item = "Kresch Plant", 
						itemID = 6089, 
						reqItems = {
								[1] = {item = 6105, count = 2}, -- 2 Marsh Plant
								[2] = {item = 7243, count = 2}, -- 2 Rivercress Leaf
							},
						},
 
				[2] = {item = "Hemp Leaves",
						itemID = 6387,		
						reqItems = {
								[1] = {item = 6556, count = 2}, -- 2 Whitered Grass
								[2] = {item = 7245, count = 2}, -- 2 Shellbed Leaf
							},
						},					
 
				[3] = {item = "Cantharellus",
						itemID = 6547,			
						reqItems = {
							    [1] = {item = 8267, count = 2}, -- 2 Boletus
								[2] = {item = 9675, count = 2}, -- 2 Herbaceous Roots
						},
					},
 
				[4] = {item = "Purple Cantharellus",
						itemID = 6548,				
						reqItems = {
							    [1] = {item = 8267, count = 2}, -- 2 Boletus
								[2] = {item = 8584, count = 2}, -- 2 Cave Mushrooms
						},
					},
 
				[5] = {item = "Delphinium",
						itemID = 6550,				
						reqItems = {
							    [1] = {item = 7247, count = 2}, -- 2 Three Leaf Clover
								[2] = {item = 8694, count = 2}, -- 2 Laurel plant
						},
					},
 
				[6] = {item = "Magic Leaf",
						itemID = 6557,			
						reqItems = {
							    [1] = {item = 7243, count = 1}, -- 1 Rivercress Leaf
								[2] = {item = 7244, count = 1}, -- 1 Twitscress Leaf
								[3] = {item = 7247, count = 1}, -- 1 Three Leaf Clover
						},
					},
				[7] = {item = "Autumn Leaves",
						itemID = 7246,				
						reqItems = {
							    [1] = {item = 9675, count = 2}, -- 2 Herbaceous Roots
								[2] = {item = 6105, count = 2}, -- 2 Marsh Plant
						},
					},
				[8] = {item = "Amanite",
						itemID = 7286,				
						reqItems = {
							    [1] = {item = 8267, count = 2}, -- 2 Boletus
								[2] = {item = 8584, count = 2}, -- 2 Cave Mushroom
						},
					},
				[9] = {item = "Underwater Plant",
						itemID = 9002,				
						reqItems = {
							    [1] = {item = 7248, count = 2}, -- 2 Laurel Leaf
								[2] = {item = 7245, count = 2}, -- 2 Shellbed Leaf
						},
					},
				[10] = {item = "Cactus Leaf",
						itemID = 2236,				
						reqItems = {
							    [1] = {item = 8267, count = 1}, -- 1 Boletus
								[2] = {item = 8694, count = 1}, -- 1 Laurel Plant
								[3] = {item = 7243, count = 1}, -- 1 Rivercress Leaf
						},
					},
				},
			},
 
	[2] = {tiers= "Rare Herbs and Mushrooms", 
			items = {
				[1] = {item = "Willow Plant",
						itemID = 6090,
						reqItems = {
							    [1] = {item = 6387, count = 5}, -- 5 Hemp Leaves
								[2] = {item = 6089, count = 5}, -- 5 Kresch Plant
								[3] = {item = 8694, count = 20}, -- 20 Laurel Plant
						},
					},
 
				[2] = {item = "Gynura Leaves",
						itemID = 6106,		
						reqItems = {
							    [1] = {item = 7246, count = 5}, -- 5 Autumn Leaves
								[2] = {item = 6387, count = 5}, -- 5 Hemp Leaves
								[3] = {item = 7247, count = 20}, -- 20 Three Leaf Clover
						},
					},						
 
				[3] = {item = "Amanita Spissa",
						itemID = 6549,			
						reqItems = {
							    [1] = {item = 6548, count = 5}, -- 5 Purple Cantharellus
								[2] = {item = 7286, count = 5}, -- 5 Amanite
								[3] = {item = 8267, count = 20}, -- 20 Boletus
						},
					},
 
				[4] = {item = "Pilea Leaf",
						itemID = 6551,				
						reqItems = {
							    [1] = {item = 2236, count = 5}, -- 5 Cactus Leaf
								[2] = {item = 6550, count = 5}, -- 5 Delphinium
								[3] = {item = 9675, count = 20}, -- 20 Herbaceous Roots
						},
					},
 
				[5] = {item = "Enchanted Magic Leaf",
						itemID = 7242,				
						reqItems = {
							    [1] = {item = 6557, count = 5}, -- 5 Magic Leaf
								[2] = {item = 6550, count = 5}, -- 5 Delphinium
								[3] = {item = 7244, count = 20}, -- 20 Twistcress Leaf
						},
					},
				[6] = {item = "Divine Plant of the Depths",
						itemID = 7249,				
						reqItems = {
							    [1] = {item = 7246, count = 5}, -- 5 Autumn Leaves
								[2] = {item = 9002, count = 5}, -- 5 Underwater Plant
								[3] = {item = 7243, count = 20}, -- 20 Rivercress Leaf
						},
					},
				[7] = {item = "Calocera Viscosa",
						itemID = 9117,				
						reqItems = {
							    [1] = {item = 6547, count = 5}, -- 5 Cantharellus
								[2] = {item = 7286, count = 5}, -- 5 Amanite
								[3] = {item = 8584, count = 20}, -- 20 Cave Mushroom
						},
					},
				[8] = {item = "Ganoderma Lucidium",
						itemID = 9674,				
						reqItems = {
							    [1] = {item = 6548, count = 5}, -- 5 Cantharellus
								[2] = {item = 6547, count = 5}, -- 5 Purple Cantharellus
								[3] = {item = 8267, count = 20}, -- 20 Boletus
						},
					},
				},
			},
			[3] = {tiers= "Relic", 
			items = {
				[1] = {item = "Herbalist's Relic",
					itemID = 36468,			
					reqItems = {
							[1] = {item = 6090, count = 1}, -- 1 Willow Plant
							[2] = {item = 6106, count = 1}, -- 1 Gynura Leaves
							[3] = {item = 6549, count = 1}, -- 1 Amanita Spissa
							[4] = {item = 6551, count = 1},  -- 1 Pilea Leaf
							[5] = {item = 7242, count = 1}, -- 1 Enchanted Magic Leaf
							[6] = {item = 7249, count = 1}, -- 1 Divine Plant of the Depths
							[7] = {item = 9117, count = 1}, -- 1 Calocera Viscosa
							[8] = {item = 9674, count = 1}, -- 1 Ganoderma Lucidium
					},
				},
				},
			},
			},
		}
 
function herbalistCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.Herbalist.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft herbalist materials.")
		return true
		end
end
herbalistCraft:id(32636)
herbalistCraft:register()