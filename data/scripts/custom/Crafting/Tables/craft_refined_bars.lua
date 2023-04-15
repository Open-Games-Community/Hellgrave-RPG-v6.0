
local minningForge = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Miner's Foundry", 
	mainMsg = "Welcome to the Miner's Foundry Craft.\nPlease choose a category:", 
 
	craftTitle = "Miner's Foundry: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n\nHere is a list of all resources that can be crafted from Minner's craft: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers= "Precious Crystals", 
			items = {
				[1] = {item = "Precious Magma Crystal",
						itemID = 5937,
						reqItems = {
							    [1] = {item = 4871, count = 5}, -- 5 Magma Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
 
				[2] = {item = "Precious Crystal",
						itemID = 5802,
						reqItems = {
							    [1] = {item = 7733, count = 5}, -- 5 Crystal Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},						
 
				[3] = {item = "Precious Solar Crystal",
						itemID = 5799,
						reqItems = {
							    [1] = {item = 4867, count = 5}, -- 5 Solar Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
 
				[4] = {item = "Precious Amethyst Crystal",
						itemID = 4873,
						reqItems = {
							    [1] = {item = 4866, count = 5}, -- 5 Amethyst Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
 
				[5] = {item = "Precious Amber Crystal",
						itemID = 4865,
						reqItems = {
							    [1] = {item = 7845, count = 5}, -- 5 Amber Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
				[6] = {item = "Precious Lava Crystal",
						itemID = 4870,
						reqItems = {
							    [1] = {item = 4855, count = 5}, -- 5 Lava Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
				[7] = {item = "Precious Light Solar Crystal",
						itemID = 5939,
						reqItems = {
							    [1] = {item = 4852, count = 5}, -- 5 Light Solar Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
				[8] = {item = "Precious Malachite Crystal",
						itemID = 6088,
						reqItems = {
							    [1] = {item = 6087, count = 5}, -- 5 Malachite Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
				[9] = {item = "Precious Sapphir Crystal",
						itemID = 5938,
						reqItems = {
							    [1] = {item = 14336, count = 5}, -- 5 Sapphir Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
				[10] = {item = "Precious Gold Crystal",
						itemID = 4868,
						reqItems = {
							    [1] = {item = 4869, count = 5}, -- 5 Gold Ore
								[2] = {item = 41944, count = 1}, -- 1 Sliver
								[3] = {item = 41995, count = 1}, -- 1 Dust
						},
					},
				},
			},
 
		[2] = {tiers = "Refined Crystals", 
				items = {
				[1] = {item = "Refined Magma Crystal",
						itemID = 10047,
						reqItems = {
							    [1] = {item = 5937, count = 5}, -- 5 Precious Magma Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
 
				[2] = {item = "Refined Solar Crystal",
						itemID = 10048,
						reqItems = {
							    [1] = {item = 5799, count = 5}, -- 5 Precious Solar Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},						
 
				[3] = {item = "Refined Amber Crystal",
						itemID = 10050,
						reqItems = {
							    [1] = {item = 4865, count = 5}, -- 5 Precious Amber Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
 
				[4] = {item = "Refined Crystal",
						itemID = 10061,
						reqItems = {
							    [1] = {item = 5802, count = 5}, -- 5 Precious Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
 
				[5] = {item = "Refined Sapphir Crystal",
						itemID = 10063,
						reqItems = {
							    [1] = {item = 5938, count = 5}, -- 5 Precious Sapphir Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
				[6] = {item = "Refined Gold Crystal",
						itemID = 10064,
						reqItems = {
							    [1] = {item = 4868, count = 5}, -- 5 Precious Gold Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
				[7] = {item = "Refined Lava Crystal",
						itemID = 10066,
						reqItems = {
							    [1] = {item = 4870, count = 5}, -- 5 Precious Lava Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
				[8] = {item = "Refined Amethyst Crystal",
						itemID = 10067,
						reqItems = {
							    [1] = {item = 4873, count = 5}, -- 5 Precious Amethyst Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
				[9] = {item = "Refined Malachite Crystal",
						itemID = 10068,
						reqItems = {
							    [1] = {item = 6088, count = 5}, -- 5 Precious Malachite Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
				[10] = {item = "Refined Light Solar Crystal",
						itemID = 10062,
						reqItems = {
							    [1] = {item = 5939, count = 5}, -- 5 Precious Light Solar Crystal
								[2] = {item = 41944, count = 5}, -- 5 Sliver
								[3] = {item = 41995, count = 5}, -- 5 Dust
						},
					},
				},
			},
		[3] = {tiers= "Bars", 
			items = {
				[1] = {item = "Bar of Bronze",
						itemID = 42051,
						reqItems = {
							    [1] = {item = 7846, count = 10}, -- 10 Lava Stone
						},
					},
 
				[2] = {item = "Bar of Silver",
						itemID = 42050,
						reqItems = {
							    [1] = {item = 7733, count = 5}, -- 5 Crystal Ore
								[2] = {item = 4852, count = 5}, -- 5 Crystal Stone
						},
					},						
 
				[3] = {item = "Bar of Gold",
						itemID = 15515,
						reqItems = {
								[1] = {item = 4869, count = 4}, -- 4 Gold Ore
								[2] = {item = 4858, count = 3}, -- 3 Gold Stone
						},
					},
 
				[4] = {item = "Bar of Amber",
						itemID = 42052,
						reqItems = {
							    [1] = {item = 4865, count = 1}, -- 1 Precious Amber Crystal
								[2] = {item = 7845, count = 5}, -- 5 Amber Ore
						},
					},
				[5] = {item = "Demoniac Bar",
					itemID = 42061,
					reqItems = {
							[1] = {item = 5937, count = 1}, -- 1 Precious Magma Crystal
							[2] = {item = 5799, count = 1}, -- 1 Precious Solar Crystal
							[3] = {item = 4870, count = 1}, -- 1 Precious Lava Crystal
					},
				},
				},
			},
			[4] = {tiers= "Relic", 
			items = {
				[1] = {item = "Minner's Relic",
					itemID = 36550,			
					reqItems = {
							[1] = {item = 5937, count = 1}, -- 1 Precious Magma Crystal
							[2] = {item = 5802, count = 1}, -- 1 Precious Crystal
							[3] = {item = 5799, count = 1}, -- 1 Precious Solar Crystal
							[4] = {item = 4873, count = 1}, -- 1 Precious Amethyst Crystal
							[5] = {item = 4865, count = 1}, -- 1 Precious Amber Crystal
							[6] = {item = 4870, count = 1}, -- 1 Precious Lava Crystal
							[7] = {item = 5939, count = 1}, -- 1 Precious Light Solar Crystal
							[8] = {item = 6088, count = 1}, -- 1 Precious Malachite Crystal
							[9] = {item = 5938, count = 1}, -- 1 Precious Sapphir Crystal
							[10] = {item = 4868, count = 1}, -- 1 Precious Gold Crystal
							
					},
				},
				},
			},
			[5] = {tiers= "Chaos", 
			items = {
				[1] = {item = "Mystic Stone Essence",
						itemID = 36982,				
						reqItems = {
							[1] = {item = 36978, count = 100}, -- 100 Mystic Stone Fragment
					},
				},
				[2] = {item = "Abyssal Stone Essence",
						itemID = 36983,				
						reqItems = {
							[1] = {item = 36979, count = 100}, -- 100 Abyssal Stone Fragment
					},
				},
				[3] = {item = "Ascending Stone Essence",
						itemID = 36984,				
						reqItems = {
							[1] = {item = 36980, count = 100}, -- 100 Ascending Stone Fragment
					},
				},
				[4] = {item = "Chaos Stone Essence",
						itemID = 36985,				
						reqItems = {
							[1] = {item = 36981, count = 100}, -- 100 Chaos Stone Fragment
					},
				},
				[5] = {item = "Mystic Essence",
						itemID = 36986,				
						reqItems = {
							[1] = {item = 36982, count = 10}, -- 10 Mystic Stone Essence
					},
				},
				[6] = {item = "Abyssal Essence",
						itemID = 36987,				
						reqItems = {
							[1] = {item = 36983, count = 10}, -- 10 Abyssal Stone Essence
					},
				},
				[7] = {item = "Ascending Essence",
						itemID = 36988,				
						reqItems = {
							[1] = {item = 36984, count = 10}, -- 10 Ascending Stone Essence
					},
				},
				[8] = {item = "Chaos Essence",
						itemID = 36989,				
						reqItems = {
							[1] = {item = 36985, count = 10}, -- 10 Chaos Stone Essence
					},
				},
				[9] = {item = "Refined Chaos Demonic Stone",
						itemID = 26234,				
						reqItems = {
							[1] = {item = 26236, count = 30}, -- Small Chaos Demonic Stone
							[2] = {item = 26235, count = 10}, -- Great Chaos Demonic Stone
					},
				},
				[10] = {item = "Refined Chaos Divine Stone",
						itemID = 26237,				
						reqItems = {
							[1] = {item = 26239, count = 30}, --  Small Chaos Divine Stone
							[2] = {item = 26238, count = 10}, -- Great Chaos Divine Stone
					},
				},
				[11] = {item = "Enchanted Elementium Bar",
						itemID = 26242,				
						reqItems = {
							[1] = {item = 26240, count = 30}, -- 30 Small Elementium Stone
							[2] = {item = 26241, count = 10}, -- 10 Great Elementium Stone
					},
				},
				[12] = {item = "Elementium Lizard",
						itemID = 26289,				
						reqItems = {
							[1] = {item = 26242, count = 5}, --- 5 Enchanted Elementium bar
					},
				},
				[13] = {item = "Amber Shade Crystal",
						itemID = 26292,				
						reqItems = {
							[1] = {item = 26256, count = 10}, --- 10 Swirling Essence
							[2] = {item = 27432, count = 30}, --- 30 Swirling Crystals
					},
				},
				[14] = {item = "Infused Orb",
						itemID = 26296,				
						reqItems = {
							[1] = {item = 26243, count = 50}, --- Infusion Geode
							[2] = {item = 27877, count = 10}, --- Infusion Eye
							[3] = {item = 26276, count = 5}, --- Infusion Prismatic Crystal
					},
				},
				[15] = {item = "Celestial Infused Orb",
						itemID = 26297,				
						reqItems = {
							[1] = {item = 26244, count = 50}, --- Celestial Geode
							[2] = {item = 26271, count = 10}, --- Celestial Eye
							[3] = {item = 26277, count = 5}, --- Celestial Prismatic Crystal
					},
				},
				[16] = {item = "Spirit Infused Orb",
						itemID = 26298,				
						reqItems = {
							[1] = {item = 26245, count = 50}, --- Spirit Geode
							[2] = {item = 26272, count = 10}, --- Spirit Eye
							[3] = {item = 26278, count = 5}, --- Spirit Prismatic Crystal
					},
				},
				[17] = {item = "Sulfur Infused Orb",
						itemID = 26298,				
						reqItems = {
							[1] = {item = 26246, count = 50}, --- Sulfur Geode
							[2] = {item = 26273, count = 10}, --- Sulfur Eye
							[3] = {item = 26279, count = 5}, --- Sulfur Prismatic Crystal
					},
				},
				[18] = {item = "Inferno Infused Orb",
						itemID = 26308,				
						reqItems = {
							[1] = {item = 23591, count = 50}, --- Inferno Geode
							[2] = {item = 26274, count = 10}, --- Inferno Eye
							[3] = {item = 26280, count = 5}, --- Inferno Prismatic Crystal
					},
				},
				[19] = {item = "Titan Infused Orb",
						itemID = 26300,				
						reqItems = {
							[1] = {item = 26248, count = 50}, --- Titan Geode
							[2] = {item = 26275, count = 10}, --- Titan Eye
							[3] = {item = 26281, count = 5}, --- Titan Prismatic Crystal
					},
				},
				[20] = {item = "Hell's Pure Crystal",
						itemID = 26295,				
						reqItems = {
							[1] = {item = 26290, count = 25}, --- Hellstone Cluster
							[2] = {item = 26293, count = 25}, --- Demonic Crystallized Flower
							[3] = {item = 26287, count = 1}, --- Star Pendulum
					},
				},
				[21] = {item = "Pure Void Crystal",
						itemID = 26294,				
						reqItems = {
							[1] = {item = 26291, count = 25}, --- Nexus Crystal
							[2] = {item = 26288, count = 25}, --- Celestiar Star Shell
							[3] = {item = 26282, count = 1}, --- Lost Compass
					},
				},
				[22] = {item = "Adamas Cut Stone",
						itemID = 27350,				
						reqItems = {
							[1] = {item = 27426, count = 4}, --- Aquamarine Tear
					},
				},
				[23] = {item = "Aquamarine Tear",
						itemID = 27426,				
						reqItems = {
							[1] = {item = 27427, count = 5}, --- Aquamarine Cluster
					},
				},
				[24] = {item = "Pure Diamond",
						itemID = 27393,				
						reqItems = {
							[1] = {item = 27357, count = 2}, --- Despair Potion
							[2] = {item = 27393, count = 1}, --- Carnelian Diamond
					},
				},
				[25] = {item = "Carnelian Diamond",
						itemID = 27393,				
						reqItems = {
							[1] = {item = 27397, count = 5}, --- Sunblast Orb
							[2] = {item = 27428, count = 2}, --- Heraldic Feather
							[3] = {item = 27396, count = 2}, -- Stellar Orb
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
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft bars and gems.")
		return true
		end
end
minningForge:id(39994)
minningForge:register()