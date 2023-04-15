
local lumberCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Upgrade Scrolls Craft", 
	mainMsg = "Welcome to the Upgrade Scrolls Craft.\nPlease choose a category:", 
 
	craftTitle = "Upgrade Scrolls Craft: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft an Upgrade scroll.\n\nHere is a list of all scrolls that can be crafted: ",  
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Upgrade Scrolls", 
			items = {
				[1] = {item = "Slot Upgrade Scroll", 
						itemID = 27246, 
						reqItems = {
							[1] = {item = 7868, count = 3}, -- 3 Ascending Tier 1 Rune
							[2] = {item = 7744, count = 3}, -- 3 Ascending Tier 2 Rune
							[3] = {item = 7752, count = 3}, -- 3 Ascending Tier 3 Rune
							[4] = {item = 7876, count = 3}, -- 3 Ascending Tier 4 Rune
							[5] = {item = 7764, count = 3}, -- 3 Ascending Tier 5 Rune
							},
						},
 
				[2] = {item = "Melee Upgrade Scroll",
						itemID = 7854,		
						reqItems = {
								[1] = {item = 7868, count = 1}, -- 1 Ascending Tier 1 Rune
								[2] = {item = 7744, count = 1}, -- 1 Ascending Tier 2 Rune
								[3] = {item = 7752, count = 1}, -- 1 Ascending Tier 3 Rune
								[4] = {item = 7876, count = 1}, -- 1 Ascending Tier 4 Rune
								[5] = {item = 7764, count = 1}, -- 1 Ascending Tier 5 Rune
							},
						},					
 
				[3] = {item = "Melee [2] Upgrade Scroll",
						itemID = 7855,			
						reqItems = {
							[1] = {item = 7868, count = 2}, -- 2 Ascending Tier 1 Rune
							[2] = {item = 7744, count = 2}, -- 2 Ascending Tier 2 Rune
							[3] = {item = 7752, count = 2}, -- 2 Ascending Tier 3 Rune
							[4] = {item = 7876, count = 2}, -- 2 Ascending Tier 4 Rune
							[5] = {item = 7764, count = 2}, -- 2 Ascending Tier 5 Rune
						},
					},
 
				[4] = {item = "Mages Upgrade Scroll",
						itemID = 7856,				
						reqItems = {
							[1] = {item = 7868, count = 1}, -- 1 Ascending Tier 1 Rune
							[2] = {item = 7744, count = 1}, -- 1 Ascending Tier 2 Rune
							[3] = {item = 7752, count = 1}, -- 1 Ascending Tier 3 Rune
							[4] = {item = 7876, count = 1}, -- 1 Ascending Tier 4 Rune
							[5] = {item = 7764, count = 1}, -- 1 Ascending Tier 5 Rune
						},
					},
 
				[5] = {item = "Mages [2] Upgrade Scroll",
						itemID = 7857,				
						reqItems = {
							[1] = {item = 7868, count = 2}, -- 2 Ascending Tier 1 Rune
							[2] = {item = 7744, count = 2}, -- 2 Ascending Tier 2 Rune
							[3] = {item = 7752, count = 2}, -- 2 Ascending Tier 3 Rune
							[4] = {item = 7876, count = 2}, -- 2 Ascending Tier 4 Rune
							[5] = {item = 7764, count = 2}, -- 2 Ascending Tier 5 Rune
						},
					},
				},
			},
			[2] = {tiers = "Remove Upgrades and Slots", 
			items = {
				[1] = {item = "Dovux", 
						itemID = 25996, 
						reqItems = {
							[1] = {item = 7866, count = 1}, -- 1 Legendary Tier 1 Rune
							[2] = {item = 7874, count = 1}, -- 1 Legendary Tier 4 Rune
							[3] = {item = 7882, count = 1}, -- 1 Legendary Tier 2 Rune
							[4] = {item = 7750, count = 1}, -- 1 Legendary Tier 3 Rune
							[5] = {item = 7758, count = 1}, -- 1 Legendary Tier 5 Rune
							},
						},
				},
			},
		[3] = {tiers = "Chaos Level", 
			items = {
				[1] = {item = "Mystic Book of Chaos",
						itemID = 36936,		
						reqItems = {
								[1] = {item = 36986, count = 1}, -- 1 Mystic Essence
								[2] = {item = 16004, count = 5}, -- 5 Ancestral Crystal
							},
						},					
				[2] = {item = "Exotic Book of Chaos",
						itemID = 36937,			
						reqItems = {
							[1] = {item = 36986, count = 1}, -- 1 Mystic Essence
							[2] = {item = 16004, count = 10}, -- 10 Ancestral Crystal
						},
					},
				[3] = {item = "Legacy Book of Chaos",
						itemID = 36938,				
						reqItems = {
							[1] = {item = 36987, count = 1}, -- 1 Abyssal essence
							[2] = {item = 16004, count = 5}, -- 5 Ancestral Crystal
							[3] = {item = 32410, count = 3}, -- 3 Endless Crystal
						},
					},
				[4] = {item = "Abyssal Book of Chaos",
						itemID = 36939,				
						reqItems = {
							[1] = {item = 36988, count = 1}, -- 1 Ascending Essence
							[2] = {item = 32446, count = 2}, -- 2 Demoniac Crystals
						},
					},
				[5] = {item = "Ascending Book of Chaos",
						itemID = 36940,				
						reqItems = {
							[1] = {item = 36989, count = 1}, -- 1 Chaos Essence
							[2] = {item = 32446, count = 3}, -- 3 Demoniac Crystals
					},
				},
			},
		},
		[4] = {tiers = "Chaos Weapon Protection", 
			items = {
				[1] = {item = "Sword Protection Scroll",
						itemID = 24966,				
						reqItems = {
							[1] = {item = 11400, count = 20}, -- 20 Dragon Eggs
							[2] = {item = 27605, count = 1}, -- 1 Chaos Blood
					},
				},
				[2] = {item = "Bow Protection Scroll",
						itemID = 24967,				
						reqItems = {
							[1] = {item = 11400, count = 20}, -- 20 Dragon Eggs
							[2] = {item = 27605, count = 1}, -- 1 Chaos Blood
					},
				},
				[3] = {item = "Axe Protection Scroll",
						itemID = 24968,				
						reqItems = {
							[1] = {item = 11400, count = 20}, -- 20 Dragon Eggs
							[2] = {item = 27605, count = 1}, -- 1 Chaos Blood
					},
				},
				[4] = {item = "Club Protection Scroll",
						itemID = 24969,				
						reqItems = {
							[1] = {item = 11400, count = 20}, -- 20 Dragon Eggs
							[2] = {item = 27605, count = 1}, -- 1 Chaos Blood
					},
				},
				[5] = {item = "Rod Protection Scroll",
						itemID = 24970,				
						reqItems = {
							[1] = {item = 11400, count = 20}, -- 20 Dragon Eggs
							[2] = {item = 27605, count = 1}, -- 1 Chaos Blood
					},
				},
				[6] = {item = "Wand Protection Scroll",
						itemID = 24971,				
						reqItems = {
							[1] = {item = 11400, count = 20}, -- 20 Dragon Eggs
							[2] = {item = 27605, count = 1}, -- 1 Chaos Blood
					},
				},
				[7] = {item = "Crossbow Protection Scroll",
						itemID = 24972,				
						reqItems = {
							[1] = {item = 11400, count = 20}, -- 20 Dragon Eggs
							[2] = {item = 27605, count = 1}, -- 1 Chaos Blood
					},
				},
				},
			},
			[5] = {tiers = "Chaos Upgrade Scrolls", 
			items = {
				[1] = {item = "Abyssal Upgrade Scroll",
						itemID = 25932,		
						reqItems = {
								[1] = {item = 39226, count = 1}, -- 1 Abyssal Crystal Fluid
								[2] = {item = 36986, count = 1}, -- 1 Mystic Essence
								[3] = {item = 36987, count = 1}, -- 1 Abyssal Essence
							},
				[2] = {item = "Ascending Upgrade Scroll",
						itemID = 25952,				
						reqItems = {
								[1] = {item = 39227, count = 1}, -- 1 Ascending Crystal Fluid
								[2] = {item = 36986, count = 1}, -- 1 Mystic Essence
								[3] = {item = 36988, count = 1}, -- 1 Ascending Essence
					},
				},
				[3] = {item = "Chaos Upgrade Scroll",
						itemID = 25955,				
						reqItems = {
								[1] = {item = 39228, count = 1}, -- 1 Chaos Crystal Fluid
								[2] = {item = 36986, count = 1}, -- 1 Mystic Essence
								[3] = {item = 36989, count = 1}, -- 1 Chaos Essence
					},
				},
			},
		},
	},
		[6] = {tiers = "Transcending", 
			items = {
				[1] = {item = "Dimensional Transcending Scroll",
						itemID = 25980,		
						reqItems = {
								[1] = {item = 37101, count = 2}, -- 2 Dimensional Celestial Seal
								[2] = {item = 25893, count = 50}, -- 50 Dimensional Moonstone
								[3] = {item = 25975, count = 8}, -- 8 Dimensional Crystal
							},
						},					
				[2] = {item = "Primal Transcending Scroll",
						itemID = 25983,			
						reqItems = {
								[1] = {item = 37102, count = 2}, -- 2 Primal Celestial Seal
								[2] = {item = 25893, count = 50}, -- 50 Primal Moonstone
								[3] = {item = 25975, count = 8}, -- 8 Primal Crystal
						},
					},
				[3] = {item = "Awakening Transcending Scroll",
						itemID = 25984,				
						reqItems = {
								[1] = {item = 37103, count = 2}, -- 2 Awakening Celestial Seal
								[2] = {item = 25893, count = 50}, -- 50 Awakening Moonstone
								[3] = {item = 25975, count = 8}, -- 8 Awakening Crystal
						},
					},
				[4] = {item = "Upgrade Transcend Scroll",
					itemID = 25956,				
					reqItems = {
							[1] = {item = 25951, count = 5}, -- 5 Parchment of Ancient Writings
							[2] = {item = 25940, count = 5}, -- 5 Wrath Mark
							[3] = {item = 25939, count = 3}, -- 3 Eternity Essence
							[4] = {item = 37103, count = 2}, -- 2 Awakening Celestial Seal
					},
				},
				},
			},
			},
		}
 
function lumberCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.scrollCraft.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft upgrade scrolls.")
		return true
		end
end
lumberCraft:id(36419)
lumberCraft:register()