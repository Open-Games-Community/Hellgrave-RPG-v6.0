
local herbalistCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Alchemy Craft", 
	mainMsg = "Welcome to the Alchemy Craft.\nPlease choose a category:", 
 
	craftTitle = "Alchemy: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a potion.\n\nHere is a list of all resources that can be crafted from Alchemist\'s: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Life Potions", 
			items = {
				[1] = {item = "Elixir Health Potion", 
						itemID = 27189, 
						reqItems = {
								[1] = {item = 7244, count = 1}, -- 1 Tiwstcress Leaf
								[2] = {item = 8267, count = 1}, -- 1 Boletus
							},
						},
 
				[2] = {item = "Reliquary Health Potion",
						itemID = 27190,		
						reqItems = {
								[1] = {item = 6387, count = 1}, -- 1 Hemp Leaves
								[2] = {item = 8694, count = 1}, -- 1 Laurel Plant
							},
						},					
 
				[3] = {item = "Rejuvenation Health Potion",
						itemID = 27192,			
						reqItems = {
							    [1] = {item = 7247, count = 1}, -- 1 Three Leaf Clover
								[2] = {item = 8584, count = 1}, -- 1 Cave Mushroom
								[3] = {item = 7248, count = 1}, -- 1 Laurel Leaf
						},
					},
 
				[4] = {item = "Master Health Potion", 
						itemID = 27203,				
						reqItems = {
							    [1] = {item = 2236, count = 1}, -- 1 cactus leaf
								[2] = {item = 6556, count = 1}, -- 1 Whitered grass
								[3] = {item = 6105, count = 1}, -- 1 Marsh Plant
						},
					},
				},
			},
 
	[2] = {tiers= "Mana Potions", 
			items = {
				[1] = {item = "Elixir Mana Potion",
						itemID = 27176,
						reqItems = {
							    [1] = {item = 7248, count = 1}, -- 1 Laurel Leaf
								[2] = {item = 7243, count = 1}, -- 1 Rivercress Leaf
						},
					},
 
				[2] = {item = "Reliquary Mana Potion", 
						itemID = 27187,		
						reqItems = {
							    [1] = {item = 9675, count = 1}, -- 1 Herbaceous root
								[2] = {item = 8694, count = 1}, -- 1 Laurel Plant
						},
					},						
 
				[3] = {item = "Rejuvenation Mana Potion",
						itemID = 27185,			
						reqItems = {
							    [1] = {item = 7245, count = 1}, -- 1 Shellbed Leaf
								[2] = {item = 8267, count = 1}, -- 1 Boletus
								[3] = {item = 7243, count = 1}, -- 1 Rivercress Leaf
						},
					},
 
				[4] = {item = "Master Mana Potion",
						itemID = 27175,				
						reqItems = {
							    [1] = {item = 6089, count = 1}, -- 1 Kresch Plant
								[2] = {item = 6556, count = 1}, -- 1 Withered grass
						},
					},
				},
			},
			[3] = {tiers= "Spirit Potions", 
			items = {
				[1] = {item = "Elixir Spirit Potion",
						itemID = 27205,
						reqItems = {
							    [1] = {item = 9675, count = 1}, -- 1 Herbaceous Roots
								[2] = {item = 7245, count = 1}, -- 1 Shellbed Leaf
						},
					},
 
				[2] = {item = "Reliquary Spirit Potion", 
						itemID = 27181,		
						reqItems = {
							    [1] = {item = 7247, count = 1}, -- 1 Three Leaf Clover
								[2] = {item = 8267, count = 1}, -- 1 Boletus
						},
					},						
 
				[3] = {item = "Rejuvenation Spirit Potion",
						itemID = 27174,			
						reqItems = {
							    [1] = {item = 7244, count = 1}, -- 1 Twistcress Leaf
								[2] = {item = 8694, count = 5}, -- 1 Laurel Plant
						},
					},
 
				[4] = {item = "Master Spirit Potion",
						itemID = 27177,				
						reqItems = {
							    [1] = {item = 6105, count = 1}, -- Marsh Plant
								[2] = {item = 6556, count = 1}, -- Whitered grass
								[3] = {item = 7247, count = 1}, -- 1 Three Leaf Clover
								[4] = {item = 8694, count = 1}, -- 1 Laurel Plant
						},
					},
				},
			},
			[4] = {tiers= "Enhancement Potions", 
			items = {
				[1] = {item = "Strike Enhancement",
						itemID = 41558,
						reqItems = {
							    [1] = {item = 6089, count = 5}, -- 5 Gynura Leaves 
								[2] = {item = 6549, count = 5}, -- 5 Amanita Spissa 
								[3] = {item = 6090, count = 5}, -- 5 Willow Plant  
						},
					},
 
				[2] = {item = "Strike Damage Enhancement",
						itemID = 41566,		
						reqItems = {
							    [1] = {item = 9117, count = 5}, -- 5 Calocera Viscosa 
								[2] = {item = 7249, count = 5}, -- 5 Divine Plant of the Depths 
								[3] = {item = 7286, count = 5}, -- 5 Amanite 
						},
					},						
 
				[3] = {item = "Sword Enhancement",
						itemID = 41559,			
						reqItems = {
							    [1] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
								[2] = {item = 6548, count = 5}, -- 5 Purple Cantharellus
								[3] = {item = 2236, count = 10}, -- 10 Cactus Leaf
						},
					},
 
				[4] = {item = "Axe Enhancement",
						itemID = 41560,				
						reqItems = {
							[1] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
							[2] = {item = 6548, count = 5}, -- 5 Purple Cantharellus
							[3] = {item = 2236, count = 10}, -- 10 Cactus Leaf
						},
					},
 
				[5] = {item = "Club Enhancement",
						itemID = 41561,				
						reqItems = {
							[1] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
								[2] = {item = 6548, count = 5}, -- 5 Purple Cantharellus
								[3] = {item = 2236, count = 10}, -- 10 Cactus Leaf
						},
					},
				[6] = {item = "Distance Enhancement",
						itemID = 41562,				
						reqItems = {
							[1] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
								[2] = {item = 6548, count = 5}, -- 5 Purple Cantharellus
								[3] = {item = 2236, count = 10}, -- 10 Cactus Leaf
						},
					},
				[7] = {item = "Magic Enhancement",
						itemID = 41563,				
						reqItems = {
							[1] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
							[2] = {item = 6548, count = 5}, -- 5 Purple Cantharellus
							[3] = {item = 2236, count = 10}, -- 10 Cactus Leaf
						},
					},
				[8] = {item = "Shield Enhancement",
						itemID = 41564,				
						reqItems = {
							[1] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
							[2] = {item = 6548, count = 5}, -- 5 Purple Cantharellus
							[3] = {item = 2236, count = 10}, -- 10 Cactus Leaf
						},
					},
				[9] = {item = "Fishing Enhancement",
						itemID = 41565,				
						reqItems = {
								[1] = {item = 9674, count = 2}, -- 2 Ganoderma Lucidium
								[2] = {item = 7244, count = 1}, -- 5 Twistcress Leaf
								[3] = {item = 6557, count = 1}, -- 3 Magic Leaf
					},
				},
				[10] = {item = "Double EXP Potion",
						itemID = 27193,				
						reqItems = {
								[1] = {item = 2636, count = 1}, -- 1 Ediem Carp
								[2] = {item = 2638, count = 5}, -- 5 Ancestral Trout
								[3] = {item = 10615, count = 3}, -- 1 Rare Red Carp
								[4] = {item = 34822, count = 1}, -- 1 Brillant Rose
					},
				},
				[11] = {item = "Elemental Potion",
						itemID = 26251,				
						reqItems = {
								[1] = {item = 26242, count = 3}, -- Enchanted Elementium Bar
								[2] = {item = 26284, count = 20}, -- Turbulent Flask
					},
				},
				},
			},
			[5] = {tiers= "Job & Craft Potions", 
			items = {
				[1] = {item = "Fishing Potion",
						itemID = 27179,
						reqItems = {
							    [1] = {item = 6105, count = 10}, -- 10 Marsh Plant
								[2] = {item = 6550, count = 10}, -- 10 Delphinium
								[3] = {item = 6557, count = 10}, -- 10 Magic Leaf
								[4] = {item = 6551, count = 5}, -- 5 Pilea Leaf
						},
					},
 
				[2] = {item = "Herbalist Potion",
						itemID = 27184,		
						reqItems = {
							[1] = {item = 6105, count = 10}, -- 10 Marsh Plant
							[2] = {item = 6550, count = 10}, -- 10 Delphinium
							[3] = {item = 6557, count = 10}, -- 10 Magic Leaf
							[4] = {item = 6549, count = 5}, -- 5 Amanita Spissa
						},
					},						
 
				[3] = {item = "Skinning Potion",
						itemID = 27188,			
						reqItems = {
							[1] = {item = 6105, count = 10}, -- 10 Marsh Plant
							[2] = {item = 6550, count = 10}, -- 10 Delphinium
							[3] = {item = 6557, count = 10}, -- 10 Magic Leaf
							[4] = {item = 7249, count = 5}, -- 5 Divine plant of the Depths
						},
					},
 
				[4] = {item = "Woodcutting Potion",
						itemID = 27206,				
						reqItems = {
							[1] = {item = 6105, count = 10}, -- 10 Marsh Plant
							[2] = {item = 6550, count = 10}, -- 10 Delphinium
							[3] = {item = 6557, count = 10}, -- 10 Magic Leaf
							[4] = {item = 9674, count = 5}, -- 5 Ganoderma Lucidium
						},
					},
 
				[5] = {item = "Mining Potion",
						itemID = 27210,				
						reqItems = {
							[1] = {item = 6105, count = 10}, -- 10 Marsh Plant
							[2] = {item = 6550, count = 10}, -- 10 Delphinium
							[3] = {item = 6557, count = 10}, -- 10 Magic Leaf
							[4] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
						},
					},
				[6] = {item = "Master Identificator Potion",
						itemID = 27196,				
						reqItems = {
								[1] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
								[2] = {item = 7246, count = 10}, -- 10 Autumn Leaves
								[3] = {item = 6549, count = 5}, -- 5 Amanita Spissa
								[4] = {item = 7245, count = 100}, -- 100 Shellbed Leaf
					},
				},
				[7] = {item = "Divine Identificator Potion",
						itemID = 27197,				
						reqItems = {
							[1] = {item = 7242, count = 4}, -- 4 Enchanted Magic Leaf
							[2] = {item = 6557, count = 8}, -- 8 Magic Leaf
							[3] = {item = 9674, count = 4}, -- 4 Ganoderma Lucidium
							[4] = {item = 6105, count = 75}, -- 75 Marsh Plant
					},
				},
				[8] = {item = "Epic Identificator Potion",
						itemID = 27202,				
						reqItems = {
							[1] = {item = 7242, count = 3}, -- 3 Enchanted Magic Leaf
							[2] = {item = 6547, count = 6}, -- 6 Cantharellus
							[3] = {item = 7249, count = 3}, -- 3 Divine plant of the depths
							[4] = {item = 8694, count = 50}, -- 50 Laurel Plant
					},
				},
				[9] = {item = "Very Rare Identificator Potion",
						itemID = 27199,				
						reqItems = {
							[1] = {item = 7242, count = 2}, -- 2 Enchanted Magic Leaf
							[2] = {item = 7244, count = 4}, -- 4 Twistcress leaf
							[3] = {item = 6551, count = 2}, -- 2 Pilea Leaf
							[4] = {item = 6387, count = 25}, -- 25 Hemp Leaves
					},
				},
				[10] = {item = "Rare Identificator Potion",
						itemID = 27201,				
						reqItems = {
							[1] = {item = 7242, count = 1}, -- 1 Enchanted Magic Leaf
							[2] = {item = 9002, count = 2}, -- 2 Underwater Plant
							[3] = {item = 6106, count = 1}, -- 1 Gynura Leaves
							[4] = {item = 9675, count = 15}, -- 15 Herbaceous Roots
					},
				},
				[11] = {item = "Crafting Potion",
						itemID = 27194,				
						reqItems = {
								[1] = {item = 6557, count = 50}, -- 50 Magic Leaf
								[2] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
					},
				},
				[12] = {item = "Legendary Craft Potion",
						itemID = 27198,				
						reqItems = {
								[1] = {item = 27194, count = 1}, -- 1 Crafting Potion
								[2] = {item = 2636, count = 1}, -- 1 Ediem Carp
					},
				},
				[13] = {item = "Luminous concoction",
						itemID = 42047,				
						reqItems = {
								[1] = {item = 7249, count = 2}, -- 2 Divine Plant of the Depths
								[2] = {item = 2236, count = 10}, -- 10 Cactus Leaf
								[3] = {item = 6557, count = 25}, -- 25 Magic Leaf
					},
				},
				},
			},
			[6] = {tiers= "Skill Potions", 
			items = {
				[1] = {item = "Fist Potion",
						itemID = 27182,				
						reqItems = {
							    [1] = {item = 6106, count = 5}, -- 5 Gynura Leaves
								[2] = {item = 6549, count = 5}, -- 5 Amanita Spissa
								[3] = {item = 6551, count = 5}, -- 5 Pilea Leaf
								[4] = {item = 7249, count = 5}, -- 5 Divine Plant of the Depth
								[5] = {item = 9117, count = 5}, -- 5 Calocera Viscosa
								[6] = {item = 9674, count = 5}, -- 5 Ganoderma Lucidium
								[7] = {item = 2638, count = 1}, -- 1 Ancestral Trout
						},
					},
				[2] = {item = "Club Potion",
						itemID = 27183,				
						reqItems = {
							[1] = {item = 6106, count = 5}, -- 5 Gynura Leaves
							[2] = {item = 6549, count = 5}, -- 5 Amanita Spissa
							[3] = {item = 6551, count = 5}, -- 5 Pilea Leaf
							[4] = {item = 7249, count = 5}, -- 5 Divine Plant of the Depth
							[5] = {item = 9117, count = 5}, -- 5 Calocera Viscosa
							[6] = {item = 9674, count = 5}, -- 5 Ganoderma Lucidium
							[7] = {item = 2638, count = 1}, -- 1 Ancestral Trout
						},
					},
				[3] = {item = "Sword Potion",
						itemID = 27207,				
						reqItems = {
							[1] = {item = 6106, count = 5}, -- 5 Gynura Leaves
							[2] = {item = 6549, count = 5}, -- 5 Amanita Spissa
							[3] = {item = 6551, count = 5}, -- 5 Pilea Leaf
							[4] = {item = 7249, count = 5}, -- 5 Divine Plant of the Depth
							[5] = {item = 9117, count = 5}, -- 5 Calocera Viscosa
							[6] = {item = 9674, count = 5}, -- 5 Ganoderma Lucidium
							[7] = {item = 2638, count = 1}, -- 1 Ancestral Trout
						},
					},
				[4] = {item = "Axe Potion",
						itemID = 27209,				
						reqItems = {
							[1] = {item = 6106, count = 5}, -- 5 Gynura Leaves
							[2] = {item = 6549, count = 5}, -- 5 Amanita Spissa
							[3] = {item = 6551, count = 5}, -- 5 Pilea Leaf
							[4] = {item = 7249, count = 5}, -- 5 Divine Plant of the Depth
							[5] = {item = 9117, count = 5}, -- 5 Calocera Viscosa
							[6] = {item = 9674, count = 5}, -- 5 Ganoderma Lucidium
							[7] = {item = 2638, count = 1}, -- 1 Ancestral Trout
					},
				},
				[5] = {item = "Distance Potion",
						itemID = 27211,				
						reqItems = {
							[1] = {item = 6106, count = 5}, -- 5 Gynura Leaves
							[2] = {item = 6549, count = 5}, -- 5 Amanita Spissa
							[3] = {item = 6551, count = 5}, -- 5 Pilea Leaf
							[4] = {item = 7249, count = 5}, -- 5 Divine Plant of the Depth
							[5] = {item = 9117, count = 5}, -- 5 Calocera Viscosa
							[6] = {item = 9674, count = 5}, -- 5 Ganoderma Lucidium
							[7] = {item = 2638, count = 1}, -- 1 Ancestral Trout
					},
				},
				[6] = {item = "Shield Potion",
						itemID = 27212,				
						reqItems = {
							[1] = {item = 6106, count = 5}, -- 5 Gynura Leaves
							[2] = {item = 6549, count = 5}, -- 5 Amanita Spissa
							[3] = {item = 6551, count = 5}, -- 5 Pilea Leaf
							[4] = {item = 7249, count = 5}, -- 5 Divine Plant of the Depth
							[5] = {item = 9117, count = 5}, -- 5 Calocera Viscosa
							[6] = {item = 9674, count = 5}, -- 5 Ganoderma Lucidium
							[7] = {item = 2638, count = 1}, -- 1 Ancestral Trout
					},
				},
				[7] = {item = "Soul Potion",
						itemID = 27191,				
						reqItems = {
								[1] = {item = 7242, count = 5}, -- 5 Enchanted Magic Leaf
								[2] = {item = 6548, count = 10}, -- 10 Purple Cantharellus
								[3] = {item = 7247, count = 100}, -- 100 Three Leaf Clover
					},
				},
				},
			},
			[7] = {tiers= "Chaos Fluids", 
			items = {
				[1] = {item = "Abyssal Crystal Fluid",
						itemID = 39226,				
						reqItems = {
							    [1] = {item = 39225, count = 50}, -- 50 Fluid Crystal
								[2] = {item = 36986, count = 1}, -- 1 Mystic Essence
						},
					},
				[2] = {item = "Ascending Crystal Fluid",
						itemID = 39227,				
						reqItems = {
							[1] = {item = 39226, count = 1}, -- 1 Abyssal Crystal Fluid
							[2] = {item = 36988, count = 1}, -- 1 Ascending Essence
						},
					},
				[3] = {item = "Chaos Crystal Fluid",
						itemID = 39228,				
						reqItems = {
							[1] = {item = 39227, count = 1}, -- 1 Ascending Crystal Fluid
							[2] = {item = 36989, count = 1}, -- 1 Chaos Essence
						},
					},
				},
			},
			[8] = {tiers= "Transcending", 
			items = {
				[1] = {item = "Void Essence",
						itemID = 25935,				
						reqItems = {
							    [1] = {item = 25936, count = 1}, -- 1 Affliction Essennce
								[2] = {item = 25943, count = 1}, -- 1 Void Mark
						},
					},
				[2] = {item = "Eternity Essence",
						itemID = 25939,				
						reqItems = {
							[1] = {item = 25935, count = 1}, -- 1 Void Essence
							[2] = {item = 25948, count = 1}, -- 1 Titanic Mark
						},
					},
				},
			},
			},
		}
 
function herbalistCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.Alchemist.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft potions.")
		return true
		end
end
herbalistCraft:id(36420, 36421)
herbalistCraft:register()