
local forgeExal = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Blacksmith Forge", 
	mainMsg = "Welcome to the Blacksmith Oven Forge.\nPlease choose a category:", 
 
	craftTitle = "Blacksmith Forge: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new item.\n\nHere is a list of all resources that can be crafted: ", 
	needItems = "You do not have all the required items to make ",
	system = {
		[1] = {tiers = "Gathering Tools", 
			items = {
				[1] = {item = "Amber fishing rod", 
						itemID = 38146, 
						reqItems = {
								[1] = {item = 36551, count = 1}, -- 1 Worker Relic
								[2] = {item = 36467, count = 1}, -- 1 Fisher Relic
								[3] = {item = 42075, count = 10}, -- 10 Demoniac Dust
								[4] = {item = 42074, count = 1}, -- 1 Demoniac Sliver
							},
						},
 
				[2] = {item = "Amber skinning knife",
						itemID = 38145,		
						reqItems = {
								[1] = {item = 36551, count = 1}, -- 1 Worker Relic
								[2] = {item = 36549, count = 1}, -- 1 Skinner's Relic
								[3] = {item = 42075, count = 10}, -- 10 Demoniac Dust
								[4] = {item = 42074, count = 1}, -- 1 Demoniac Sliver
							},
						},					
 
				[3] = {item = "Amber plant cutter",
						itemID = 38144,			
						reqItems = {
								[1] = {item = 36551, count = 1}, -- 1 Worker Relic
								[2] = {item = 36468, count = 1}, -- 1 Herbalist's Relic
								[3] = {item = 42075, count = 10}, -- 10 Demoniac Dust
								[4] = {item = 42074, count = 1}, -- 1 Demoniac Sliver
						},
					},
 
				[4] = {item = "Amber wood cutter",
						itemID = 38143,				
						reqItems = {
								[1] = {item = 36551, count = 1}, -- 1 Worker Relic
								[2] = {item = 36469, count = 1}, -- 1 Woodcutter's Relic
								[3] = {item = 42075, count = 10}, -- 10 Demoniac Dust
								[4] = {item = 42074, count = 1}, -- 1 Demoniac Sliver
						},
					},
 
				[5] = {item = "Amber pickaxe",
						itemID = 38142,				
						reqItems = {
								[1] = {item = 36551, count = 1}, -- 1 Worker Relic
								[2] = {item = 36550, count = 1}, -- 1 Minner's Relic
								[3] = {item = 42075, count = 10}, -- 10 Demoniac Dust
								[4] = {item = 42074, count = 1}, -- 1 Demoniac Sliver
						},
					},
				[6] = {item = "Obliterator pickaxe",
					itemID = 37546,				
					reqItems = {
							[1] = {item = 16004, count = 10}, -- 10 Ancestral Crystals
							[2] = {item = 42051, count = 25}, -- 25 Bar of Bronze
							[3] = {item = 42050, count = 10}, -- 10 Bar of Silver
							[4] = {item = 5802, count = 3}, -- 3 Precious Crystals
							[5] = {item = 33973, count = 1}, -- 1 Fragment of Star Stone
					},
				},
				[7] = {item = "Dragon Gloves",
					itemID = 27456,				
					reqItems = {
							[1] = {item = 27400, count = 1}, -- Quantum Scroll
							[2] = {item = 27405, count = 2}, -- Shattered Scroll
					},
				},
				[8] = {item = "Dreadful Dragon Gloves",
					itemID = 27457,				
					reqItems = {
						[1] = {item = 27400, count = 2}, -- Quantum Scroll
						[2] = {item = 27405, count = 2}, -- Shattered Scroll
						[3] = {item = 27429, count = 1}, --- Tenebrae Scroll
						[4] = {item = 27401, count = 2}, -- Ancient Tablet Scroll
					},
				},
				},
			},
		[2] = {tiers = "Ancestral Priest Set", 
			items = {
				[1] = {item = "Ekatrix Helmet", 
						itemID = 12540, 
						reqItems = {
								[1] = {item = 41945, count = 3}, -- 3 Exalted Cores
								[2] = {item = 32446, count = 50}, -- 50 Demoniac Crystal
								[3] = {item = 13561, count = 1}, -- 1 Amber Refined Crystal
								[4] = {item = 42061, count = 1}, -- 1 Amber Coin
								[5] = {item = 12591, count = 1}, -- Ice Egg
								[6] = {item = 12592, count = 1}, -- Holy Egg
								[7] = {item = 36551, count = 1}, -- 1 Worker Relic
								[8] = {item = 42106, count = 1}, -- 1 Demoniac Bar
							},
						},
 
				[2] = {item = "Ekatrix Rod",
						itemID = 12542,		
						reqItems = {
								[1] = {item = 42083, count = 3}, -- 3 Amber Core
								[2] = {item = 32446, count = 100}, -- 100 Demoniac Crystal
								[3] = {item = 25312, count = 3}, -- 3 Divine Rune
								[4] = {item = 42072, count = 2}, -- 2 Astral Source
								[5] = {item = 42061, count = 1}, -- 1 Amber Coin
								[6] = {item = 36551, count = 1}, -- 1 Worker Relic
								[7] = {item = 42052, count = 5}, -- 5 Bar of Amber
							},
						},					
 
				[3] = {item = "Ekatrix Armor",
						itemID = 12544,			
						reqItems = {
							[1] = {item = 41945, count = 4}, -- 4 Exalted Cores
							[2] = {item = 32446, count = 70}, -- 70 Demoniac Crystal
							[3] = {item = 40787, count = 1}, -- 1 Endless Essence
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12589, count = 2}, -- 2 Energy Egg
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
						},
					},
 
				[4] = {item = "Ekatrix Shield",
						itemID = 12559,				
						reqItems = {
							[1] = {item = 42083, count = 1}, -- 1 Amber Core
							[2] = {item = 32447, count = 5}, -- 5 Endless Refined Crystal
							[3] = {item = 42077, count = 1}, -- 1 Elder Amphora
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 42081, count = 5}, -- 5 Master Rune
							[6] = {item = 25316, count = 1}, -- 1 Amber Rune
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 15515, count = 10}, -- 10 Bar of Gold
						},
					},
 
				[5] = {item = "Ekatrix Legs",
						itemID = 12560,				
						reqItems = {
							[1] = {item = 41945, count = 3}, -- 3 Exalted Cores
							[2] = {item = 13561, count = 3}, -- 3 Amber Refined Crystal
							[3] = {item = 42071, count = 2}, -- 2 Ancestral Source
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12590, count = 1}, -- 1 Earth Egg
							[6] = {item = 12591, count = 1}, -- 1 Ice Egg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42051, count = 50}, -- 50 Bar of Bronze
						},
					},
 
				[6] = {item = "Ekatrix Boots",
						itemID = 12561,			
						reqItems = {
							[1] = {item = 41945, count = 4}, -- 4 Exalted Cores
							[2] = {item = 32446, count = 70}, -- 70 Demoniac Crystal
							[3] = {item = 40787, count = 1}, -- 1 Endless Essence
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12589, count = 1}, -- 1 Energy Egg
							[6] = {item = 12593, count = 1}, -- 1 Fire Egg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42050, count = 20}, -- 1 Bar of Silver
						},
					},
				},
			},
			[3] = {tiers = "Ancestral Mage Set", 
			items = {
				[1] = {item = "Kraken Helmet", 
						itemID = 12570, 
						reqItems = {
							[1] = {item = 41945, count = 3}, -- 3 Exalted Cores
							[2] = {item = 32446, count = 50}, -- 50 Demoniac Crystal
							[3] = {item = 13561, count = 1}, -- 1 Amber Refined Crystal
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12593, count = 1}, -- Fire Egg
							[6] = {item = 12590, count = 1}, -- Earth Egg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42106, count = 1}, -- 1 Demoniac Bar
							},
						},
 
				[2] = {item = "Kraken Armor",
						itemID = 12571,		
						reqItems = {
							[1] = {item = 41945, count = 4}, -- 4 Exalted Cores
							[2] = {item = 32446, count = 70}, -- 70 Demoniac Crystal
							[3] = {item = 40787, count = 1}, -- 1 Endless Essence
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 42072, count = 1}, -- 1 Astral Source
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
							},
						},					
 
				[3] = {item = "Kraken Spellbook",
						itemID = 12572,			
						reqItems = {
							[1] = {item = 42083, count = 1}, -- 1 Amber Core
							[2] = {item = 32447, count = 5}, -- 5 Endless Refined Crystal
							[3] = {item = 42077, count = 1}, -- 1 Elder Amphora
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 42081, count = 5}, -- 5 Master Rune
							[6] = {item = 25316, count = 1}, -- 1 Amber Rune
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 15515, count = 10}, -- 10 Bar of Gold
						},
					},
 
				[4] = {item = "Kraken Wand",
						itemID = 12573,				
						reqItems = {
							[1] = {item = 42083, count = 3}, -- 3 Amber Core
							[2] = {item = 32446, count = 100}, -- 100 Demoniac Crystal
							[3] = {item = 25312, count = 3}, -- 3 Divine Rune
							[4] = {item = 42072, count = 2}, -- 2 Astral Source
							[5] = {item = 42061, count = 1}, -- 1 Amber Coin
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
							[7] = {item = 42052, count = 5}, -- 5 Bar of Amber
						},
					},
 
				[5] = {item = "Kraken Legs",
						itemID = 12574,				
						reqItems = {
							[1] = {item = 41945, count = 3}, -- 3 Exalted Cores
							[2] = {item = 13561, count = 3}, -- 3 Amber Refined Crystal
							[3] = {item = 42071, count = 2}, -- 2 Ancestral Source
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12589, count = 1}, -- 1 Energy Egg
							[6] = {item = 12590, count = 1}, -- 1 Earth Egg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42051, count = 50}, -- 50 Bar of Bronze
						},
					},
 
				[6] = {item = "Kraken Boots",
						itemID = 12575,			
						reqItems = {
							[1] = {item = 41945, count = 4}, -- 4 Exalted Cores
							[2] = {item = 32446, count = 70}, -- 70 Demoniac Crystal
							[3] = {item = 40787, count = 1}, -- 1 Endless Essence
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12589, count = 1}, -- 1 Energy Egg
							[6] = {item = 12593, count = 1}, -- 1 Fire Egg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42050, count = 20}, -- 1 Bar of Silver
						},
					},
				},
			},
			[4] = {tiers = "Ancestral Warrior Set", 
			items = {
				[1] = {item = "Lurker Helmet", 
						itemID = 12565, 
						reqItems = {
							[1] = {item = 41945, count = 3}, -- 3 Exalted Cores
							[2] = {item = 32446, count = 50}, -- 50 Demoniac Crystal
							[3] = {item = 13561, count = 1}, -- 1 Amber Refined Crystal
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 25315, count = 1}, -- 1 Demoniac Rune
							[6] = {item = 21309, count = 1}, -- 1 Legendary Rune
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42106, count = 1}, -- 1 Demoniac Bar
							},
						},
 
				[2] = {item = "Lurker Armor",
						itemID = 12567,		
						reqItems = {
							[1] = {item = 41945, count = 4}, -- 4 Exalted Cores
							[2] = {item = 32446, count = 70}, -- 70 Demoniac Crystal
							[3] = {item = 40787, count = 1}, -- 1 Endless Essence
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12591, count = 1}, -- 1 Ice Egg
							[6] = {item = 12589, count = 1}, -- 1 Energy Eg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							},
						},					
 
				[3] = {item = "Lurker Legs",
						itemID = 12568,			
						reqItems = {
							[1] = {item = 41945, count = 3}, -- 3 Exalted Cores
							[2] = {item = 13561, count = 3}, -- 3 Amber Refined Crystal
							[3] = {item = 42071, count = 2}, -- 2 Ancestral Source
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12593, count = 1}, -- 1 Fire Egg
							[6] = {item = 12590, count = 1}, -- 1 Earth Egg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42051, count = 50}, -- 50 Bar of Bronze
						},
					},
 
				[4] = {item = "Lurker Boots",
						itemID = 12569,				
						reqItems = {
							[1] = {item = 41945, count = 4}, -- 4 Exalted Cores
							[2] = {item = 32446, count = 70}, -- 70 Demoniac Crystal
							[3] = {item = 40787, count = 1}, -- 1 Endless Essence
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 42072, count = 1}, -- 1 Astral Source
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
							[7] = {item = 42050, count = 20}, -- 1 Bar of Silver
						},
					},
 
				[5] = {item = "Lurker Shield",
						itemID = 12566,				
						reqItems = {
							[1] = {item = 42083, count = 1}, -- 1 Amber Core
							[2] = {item = 32447, count = 5}, -- 5 Endless Refined Crystal
							[3] = {item = 42077, count = 1}, -- 1 Elder Amphora
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 42081, count = 5}, -- 5 Master Rune
							[6] = {item = 25316, count = 1}, -- 1 Amber Rune
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 15515, count = 10}, -- 10 Bar of Gold
						},
					},
 
				[6] = {item = "Lurker Mace",
						itemID = 12562,			
						reqItems = {
							[1] = {item = 42083, count = 3}, -- 3 Amber Core
							[2] = {item = 32446, count = 100}, -- 100 Demoniac Crystal
							[3] = {item = 25312, count = 3}, -- 3 Divine Rune
							[4] = {item = 42072, count = 2}, -- 2 Astral Source
							[5] = {item = 42061, count = 1}, -- 1 Amber Coin
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
							[7] = {item = 42052, count = 5}, -- 5 Bar of Amber
						},
					},
				[7] = {item = "Lurker Axe",
						itemID = 12563,			
						reqItems = {
							[1] = {item = 42083, count = 3}, -- 3 Amber Core
							[2] = {item = 32446, count = 100}, -- 100 Demoniac Crystal
							[3] = {item = 25312, count = 3}, -- 3 Divine Rune
							[4] = {item = 42072, count = 2}, -- 2 Astral Source
							[5] = {item = 42061, count = 1}, -- 1 Amber Coin
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
							[7] = {item = 42052, count = 5}, -- 5 Bar of Amber
						},
					},
				[8] = {item = "Lurker Sword",
						itemID = 12564,			
						reqItems = {
							[1] = {item = 42083, count = 3}, -- 3 Amber Core
							[2] = {item = 32446, count = 100}, -- 100 Demoniac Crystal
							[3] = {item = 25312, count = 3}, -- 3 Divine Rune
							[4] = {item = 42072, count = 2}, -- 2 Astral Source
							[5] = {item = 42061, count = 1}, -- 1 Amber Coin
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
							[7] = {item = 42052, count = 5}, -- 5 Bar of Amber
						},
					},
				},
			},
			[5] = {tiers = "Ancestral Hunter Set", 
			items = {
				[1] = {item = "Engraved Helmet", 
						itemID = 12576, 
						reqItems = {
							[1] = {item = 41945, count = 3}, -- 3 Exalted Cores
							[2] = {item = 32446, count = 50}, -- 50 Demoniac Crystal
							[3] = {item = 13561, count = 1}, -- 1 Amber Refined Crystal
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 25315, count = 1}, -- 1 Demoniac Rune
							[6] = {item = 21309, count = 1}, -- 1 Legendary Rune
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42106, count = 1}, -- 1 Demoniac Bar
							},
						},
 
				[2] = {item = "Engraved Armor",
						itemID = 12577,		
						reqItems = {
							[1] = {item = 41945, count = 4}, -- 4 Exalted Cores
							[2] = {item = 32446, count = 70}, -- 70 Demoniac Crystal
							[3] = {item = 40787, count = 1}, -- 1 Endless Essence
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12591, count = 1}, -- 1 Ice Egg
							[6] = {item = 12589, count = 1}, -- 1 Energy Eg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							},
						},					
 
				[3] = {item = "Engraved Legs",
						itemID = 12578,			
						reqItems = {
							[1] = {item = 41945, count = 3}, -- 3 Exalted Cores
							[2] = {item = 13561, count = 3}, -- 3 Amber Refined Crystal
							[3] = {item = 42071, count = 2}, -- 2 Ancestral Source
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 12591, count = 1}, -- 1 Ice Egg
							[6] = {item = 12592, count = 1}, -- 1 Holy Egg
							[7] = {item = 36551, count = 1}, -- 1 Worker Relic
							[8] = {item = 42051, count = 50}, -- 50 Bar of Bronze
						},
					},
 
				[4] = {item = "Engraved Boots",
						itemID = 12579,				
						reqItems = {
							[1] = {item = 41945, count = 4}, -- 4 Exalted Cores
							[2] = {item = 32446, count = 70}, -- 70 Demoniac Crystal
							[3] = {item = 40787, count = 1}, -- 1 Endless Essence
							[4] = {item = 42061, count = 1}, -- 1 Amber Coin
							[5] = {item = 42072, count = 1}, -- 1 Astral Source
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
							[7] = {item = 42050, count = 20}, -- 1 Bar of Silver
						},
					},
 
				[5] = {item = "Engraved Crossbow",
						itemID = 12580,				
						reqItems = {
							[1] = {item = 42083, count = 3}, -- 3 Amber Core
							[2] = {item = 32446, count = 100}, -- 100 Demoniac Crystal
							[3] = {item = 25312, count = 3}, -- 3 Divine Rune
							[4] = {item = 42072, count = 2}, -- 2 Astral Source
							[5] = {item = 42061, count = 1}, -- 1 Amber Coin
							[6] = {item = 36551, count = 1}, -- 1 Worker Relic
							[7] = {item = 42052, count = 5}, -- 5 Bar of Amber
						},
					},
				},
			},
		[6] = {tiers = "Ancestral Rifter Set", 
			items = {
				[1] = {item = "Ancestral Rifter Helmet", 
						itemID = 42067, 
						reqItems = {
								[1] = {item = 36551, count = 2}, -- 2 Worker Relics
								[2] = {item = 12671, count = 1}, -- 1 Ancestral Essence
								[3] = {item = 42073, count = 1}, -- 1 Demoniac Core
								[4] = {item = 27632, count = 1}, -- 1 Demoniac Refined Crystal
								[5] = {item = 40744, count = 1}, -- 1 Divine Essence
								[6] = {item = 42032, count = 2}, -- 2 Luminous Potion
								[7] = {item = 33976, count = 1}, -- 1 Zodiac Stone
							},
						},
 
				[2] = {item = "Ancestral Rifter Armor",
						itemID = 42068,		
						reqItems = {
								[1] = {item = 36551, count = 2}, -- 2 Worker Relics
								[2] = {item = 40744, count = 1}, -- 1 Divine Essence
								[3] = {item = 42073, count = 2}, -- 2 Demoniac Core
								[4] = {item = 42106, count = 15}, -- 15 Demoniac Bars
								[5] = {item = 37592, count = 30}, -- 30 Demoniac Crystal Stones
								[6] = {item = 42072, count = 2}, -- 2 Astral Source
								[7] = {item = 42077, count = 1}, -- 1 Elder Amphora
							},
						},					
 
				[3] = {item = "Ancestral Rifter Legs",
						itemID = 42069,			
						reqItems = {
								[1] = {item = 36551, count = 2}, -- 2 Worker Relics
								[2] = {item = 40744, count = 1}, -- 1 Divine Essence
								[3] = {item = 42073, count = 2}, -- 2 Demoniac Core
								[4] = {item = 33976, count = 2}, -- 2 Zodiac Stones
								[5] = {item = 33973, count = 4}, -- 4 Star Stones
								[6] = {item = 13561, count = 2}, -- 2 Amber refined Crystal
						},
					},
 
				[4] = {item = "Ancestral Rifter Boots",
						itemID = 42070,				
						reqItems = {
								[1] = {item = 36551, count = 2}, -- 2 Worker Relics
								[2] = {item = 42073, count = 1}, -- 1 Demoniac Core
								[3] = {item = 25315, count = 3}, -- 3 Demoniac Runes
								[4] = {item = 42072, count = 2}, -- 2 Astral Source
								[5] = {item = 42071, count = 4}, -- 4 Ancestral Source
								[6] = {item = 25316, count = 2}, -- 2 Amber Runes
						},
					},
 
				[5] = {item = "Ancestral Rifter Shield",
						itemID = 24776,				
						reqItems = {
								[1] = {item = 36551, count = 2}, -- 2 Worker Relics
								[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
								[3] = {item = 42072, count = 2}, -- 2 Astral Source
								[4] = {item = 42032, count = 2}, -- 2 Luminous Potion
								[5] = {item = 42071, count = 6}, -- 6 Ancestral Source
								[6] = {item = 40744, count = 1}, -- 1 Divine Essence$
								[7] = {item = 25315, count = 1}, -- 1 Demoniac Rune
						},
					},
 
				[6] = {item = "Ancestral Rifter Bow",
						itemID = 39185,			
						reqItems = {
								[1] = {item = 36551, count = 2}, -- 2 Worker Relics
								[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
								[3] = {item = 42052, count = 50}, -- 50 Bar of Amber
								[4] = {item = 15515, count = 50}, -- 50 Bar of Gold
								[5] = {item = 42050, count = 50}, -- 50 Bar of Silver
								[6] = {item = 42051, count = 50}, -- 50 Bar of Bronze
								[7] = {item = 42106, count = 50}, -- 50 Demoniac Bar
								[8] = {item = 40744, count = 1}, -- 1 Divine Essence
								[9] = {item = 40807, count = 1}, -- 1 Demoniac Essence
						},
					},
				[7] = {item = "Ancestral Rifter Club",
						itemID = 39187,			
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
							[3] = {item = 42052, count = 50}, -- 50 Bar of Amber
							[4] = {item = 15515, count = 50}, -- 50 Bar of Gold
							[5] = {item = 42050, count = 50}, -- 50 Bar of Silver
							[6] = {item = 42051, count = 50}, -- 50 Bar of Bronze
							[7] = {item = 42106, count = 50}, -- 50 Demoniac Bar
							[8] = {item = 40744, count = 1}, -- 1 Divine Essence
							[9] = {item = 40807, count = 1}, -- 1 Demoniac Essence
						},
					},
				[8] = {item = "Ancestral Rifter Dagger",
						itemID = 24316,			
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
							[3] = {item = 42052, count = 50}, -- 50 Bar of Amber
							[4] = {item = 15515, count = 50}, -- 50 Bar of Gold
							[5] = {item = 42050, count = 50}, -- 50 Bar of Silver
							[6] = {item = 42051, count = 50}, -- 50 Bar of Bronze
							[7] = {item = 42106, count = 50}, -- 50 Demoniac Bar
							[8] = {item = 40744, count = 1}, -- 1 Divine Essence
							[9] = {item = 40807, count = 1}, -- 1 Demoniac Essence
						},
					},
				[9] = {item = "Ancestral Rifter Rod",
						itemID = 24317,			
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
							[3] = {item = 42052, count = 50}, -- 50 Bar of Amber
							[4] = {item = 15515, count = 50}, -- 50 Bar of Gold
							[5] = {item = 42050, count = 50}, -- 50 Bar of Silver
							[6] = {item = 42051, count = 50}, -- 50 Bar of Bronze
							[7] = {item = 42106, count = 50}, -- 50 Demoniac Bar
							[8] = {item = 40744, count = 1}, -- 1 Divine Essence
							[9] = {item = 40807, count = 1}, -- 1 Demoniac Essence
						},
					},
				[10] = {item = "Ancestral Rifter Scythe",
						itemID = 41460,			
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
							[3] = {item = 42052, count = 50}, -- 50 Bar of Amber
							[4] = {item = 15515, count = 50}, -- 50 Bar of Gold
							[5] = {item = 42050, count = 50}, -- 50 Bar of Silver
							[6] = {item = 42051, count = 50}, -- 50 Bar of Bronze
							[7] = {item = 42106, count = 50}, -- 50 Demoniac Bar
							[8] = {item = 40744, count = 1}, -- 1 Divine Essence
							[9] = {item = 40807, count = 1}, -- 1 Demoniac Essence
						},
					},
				},
			},
			[7] = {tiers = "Ancestral Evil Set", 
			items = {
				[1] = {item = "Ancestral Evil Helmet", 
						itemID = 42063, 
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 12671, count = 1}, -- 1 Ancestral Essence
							[3] = {item = 42073, count = 1}, -- 1 Demoniac Core
							[4] = {item = 40787, count = 1}, -- 1 Endless Essence
							[5] = {item = 40744, count = 1}, -- 1 Divine Essence
							[6] = {item = 42032, count = 2}, -- 2 Luminous Potion
							[7] = {item = 33976, count = 1}, -- 1 Zodiac Stone
							},
						},
 
				[2] = {item = "Ancestral Evil Armor",
						itemID = 42064,		
						reqItems = {
								[1] = {item = 36551, count = 2}, -- 2 Worker Relics
								[2] = {item = 40787, count = 2}, -- 2 Endless Essence
								[3] = {item = 42073, count = 2}, -- 2 Demoniac Core
								[4] = {item = 42106, count = 15}, -- 15 Demoniac Bars
								[5] = {item = 37592, count = 40}, -- 40 Demoniac Crystal Stones
								[6] = {item = 42072, count = 2}, -- 2 Astral Source
								[7] = {item = 12671, count = 2}, -- 2 Ancestral Essence
							},
						},					
 
				[3] = {item = "Ancestral Evil Legs",
						itemID = 42065,			
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 40744, count = 1}, -- 1 Divine Essence
							[3] = {item = 42073, count = 2}, -- 2 Demoniac Core
							[4] = {item = 33974, count = 2}, -- 2 Star Stones
							[5] = {item = 12671, count = 1}, -- 1 Ancestral Essence
							[6] = {item = 27632, count = 1}, -- 1 Demoniac refined Crystal
						},
					},
 
				[4] = {item = "Ancestral Evil Boots",
						itemID = 42066,				
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 42073, count = 1}, -- 1 Demoniac Core
							[3] = {item = 25315, count = 3}, -- 3 Demoniac Runes
							[4] = {item = 42072, count = 2}, -- 2 Astral Source
							[5] = {item = 42071, count = 4}, -- 4 Ancestral Source
							[6] = {item = 25316, count = 2}, -- 2 Amber Runes
						},
					},
 
				[5] = {item = "Ancestral Evil Mask",
						itemID = 39189,				
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 12671, count = 1}, -- 1 Ancestral Essence
							[3] = {item = 42073, count = 1}, -- 1 Demoniac Core
							[4] = {item = 27632, count = 1}, -- 1 Demoniac Refined Crystal
							[5] = {item = 40744, count = 1}, -- 1 Divine Essence
							[6] = {item = 42081, count = 4}, -- 4 Master Rune
							[7] = {item = 33974, count = 2}, -- 2 Star Stone
						},
					},
 
				[6] = {item = "Ancestral Evil Bow",
						itemID = 41464,			
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
							[3] = {item = 42052, count = 50}, -- 50 Bar of Amber
							[4] = {item = 15515, count = 50}, -- 50 Bar of Gold
							[5] = {item = 42050, count = 50}, -- 50 Bar of Silver
							[6] = {item = 42051, count = 50}, -- 50 Bar of Bronze
							[7] = {item = 42106, count = 50}, -- 50 Demoniac Bar
							[8] = {item = 40744, count = 1}, -- 1 Divine Essence
							[9] = {item = 40807, count = 1}, -- 1 Demoniac Essence
						},
					},
				[7] = {item = "Ancestral Evil Axe",
						itemID = 41463,			
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
							[3] = {item = 42052, count = 50}, -- 50 Bar of Amber
							[4] = {item = 15515, count = 50}, -- 50 Bar of Gold
							[5] = {item = 42050, count = 50}, -- 50 Bar of Silver
							[6] = {item = 42051, count = 50}, -- 50 Bar of Bronze
							[7] = {item = 42106, count = 50}, -- 50 Demoniac Bar
							[8] = {item = 40744, count = 1}, -- 1 Divine Essence
							[9] = {item = 40807, count = 1}, -- 1 Demoniac Essence
						},
					},
				[8] = {item = "Ancestral Evil Club",
						itemID = 39188,			
						reqItems = {
							[1] = {item = 36551, count = 2}, -- 2 Worker Relics
							[2] = {item = 42073, count = 2}, -- 1 Demoniac Core
							[3] = {item = 42052, count = 50}, -- 50 Bar of Amber
							[4] = {item = 15515, count = 50}, -- 50 Bar of Gold
							[5] = {item = 42050, count = 50}, -- 50 Bar of Silver
							[6] = {item = 42051, count = 50}, -- 50 Bar of Bronze
							[7] = {item = 42106, count = 50}, -- 50 Demoniac Bar
							[8] = {item = 40744, count = 1}, -- 1 Divine Essence
							[9] = {item = 40807, count = 1}, -- 1 Demoniac Essence
						},
					},
				},
			},
			[8] = {tiers = "Rings & Amulets", 
			items = {
				[1] = {item = "Emeraude Amulet",  -- 900k until Sapphire Ring
						itemID = 7492, 
						reqItems = {
								[1] = {item = 42074, count = 3}, -- Demoniac Sliver
								[2] = {item = 21309, count = 1}, -- Legendary Rune
								[3] = {item = 42103, count = 5}, -- Endless Token
								[4] = {item = 37402, count = 5}, -- Amber Crystal Stone
								[5] = {item = 39178, count = 5}, -- Angel Relic
								[6] = {item = 39179, count = 5}, -- Evil Relic 
								[7] = {item = 21308, count = 1}, -- Endless Rune
								[8] = {item = 15515, count = 13}, -- Bar of Gold
							},
						},
 
				[2] = {item = "Emeraude Ring",
						itemID = 7491,		
						reqItems = {
							[1] = {item = 42074, count = 3}, -- Demoniac Sliver
							[2] = {item = 21309, count = 1}, -- Legendary Rune
							[3] = {item = 42103, count = 5}, -- Endless Token
							[4] = {item = 37402, count = 5}, -- Amber Crystal Stone
							[5] = {item = 39178, count = 5}, -- Angel Relic
							[6] = {item = 39179, count = 5}, -- Evil Relic 
							[7] = {item = 21308, count = 1}, -- Endless Rune
							[8] = {item = 42052, count = 4}, -- Bar of Amber
							},
						},					
 
				[3] = {item = "Labradorite Amulet",
						itemID = 8712,			
						reqItems = {
							[1] = {item = 42074, count = 3}, -- Demoniac Sliver
							[2] = {item = 21309, count = 1}, -- Legendary Rune
							[3] = {item = 42103, count = 5}, -- Endless Token
							[4] = {item = 37402, count = 5}, -- Amber Crystal Stone
							[5] = {item = 39178, count = 5}, -- Angel Relic
							[6] = {item = 39179, count = 5}, -- Evil Relic 
							[7] = {item = 21308, count = 1}, -- Endless Rune
							[8] = {item = 42106, count = 2}, -- Demoniac Bar
						},
					},
 
				[4] = {item = "Labradorite Ring",
						itemID = 8713,				
						reqItems = {
							[1] = {item = 42074, count = 3}, -- Demoniac Sliver
							[2] = {item = 21309, count = 1}, -- Legendary Rune
							[3] = {item = 42103, count = 5}, -- Endless Token
							[4] = {item = 37402, count = 5}, -- Amber Crystal Stone
							[5] = {item = 39178, count = 5}, -- Angel Relic
							[6] = {item = 39179, count = 5}, -- Evil Relic 
							[7] = {item = 21308, count = 1}, -- Endless Rune
							[8] = {item = 42050, count = 18}, -- Bar of Silver
						},
					},
 
				[5] = {item = "Sapphire Ring",
						itemID = 8711,				
						reqItems = {
							[1] = {item = 42074, count = 3}, -- Demoniac Sliver
							[2] = {item = 21309, count = 1}, -- Legendary Rune
							[3] = {item = 42103, count = 5}, -- Endless Token
							[4] = {item = 37402, count = 5}, -- Amber Crystal Stone
							[5] = {item = 39178, count = 5}, -- Angel Relic
							[6] = {item = 39179, count = 5}, -- Evil Relic 
							[7] = {item = 21308, count = 1}, -- Endless Rune
							[8] = {item = 42052, count = 4}, -- Bar of Amber
						},
					},
 
				[6] = {item = "Evil Eye Ring",
						itemID = 12600,			
						reqItems = {
							    [1] = {item = 41670, count = 3}, -- Eldritch crystal
								[2] = {item = 21308, count = 1}, -- Endless Rune
								[3] = {item = 32447, count = 1}, -- Endless Refined Crystal
								[4] = {item = 12599, count = 1}, -- Steampunk Ring
						},
					},
				[7] = {item = "Winged Ring",
						itemID = 12597,			
						reqItems = {
							    [1] = {item = 12600, count = 1}, -- Evil Eye Ring
								[2] = {item = 41670, count = 5}, -- Eldritch Crystal
								[3] = {item = 21309, count = 1}, -- Legendary Rune
								[4] = {item = 32446, count = 20}, -- Demoniac Crystal
						},
					},
				[8] = {item = "Epic Ring",
						itemID = 12601,			
						reqItems = {
								[1] = {item = 12597, count = 1}, -- Winged Ring
								[2] = {item = 12600, count = 1}, -- Evil Eye Ring
								[3] = {item = 8711, count = 1}, -- Sapphire Ring
								[4] = {item = 8713, count = 1}, -- Labradorite Ring
								[5] = {item = 7491, count = 1}, -- Emeraude Ring
						},
					},
				},
			},
			[9] = {tiers = "Emblems", 
			items = {
				[1] = {item = "Celestial Emblem", 
						itemID = 10165, 
						reqItems = {
								[1] = {item = 41945, count = 1}, -- Exalted Core
								[2] = {item = 25312, count = 1}, -- Divine rune
								[3] = {item = 42054, count = 5}, -- Brillant Rose
								[4] = {item = 42081, count = 1}, -- Master Rune
								[5] = {item = 41670, count = 2}, -- Eldritch Crystal
							},
						},
 
				[2] = {item = "Emblem of the Cosmos",
						itemID = 10169,		
						reqItems = {
							[1] = {item = 41945, count = 1}, -- Exalted Core
							[2] = {item = 25312, count = 1}, -- Divine rune
							[3] = {item = 42054, count = 5}, -- Brillant Rose
							[4] = {item = 42081, count = 1}, -- Master Rune
							[5] = {item = 41670, count = 2}, -- Eldritch Crystal
							},
						},					
 
				[3] = {item = "Venom Emblem",
						itemID = 10290,			
						reqItems = {
							[1] = {item = 41945, count = 1}, -- Exalted Core
							[2] = {item = 25312, count = 1}, -- Divine rune
							[3] = {item = 42054, count = 5}, -- Brillant Rose
							[4] = {item = 42081, count = 1}, -- Master Rune
							[5] = {item = 41670, count = 2}, -- Eldritch Crystal
						},
					},
 
				[4] = {item = "Division Emblem",
						itemID = 10293,				
						reqItems = {
							[1] = {item = 41945, count = 1}, -- Exalted Core
							[2] = {item = 25312, count = 1}, -- Divine rune
							[3] = {item = 42054, count = 5}, -- Brillant Rose
							[4] = {item = 42081, count = 1}, -- Master Rune
							[5] = {item = 41670, count = 2}, -- Eldritch Crystal
						},
					},
 
				[5] = {item = "Emblem of the People",
						itemID = 10295,				
						reqItems = {
							[1] = {item = 41945, count = 1}, -- Exalted Core
							[2] = {item = 25312, count = 1}, -- Divine rune
							[3] = {item = 42054, count = 5}, -- Brillant Rose
							[4] = {item = 42081, count = 1}, -- Master Rune
							[5] = {item = 41670, count = 2}, -- Eldritch Crystal
						},
					},
 
				[6] = {item = "Leaf Emblem",
						itemID = 10297,			
						reqItems = {
							[1] = {item = 41945, count = 1}, -- Exalted Core
							[2] = {item = 25312, count = 1}, -- Divine rune
							[3] = {item = 42054, count = 5}, -- Brillant Rose
							[4] = {item = 42081, count = 1}, -- Master Rune
							[5] = {item = 41670, count = 2}, -- Eldritch Crystal
						},
					},
				[7] = {item = "Enigmatic Emblem",
						itemID = 10289,			
						reqItems = {
							[1] = {item = 41945, count = 1}, -- Exalted Core
							[2] = {item = 25312, count = 1}, -- Divine rune
							[3] = {item = 42054, count = 5}, -- Brillant Rose
							[4] = {item = 42081, count = 1}, -- Master Rune
							[5] = {item = 41670, count = 2}, -- Eldritch Crystal
						},
					},
				[8] = {item = "Emblem of Magic",
						itemID = 10299,			
						reqItems = {
							[1] = {item = 41945, count = 1}, -- Exalted Core
							[2] = {item = 25316, count = 1}, -- Amber rune
							[3] = {item = 34822, count = 1}, -- Divine Rose
							[4] = {item = 42105, count = 3}, -- Demoniac Token
							[5] = {item = 33974, count = 2}, -- Star Stone
						},
					},
				[9] = {item = "Demoniac Emblem",
						itemID = 10300,			
						reqItems = {
							[1] = {item = 42083, count = 1}, -- Amber Core
							[2] = {item = 25316, count = 1}, -- Amber rune
							[3] = {item = 34822, count = 1}, -- Divine Rose
							[4] = {item = 33976, count = 1}, -- Zodiac Stone
							[5] = {item = 33974, count = 2}, -- Star Stone
						},
					},
				[10] = {item = "Supremacy Emblem",
				itemID = 10296,			
				reqItems = {
					[1] = {item = 42083, count = 1}, -- Amber Core
					[2] = {item = 25316, count = 1}, -- Amber rune
					[3] = {item = 34822, count = 1}, -- Divine Rose
					[4] = {item = 33976, count = 1}, -- Zodiac Stone
					[5] = {item = 33974, count = 2}, -- Star Stone
				},
				},
				[11] = {item = "Elemental Emblem",
						itemID = 10298,			
						reqItems = {
							[1] = {item = 42083, count = 1}, -- Amber Core
							[2] = {item = 25315, count = 1}, -- Demoniac rune
							[3] = {item = 13561, count = 1}, -- Endless Refined Crystal
							[4] = {item = 33976, count = 2}, -- Zodiac Stone
							[5] = {item = 33974, count = 2}, -- Star Stone
							[6] = {item = 42054, count = 4}, -- Brillant Rose
						},
					},
				[12] = {item = "Divine Emblem",
					itemID = 10301,			
					reqItems = {
							[1] = {item = 42073, count = 1}, -- Demoniac Core
							[2] = {item = 25315, count = 1}, -- Demoniac rune
							[3] = {item = 13561, count = 1}, -- Amber Refined Crystal
							[4] = {item = 33974, count = 1}, -- Star Stone
					},
				},
				[13] = {item = "Dragon Emblem",
					itemID = 25888,			
					reqItems = {
							[1] = {item = 10301, count = 1}, -- Divine Emblem
							[2] = {item = 40807, count = 1}, -- Demoniac Essence
							[3] = {item = 36989, count = 20}, -- Chaos Essence
							[4] = {item = 39228, count = 10}, -- Chaos Crystal Fluid
							[5] = {item = 11400, count = 100}, -- Dragon Egg
							[6] = {item = 27605, count = 50}, --- Chaos Blood
							[7] = {item = 25992, count = 50}, --- Arkeron Coins
							[8] = {item = 25931, count = 1}, --- Equipment Mark
							[9] = {item = 40744, count = 1}, --- Divine Essence
					},
				},
				[14] = {item = "Awakening Emblem",
					itemID = 25945,			
					reqItems = {
							[1] = {item = 25888, count = 1}, -- Dragon Emblem
							[2] = {item = 25931, count = 10}, -- Equipment Mark
							[3] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[4] = {item = 25979, count = 20}, -- Awakening Crystal
							[5] = {item = 25940, count = 50}, -- Wrath Mark
							[6] = {item = 37103, count = 100}, -- Awakening Celestial Seal
							[7] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[8] = {item = 27302, count = 1}, -- Chaos Pure Brooch
					},
				},
				},
			},
			[10] = {tiers = "Chaos Set", 
			items = {
				[1] = {item = "Cataclysm Helmet", 
						itemID = 40701, 
						reqItems = {
							[1] = {item = 42080, count = 1}, -- 1 Divine Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25931, count = 20}, -- 20 Equipment Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[10] = {item = 27302, count = 1}, -- Chaos Pure Brooch
							},
						},
 
				[2] = {item = "Cataclysm Armor",
						itemID = 40702,		
						reqItems = {
							[1] = {item = 42079, count = 1}, -- 1 Amber Egg
							[2] = {item = 38840, count = 1}, -- 1 Amber Flame
							[3] = {item = 25931, count = 15}, -- 15 Equipment Mark
							[4] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[5] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[6] = {item = 36551, count = 2}, -- 2 Worker Relic
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
							},
						},					
 
				[3] = {item = "Cataclysm Legs",
						itemID = 40703,			
						reqItems = {
							[1] = {item = 42080, count = 1}, -- 1 Divine Egg
							[2] = {item = 42085, count = 1}, -- 1 Endless Flame
							[3] = {item = 40807, count = 3}, -- 3 Demoniac Essence
							[4] = {item = 25931, count = 15}, -- 15 Equipment Mark
							[5] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[6] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[7] = {item = 36551, count = 2}, -- 2 Worker Relic
							[8] = {item = 36989, count = 150}, -- 150 Chaos Essence
							[9] = {item = 26309, count = 10}, -- 10 Arcana Egg
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
 
				[4] = {item = "Cataclysm Boots",
						itemID = 40704,				
						reqItems = {
							[1] = {item = 42080, count = 1}, -- 1 Divine Egg
							[2] = {item = 25931, count = 5}, -- 5 Equipment Mark
							[3] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[4] = {item = 37103, count = 20}, -- 20 Awakening Celestial Seal
							[5] = {item = 36551, count = 2}, -- 2 Worker Relic
							[6] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[7] = {item = 26309, count = 3}, -- 3 Arcana Egg
							[8] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[9] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
 
				[5] = {item = "Cataclysm Shield",
						itemID = 40705,				
						reqItems = {
							[1] = {item = 42080, count = 1}, -- 1 Divine Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25931, count = 20}, -- 20 Equipment Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[10] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
 
				[6] = {item = "Demacia Helmet",
						itemID = 39264,			
						reqItems = {
							[1] = {item = 42080, count = 1}, -- 1 Divine Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25931, count = 20}, -- 20 Equipment Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[10] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
				[7] = {item = "Demacia Armor",
					itemID = 39265,			
					reqItems = {
							[1] = {item = 42079, count = 1}, -- 1 Amber Egg
							[2] = {item = 38840, count = 1}, -- 1 Amber Flame
							[3] = {item = 25931, count = 15}, -- 15 Equipment Mark
							[4] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[5] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[6] = {item = 36551, count = 2}, -- 2 Worker Relic
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
					},
				},
				[8] = {item = "Demacia Pants",
						itemID = 39266,			
						reqItems = {
							[1] = {item = 42080, count = 1}, -- 1 Divine Egg
							[2] = {item = 42085, count = 1}, -- 1 Endless Flame
							[3] = {item = 40807, count = 3}, -- 3 Demoniac Essence
							[4] = {item = 25931, count = 15}, -- 15 Equipment Mark
							[5] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[6] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[7] = {item = 36551, count = 2}, -- 2 Worker Relic
							[8] = {item = 36989, count = 150}, -- 150 Chaos Essence
							[9] = {item = 26309, count = 10}, -- 10 Arcana Egg
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
				[9] = {item = "Demacia Shoes",
					itemID = 39267,			
					reqItems = {
							[1] = {item = 42080, count = 1}, -- 1 Divine Egg
							[2] = {item = 25931, count = 5}, -- 5 Equipment Mark
							[3] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[4] = {item = 37103, count = 20}, -- 20 Awakening Celestial Seal
							[5] = {item = 36551, count = 2}, -- 2 Worker Relic
							[6] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[7] = {item = 26309, count = 3}, -- 2 Arcana Egg
							[8] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[9] = {item = 27302, count = 1}, -- Chaos Pure Brooch
					},
				},
				[10] = {item = "Demacia Spellbook",
						itemID = 39853,			
						reqItems = {
							[1] = {item = 42080, count = 1}, -- 1 Divine Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25931, count = 20}, -- 20 Equipment Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[10] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
				},
			},
			[11] = {tiers = "Chaos Weapons", 
			items = {
				[1] = {item = "Legacy Fallen Sword", 
						itemID = 29222, 
						reqItems = {
							[1] = {item = 42076, count = 1}, -- 1 Demoniac Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25919, count = 100}, -- 100 Sword Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 42086, count = 1}, -- 1 Demoniac Flame
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
							},
						},
 
				[2] = {item = "Legacy Fallen Axe",
						itemID = 29228,		
						reqItems = {
							[1] = {item = 42076, count = 1}, -- 1 Demoniac Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25920, count = 100}, -- 100 Axe Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 42086, count = 1}, -- 1 Demoniac Flame
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
							},
						},					
 
				[3] = {item = "Legacy Fallen Club",
						itemID = 29234,			
						reqItems = {
							[1] = {item = 42076, count = 1}, -- 1 Demoniac Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25923, count = 100}, -- 100 Hammer Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 42086, count = 1}, -- 1 Demoniac Flame
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
 
				[4] = {item = "Legacy Fallen Bow",
						itemID = 29237,				
						reqItems = {
							[1] = {item = 42076, count = 1}, -- 1 Demoniac Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25924, count = 100}, -- 100 Distance Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 42086, count = 1}, -- 1 Demoniac Flame
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
 
				[5] = {item = "Legacy Fallen Crossbow",
						itemID = 29240,				
						reqItems = {
							[1] = {item = 42076, count = 1}, -- 1 Demoniac Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25924, count = 100}, -- 100 Distance Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 42086, count = 1}, -- 1 Demoniac Flame
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
 
				[6] = {item = "Legacy Fallen Rod",
						itemID = 29246,			
						reqItems = {
							[1] = {item = 42076, count = 1}, -- 1 Demoniac Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25928, count = 100}, -- 100 Rod Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 42086, count = 1}, -- 1 Demoniac Flame
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
						},
					},
				[7] = {item = "Legacy Fallen Wand",
					itemID = 29243,			
					reqItems = {
						[1] = {item = 42076, count = 1}, -- 1 Demoniac Egg
							[2] = {item = 36551, count = 2}, -- 2 Worker Relic
							[3] = {item = 25927, count = 100}, -- 100 Wand Mark
							[4] = {item = 37103, count = 100}, -- 100 Awakening Celestial Seal
							[5] = {item = 25979, count = 100}, -- 100 Awakening Crystal
							[6] = {item = 26286, count = 1}, -- Demonic Pure Heart
							[7] = {item = 36989, count = 100}, -- 100 Chaos Essence
							[8] = {item = 26309, count = 5}, -- 5 Arcana Egg
							[9] = {item = 42086, count = 1}, -- 1 Demoniac Flame
							[10] = {item = 41832, count = 1}, --- 1 Wings of Destruction
							[11] = {item = 27302, count = 1}, -- Chaos Pure Brooch
					},
				},
				},
			},
			},
		}
 
function forgeExal.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    if player:getStorageValue(Storage.Forge.scroll.unlock) == 1 then
		player:sendMainCraftWindow(config)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft items on the Blacksmith Oven's.")
		return true
		end
end
forgeExal:id(42096, 42098)
forgeExal:register()