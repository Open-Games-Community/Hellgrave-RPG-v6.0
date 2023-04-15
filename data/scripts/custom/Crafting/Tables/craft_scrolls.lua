
local scrollsCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Scroll Table", 
	mainMsg = "Welcome to the Scroll Table.\nPlease choose a category:", 
 
	craftTitle = "Scroll Craft: ",
	craftMsg = "Click on Recipe to see the necessary items to craft a Scroll.\n\nHere is a list of all Scrolls available to craft. Scrolls are used to Learn how to craft an item or resources learning recipes: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Job Scrolls", 
			items = {
				[1] = {item = "Skinner's Scroll", 
						itemID = 6120, 
						reqItems = {
								[1] = {item = 10100, count = 25}, -- 25 Large Chunk of Meat
								[2] = {item = 10032, count = 25}, -- 25 Monster Pawn
								[3] = {item = 2152, count = 50}, -- 50 Platinum Coins
							},
						},
 
				[2] = {item = "Woodcutter's Scroll",
						itemID = 8710,		
						reqItems = {
								[1] = {item = 8701, count = 25}, -- 25 Thin Branches
								[2] = {item = 8707, count = 25}, -- 25 Thick Branch
								[3] = {item = 2152, count = 50}, -- 50 Platinum Coins
							},
						},					
 
				[3] = {item = "Alchemist Scroll",
						itemID = 6501,			
						reqItems = {
								[1] = {item = 6105, count = 20}, -- 20 Marsh Plant
								[2] = {item = 6556, count = 20}, -- 20 Whitered Grass
								[3] = {item = 7245, count = 20}, -- 20 Shellbed Leaf
								[4] = {item = 2160, count = 1}, -- 1 Crystal Coin
						},
					},
 
				[4] = {item = "Minner's Scroll",
						itemID = 6507,				
						reqItems = {
							    [1] = {item = 5089, count = 10}, -- 10 Crystal Stone
								[2] = {item = 4851, count = 10}, -- 10 Light Solar Stone
								[3] = {item = 7705, count = 10}, -- 10 Magma Stone
								[4] = {item = 2152, count = 50}, -- 50 Platinum Coins
						},
					},
 
				[5] = {item = "Herbalist Scroll",
						itemID = 6508,				
						reqItems = {
							    [1] = {item = 7243, count = 25}, -- 25 Rivercress Leaf
								[2] = {item = 8694, count = 25}, -- 10 Laurel Plant
								[3] = {item = 2152, count = 50}, -- 50 Platinum Coins
						},
					},
				[6] = {item = "Fisher's Scroll",
					itemID = 6509,				
					reqItems = {
							[1] = {item = 2630, count = 30}, -- 30 Perch
							[2] = {item = 2634, count = 30}, -- 30 Tupe-Halett Pike
							[3] = {item = 2152, count = 50}, -- 50 Platinum Coins
					},
				},
				[7] = {item = "Blacksmith Oven Scroll",
					itemID = 8985,				
					reqItems = {
							[1] = {item = 5802, count = 2}, -- 2 Precious Crystal
							[2] = {item = 6549, count = 2}, -- 2 Amanita Spissa
							[3] = {item = 8699, count = 2}, -- 2 Empty Tree Trunk
							[4] = {item = 10133, count = 2}, -- 2 Golden Dragon Scale
							[5] = {item = 10302, count = 2}, -- 2 Ink Snapper
					},
				},
				[8] = {item = "Legendary Craft Scroll",
					itemID = 9112,				
					reqItems = {
						[1] = {item = 4865, count = 2}, -- 2 Precious Amber Crystal
						[2] = {item = 9674, count = 2}, -- 2 Ganoderma Lucidium
						[3] = {item = 8699, count = 2}, -- 2 Empty Tree Trunk
						[4] = {item = 10133, count = 2}, -- 2 Golden Dragon Scale
						[5] = {item = 2636, count = 2}, -- 2 Ediem Carp
						[6] = {item = 41945, count = 1}, -- Exalted Core
						[7] = {item = 16004, count = 100}, -- 100 Ancestral Crystal
						[8] = {item = 2160, count = 20}, -- 20 Crystals Coins
					},
				},
				[9] = {item = "Artefact Scroll",
					itemID = 9114,				
					reqItems = {
							[1] = {item = 41670, count = 1}, -- 1 Eldritch crystal
							[2] = {item = 16004, count = 25}, -- 10 Ancestral Crystal
							[3] = {item = 42053, count = 1}, -- 1 Feather of Fate
							[4] = {item = 42054, count = 1}, -- 1 Brillant Rose
					},
				},
				[10] = {item = "Forge Scroll",
					itemID = 9115,				
					reqItems = {
							[1] = {item = 41995, count = 100}, -- 100 Dusts
							[2] = {item = 16004, count = 15}, -- 15 Ancestral Crystal
					},
				},
				[11] = {item = "Dragon Egg Craft Scroll",
					itemID = 27403,				
					reqItems = {
							[1] = {item = 27390, count = 1}, -- Rainbow Tear
							[2] = {item = 27344, count = 1}, -- Demon Catcher
							[3] = {item = 27345, count = 1}, -- Relic of Horus
							[4] = {item = 27346, count = 1}, -- Relic of Astaroth
							[5] = {item = 27349, count = 1}, -- Void Chalice
							[6] = {item = 27352, count = 1}, -- Relic of Abaddon
					},
				},
				[12] = {item = "Sigil Craft Scroll",
					itemID = 27404,				
					reqItems = {
							[1] = {item = 27399, count = 2}, -- Ancient Seal Scroll
							[2] = {item = 27353, count = 1}, -- Giant Horn
							[3] = {item = 27418, count = 1}, -- Shadow Lantern
							[4] = {item = 27419, count = 1}, -- Hourglass Time
					},
				},
				},
			},
			[2] = {tiers = "Equipments Scroll", 
			items = {
				[1] = {item = "Rare Equipment Discovery Scroll", 
						itemID = 24334, 
						reqItems = {
								[1] = {item = 42053, count = 1}, -- 1 Feather of fate
								[2] = {item = 41995, count = 7}, -- 7 Dusts
							},
						},
 
				[2] = {item = "Very Rare Equipment Discovery Scroll",
						itemID = 12787,		
						reqItems = {
								[1] = {item = 33973, count = 1}, -- 1 Fragment of Star Stone
								[2] = {item = 16004, count = 7}, -- 7 Ancestral Crystal
								[3] = {item = 41995, count = 10}, -- 10 Dusts
							},
						},					
 
				[3] = {item = "Epic Equipment Discovery Scroll",
						itemID = 12788,			
						reqItems = {
								[1] = {item = 33973, count = 1}, -- 1 Fragment of Star Stone
								[2] = {item = 33975, count = 1}, -- 1 Fragment of Zodiac Stone
								[3] = {item = 41995, count = 20}, -- 20 Dusts
								[4] = {item = 41944, count = 3}, -- 3 Sliver
						},
					},
 
				[4] = {item = "Divine Equipment Discovery Scroll",
						itemID = 12789,				
						reqItems = {
							    [1] = {item = 33974, count = 1}, -- 1 Star Stone
								[2] = {item = 41944, count = 2}, -- 2 Sliver
								[3] = {item = 42082, count = 5}, -- 5 Amber Dusts
								[4] = {item = 37402, count = 4}, -- 4 Amber Crystal Stone
								[5] = {item = 16004, count = 10}, -- 10 Ancestral Crystal
						},
					},
				},
			},
			[3] = {tiers = "Weapon Scrolls", 
			items = {
				[1] = {item = "Rare Weapon Discovery Scroll", 
						itemID = 24335, 
						reqItems = {
							[1] = {item = 42103, count = 1}, -- 1 Endless Token
							[2] = {item = 16004, count = 4}, -- 4 Ancestral Crystal
							},
						},
 
				[2] = {item = "Very Rare Weapon Discovery Scroll",
						itemID = 12790,		
						reqItems = {
								[1] = {item = 42103, count = 2}, -- 2 Endless Token
								[2] = {item = 32410, count = 6}, -- 6 Endless Crystal
							},
						},					
 
				[3] = {item = "Epic Weapon Discovery Scroll",
						itemID = 12791,			
						reqItems = {
								[1] = {item = 42104, count = 2}, -- 2 Amber Token
								[2] = {item = 32410, count = 10}, -- 10 Endless Crystal
								[3] = {item = 42054, count = 2}, -- 2 Brillant Rose
						},
					},
 
				[4] = {item = "Divine Weapon Discovery Scroll",
						itemID = 12792,				
						reqItems = {
							    [1] = {item = 42105, count = 2}, -- 2 Demoniac Token
								[2] = {item = 42104, count = 2}, -- 2 Amber Token
								[3] = {item = 42103, count = 2}, -- 2 Endless Token
								[4] = {item = 42054, count = 5}, -- 5 Brillant Rose
						},
					},
				},
			},
			[4] = {tiers = "Upgrade Scroll & Tier Runes", 
			items = {
				[1] = {item = "Tier I Scroll", 
						itemID = 23461, 
						reqItems = {
								[1] = {item = 16004, count = 3}, -- 3 Ancestral Crystal
								[2] = {item = 41995, count = 20}, -- 20 Dusts
							},
						},
 
				[2] = {item = "Tier II Scroll",
						itemID = 23460,		
						reqItems = {
							[1] = {item = 16004, count = 6}, -- 3 Ancestral Crystal
							[2] = {item = 41995, count = 40}, -- 20 Dusts
							},
						},					
 
				[3] = {item = "Tier III Scroll",
						itemID = 9113,			
						reqItems = {
							[1] = {item = 32410, count = 5}, -- 3 Endless Crystal
							[2] = {item = 42082, count = 45}, -- 20 Amber Dusts
						},
					},
 
				[4] = {item = "Tier IV Scroll",
						itemID = 33543,				
						reqItems = {
							    [1] = {item = 32410, count = 10}, -- 10 Endless Crystal
								[2] = {item = 32446, count = 3}, -- 3 Demoniac Crystal
								[3] = {item = 42082, count = 50}, -- 50 Amber Dust
						},
					},
				[5] = {item = "Tier V Scroll",
					itemID = 24127,				
					reqItems = {
							[1] = {item = 32446, count = 11}, -- 11 Demoniac Crystal
							[2] = {item = 42075, count = 20}, -- 20 Demoniac Dust
							[3] = {item = 42074, count = 4}, -- 4 Demoniac Sliver
					},
				},
				[6] = {item = "Upgrade Scroll Recipe",
					itemID = 24164,				
					reqItems = {
							[1] = {item = 33974, count = 1}, -- 1 Star Stone
							[2] = {item = 33976, count = 1}, -- 1 Zodiac Stone
							[3] = {item = 39178, count = 1}, -- 1 Angel Relic
							[4] = {item = 39179, count = 1}, -- 1 Evil Relic
					},
				},
				},
			},
			},
		}
 
function scrollsCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
		player:sendMainCraftWindow(config)
		return true
end
scrollsCraft:id(15389)
scrollsCraft:register()