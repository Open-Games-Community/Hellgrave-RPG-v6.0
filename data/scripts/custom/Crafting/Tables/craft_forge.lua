
local forgeExal = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Exaltation Forge", 
	mainMsg = "Welcome to the Exaltation Forge Craft System.\nPlease choose a category:", 
 
	craftTitle = "Exaltation Forge: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n\nHere is a list of all resources that can be crafted on the Exaltation Forge: ", 
	needItems = "You do not have all the required items to make ",
	system = {
			[1] = {tiers = "Slivers", 
			items = {
				[1] = {item = "Sliver", 
						itemID = 41944, 
						reqItems = {
								[1] = {item = 41995, count = 20}, -- 20 Dusts
							},
						},
				[2] = {item = "Amber Sliver",
						itemID = 42084,			
						reqItems = {
								[1] = {item = 42082, count = 20}, -- 20 Amber Dusts
						},
					},
				[3] = {item = "Demoniac Sliver",
						itemID = 42074,				
						reqItems = {
							    [1] = {item = 42075, count = 20}, -- 20 Demoniac Dusts
						},
					},
				},
			},
			[2] = {tiers = "Cores", 
			items = {
				[1] = {item = "Exalted Core",
						itemID = 41945,			
						reqItems = {
							    [1] = {item = 41944, count = 50}, -- 50 Slivers
						},
					},
				[2] = {item = "Amber Core",
					itemID = 42083,			
					reqItems = {
								[1] = {item = 42084, count = 50}, -- 50 Amber Slivers
					},
				},
				[3] = {item = "Demoniac Core",
						itemID = 42073,			
						reqItems = {
							    [1] = {item = 42074, count = 50}, -- 50 Demoniac Slivers
						},
					},
				},
			},
			[3] = {tiers = "Refined Crystal", 
			items = {
				[1] = {item = "Endless Refined Crystal",
						itemID = 32447,			
						reqItems = {
							    [1] = {item = 16004, count = 100}, -- 100 Ancestral Crystal
						},
					},
				[2] = {item = "Amber Refined Crystal",
					itemID = 13561,			
					reqItems = {
							[1] = {item = 32410, count = 100}, -- 100 Endless Crystal
					},
				},
				[3] = {item = "Demoniac Refined Crystal",
						itemID = 27632,			
						reqItems = {
							    [1] = {item = 25224, count = 100}, -- 100 Demoniac Crystal
						},
					},
				},
			},
			[4] = {tiers = "Essences", 
			items = {
				[1] = {item = "Endless Essence",
						itemID = 40787,			
						reqItems = {
							    [1] = {item = 32447, count = 5}, -- 5 Endless Refined Crystal
						},
					},
				[2] = {item = "Divine Essence",
					itemID = 40744,			
					reqItems = {
								[1] = {item = 13561, count = 5}, -- 5 Amber Refined Crystal
					},
				},
				[3] = {item = "Demoniac Essence",
						itemID = 40807,			
						reqItems = {
							    [1] = {item = 27632, count = 5}, -- 5 Demoniac Refined Crystal
						},
					},
				},
			},
			[5] = {tiers = "Flames", 
			items = {
				[1] = {item = "Endless Flame",
						itemID = 42085,			
						reqItems = {
							    [1] = {item = 40787, count = 10}, -- 10 Endless Essence
								[2] = {item = 41945, count = 10}, -- 10 Exalted Cores
								[3] = {item = 32447, count = 20}, -- 20 Endless Refined Crystal
						},
					},
				[2] = {item = "Amber Flame",
					itemID = 38840,			
					reqItems = {
								[1] = {item = 40744, count = 10}, -- 10 Divine Essence
								[2] = {item = 42083, count = 10}, -- 10 Amber Cores
								[3] = {item = 13561, count = 20}, -- 20 Amber Refined Crystal
					},
				},
				[3] = {item = "Demoniac Flame",
						itemID = 42086,			
						reqItems = {
							    [1] = {item = 40807, count = 10}, -- 10 Demoniac Essence
								[2] = {item = 42073, count = 10}, -- 10 Demoniac Cores
								[3] = {item = 27632, count = 20}, -- 20 Demoniac Refined Crystal
						},
					},
				},
			},
			[6] = {tiers = "Elemental Eggs", 
			items = {
				[1] = {item = "Energy Egg",
						itemID = 12589,			
						reqItems = {
							    [1] = {item = 42081, count = 1}, -- 1 Master Rune
								[2] = {item = 37402, count = 10}, -- 10 Amber Crystal Stone
								[3] = {item = 37592, count = 2}, -- 2 Demoniac Crystal Stone
								[4] = {item = 39178, count = 3}, -- 3 Angel Relic
								[5] = {item = 39179, count = 3}, -- 3 Evil Relic
						},
					},
				[2] = {item = "Earth Egg",
					itemID = 12590,			
					reqItems = {
						[1] = {item = 42081, count = 1}, -- 1 Master Rune
						[2] = {item = 37402, count = 10}, -- 10 Amber Crystal Stone
						[3] = {item = 37592, count = 2}, -- 2 Demoniac Crystal Stone
						[4] = {item = 39178, count = 3}, -- 3 Angel Relic
						[5] = {item = 39179, count = 3}, -- 3 Evil Relic
					},
				},
				[3] = {item = "Ice Egg",
						itemID = 12591,			
						reqItems = {
							[1] = {item = 42081, count = 1}, -- 1 Master Rune
							[2] = {item = 37402, count = 10}, -- 10 Amber Crystal Stone
							[3] = {item = 37592, count = 2}, -- 2 Demoniac Crystal Stone
							[4] = {item = 39178, count = 3}, -- 3 Angel Relic
							[5] = {item = 39179, count = 3}, -- 3 Evil Relic
						},
					},
				[4] = {item = "Holy Egg",
						itemID = 12592,			
						reqItems = {
							[1] = {item = 42081, count = 1}, -- 1 Master Rune
							[2] = {item = 37402, count = 10}, -- 10 Amber Crystal Stone
							[3] = {item = 37592, count = 2}, -- 2 Demoniac Crystal Stone
							[4] = {item = 39178, count = 3}, -- 3 Angel Relic
							[5] = {item = 39179, count = 3}, -- 3 Evil Relic
						},
					},
				[5] = {item = "Fire Egg",
					itemID = 12593,			
					reqItems = {
						[1] = {item = 42081, count = 1}, -- 1 Master Rune
						[2] = {item = 37402, count = 10}, -- 10 Amber Crystal Stone
						[3] = {item = 37592, count = 2}, -- 2 Demoniac Crystal Stone
						[4] = {item = 39178, count = 3}, -- 3 Angel Relic
						[5] = {item = 39179, count = 3}, -- 3 Evil Relic
					},
				},
				[6] = {item = "Divine Egg",
						itemID = 42080,			
						reqItems = {
							    [1] = {item = 40787, count = 1}, -- 1 Endless Flame
								[2] = {item = 42077, count = 5}, -- 5 Elder Amphora
								[3] = {item = 42072, count = 10}, -- 10 Astral Source
								[4] = {item = 41945, count = 50}, -- 50 Exalted Cores
						},
					},
				[7] = {item = "Amber Egg",
					itemID = 42079,			
					reqItems = {
								[1] = {item = 38840, count = 1}, -- 1 Amber Flame
								[2] = {item = 42077, count = 5}, -- 5 Elder Amphora
								[3] = {item = 42072, count = 10}, -- 10 Astral Source
								[4] = {item = 42083, count = 50}, -- 50 Amber Cores
					},
				},
				[8] = {item = "Demoniac Egg",
						itemID = 42076,			
						reqItems = {
							    [1] = {item = 42086, count = 1}, -- 1 Demoniac Flame
								[2] = {item = 42077, count = 5}, -- 5 Elder Amphora
								[3] = {item = 42072, count = 10}, -- 10 Astral Source
								[4] = {item = 42073, count = 50}, -- 50 Demoniac Cores
						},
					},
				},
			},
			[7] = {tiers = "Others", 
			items = {
				[1] = {item = "Ancestral Source",
						itemID = 42071,			
						reqItems = {
							    [1] = {item = 16004, count = 50}, -- 100 Ancestral Crystal
								[2] = {item = 32410, count = 20}, -- 20 Endless Crystal
						},
					},
				[2] = {item = "Ancestral Essence",
					itemID = 12671,			
					reqItems = {
								[1] = {item = 21308, count = 2}, -- 2 Endless Rune
								[2] = {item = 21309, count = 1}, -- 1 Legendary Rune
								[3] = {item = 37419, count = 2}, -- 2 Sparkling Potion
					},
				},
				[3] = {item = "Endless Rune",
						itemID = 21308,			
						reqItems = {
							    [1] = {item = 41670, count = 1}, -- 1 Eldritch Crystal
								[2] = {item = 42103, count = 3}, -- 3 Endless Token
						},
					},
				[4] = {item = "Legendary Rune",
					itemID = 21309,			
					reqItems = {
							[1] = {item = 41670, count = 2}, -- 2 Eldritch Crystal
							[2] = {item = 42103, count = 5}, -- 5 Endless Token
					},
				},
				[5] = {item = "Divine Rune",
						itemID = 25312,			
						reqItems = {
								[1] = {item = 41670, count = 3}, -- 3 Eldritch Crystal
								[2] = {item = 42104, count = 4}, -- 4 Amber Token
						},
					},
				[6] = {item = "Amber Rune",
						itemID = 25316,			
						reqItems = {
								[1] = {item = 41670, count = 5}, -- 5 Eldritch Crystal
								[2] = {item = 42104, count = 7}, -- 7 Amber Token
						},
					},
				[7] = {item = "Demoniac Rune",
					itemID = 25315,			
					reqItems = {
							[1] = {item = 41670, count = 6}, -- 6 Eldritch Crystal
							[2] = {item = 42105, count = 7}, -- 7 Demoniac Token
					},
				},
				[8] = {item = "Luminous Potion",
					itemID = 42032,			
					reqItems = {
							[1] = {item = 42103, count = 5}, -- 5 Endless token
							[2] = {item = 42104, count = 3}, -- 3 Amber Token
							[3] = {item = 42105, count = 2}, -- 2 Demoniac Token
							[4] = {item = 39178, count = 5}, -- 5 Angel Relic
							[5] = {item = 39179, count = 5}, -- 5 Evil Relic
					},
				},
				[9] = {item = "Star Stone",
					itemID = 33974,			
					reqItems = {
							[1] = {item = 33973, count = 4}, -- 4 Fragment of Star Stone
					},
				},
				[10] = {item = "Zodiac Stone",
					itemID = 33976,			
					reqItems = {
							[1] = {item = 33975, count = 4}, -- 4 Fragment of Zodiac stone
					},
				},
				[11] = {item = "Worker Relic",
					itemID = 36551,			
					reqItems = {
							[1] = {item = 36467, count = 1}, -- 1 Fisher's Relic
							[2] = {item = 36468, count = 1}, -- 1 Herbalist's Relic
							[3] = {item = 36469, count = 1}, -- 1 Woodcutter's Relic
							[4] = {item = 36549, count = 1}, -- 1 Skinner's Relic
							[5] = {item = 36550, count = 1}, -- 1 Minner's Relic
					},
				},
				},
			},
			[8] = {tiers = "Transcending Seal's", 
			items = {
				[1] = {item = "Harmonious Prismatic Seal",
						itemID = 36996,			
						reqItems = {
							    [1] = {item = 36990, count = 25}, -- 25 Harmonious Seal
						},
					},
				[2] = {item = "Darkness Prismatic Seal",
					itemID = 36997,			
					reqItems = {
								[1] = {item = 36991, count = 25}, -- 25 Darkness Seal
					},
				},
				[3] = {item = "Sacred Prismatic Seal",
						itemID = 36998,			
						reqItems = {
							    [1] = {item = 36992, count = 25}, -- 25 Sacred Seal
						},
					},
				[4] = {item = "Dimensional Prismatic Seal",
					itemID = 37005,			
					reqItems = {
							[1] = {item = 36993, count = 25}, -- 25 Dimensional Seal
					},
				},
				[5] = {item = "Primal Prismatic Seal",
						itemID = 37006,			
						reqItems = {
								[1] = {item = 36994, count = 25}, -- 25 Primal Seal
						},
					},
				[6] = {item = "Awakening Prismatic Seal",
						itemID = 37007,			
						reqItems = {
								[1] = {item = 3995, count = 25}, -- 25 Awakening Seal
						},
					},
					----
				[7] = {item = "Harmonious Celestial Seal",
						itemID = 37098,			
						reqItems = {
							    [1] = {item = 36996, count = 25}, -- 25 Harmonious Prismatic Seal
						},
					},
				[8] = {item = "Darkness Celestial Seal",
					itemID = 37099,			
					reqItems = {
								[1] = {item = 36997, count = 25}, -- 25 Darkness Prismatic Seal
					},
				},
				[9] = {item = "Sacred Celestial Seal",
						itemID = 37100,			
						reqItems = {
							    [1] = {item = 36998, count = 25}, -- 25 Sacred Prismatic Seal
						},
					},
				[10] = {item = "Dimensional Celestial Seal",
					itemID = 37101,			
					reqItems = {
							[1] = {item = 37005, count = 25}, -- 25 Dimensional Prismatic Seal
					},
				},
				[11] = {item = "Primal Celestial Seal",
						itemID = 37102,			
						reqItems = {
								[1] = {item = 37006, count = 25}, -- 25 Primal Prismatic Seal
						},
					},
				[12] = {item = "Awakening Celestial Seal",
						itemID = 37103,			
						reqItems = {
								[1] = {item = 37007, count = 25}, -- 25 Awakening Prismatic Seal
						},
					},
				},
			},
			[9] = {tiers = "Transcending Protection", 
			items = {
				[1] = {item = "Harmonious Protection Scroll",
						itemID = 25896,			
						reqItems = {
							    [1] = {item = 37098, count = 1}, -- 1 Harmonious Celestial Seal
								[2] = {item = 25892, count = 20}, -- 20 Harmonious Moonstone
								[3] = {item = 25971, count = 1}, -- 1 Harmonious Crystal
						},
					},
				[2] = {item = "Darkness Protection Scroll",
					itemID = 25897,			
					reqItems = {
						[1] = {item = 37099, count = 1}, -- 1 Darkness Celestial Seal
						[2] = {item = 25890, count = 20}, -- 20 Darkness Moonstone
						[3] = {item = 25972, count = 1}, -- 1 Darkness Crystal
					},
				},
				[3] = {item = "Sacred Protection Scroll",
						itemID = 25895,			
						reqItems = {
							[1] = {item = 37100, count = 2}, -- 2 Sacred Celestial Seal
							[2] = {item = 25892, count = 10}, -- 10 Harmonious Moonstone
							[3] = {item = 25890, count = 10}, -- 10 Darkness Moonstone
							[4] = {item = 25971, count = 1}, -- 1 Harmonious Crystal
							[5] = {item = 25972, count = 1}, -- 1 Darkness Crystal
						},
					},
				},
			},
			[10] = {tiers = "Others Chaos", 
			items = {
				[1] = {item = "Star Pendulum",
						itemID = 26287,			
						reqItems = {
							    [1] = {item = 26285, count = 25}, -- Infernal Serpents
								[2] = {item = 26284, count = 10}, -- Imprisoned Pure Essence
								[3] = {item = 26260, count = 10}, -- Turbulent Flask
						},
					},
				[2] = {item = "Lost Compass",
					itemID = 26282,			
					reqItems = {
						[1] = {item = 26252, count = 25}, -- Flames of Power
						[2] = {item = 26258, count = 10}, -- Staff of Lost Souls
						[3] = {item = 26253, count = 10}, -- Ancient Relic Fragment
					},
				},
				[3] = {item = "Primordial Focus of Pure Essence",
						itemID = 26266,			
						reqItems = {
							[1] = {item = 26263, count = 5}, -- Forgotten Feather
							[2] = {item = 26264, count = 5}, -- Guardian's Emblem
							[3] = {item = 26257, count = 30}, -- Imbued Thorn
						},
					},
				[4] = {item = "Primordial Focus of Diabolic Essence",
						itemID = 26267,			
						reqItems = {
							[1] = {item = 26283, count = 5}, -- Mark of Shadows
							[2] = {item = 26261, count = 5}, -- Shadow Chaos Relic
							[3] = {item = 26262, count = 30}, -- Wing of Corruption
						},
					},
				[5] = {item = "Demonic Pure Heart",
						itemID = 26286,				
						reqItems = {
							[1] = {item = 26266, count = 5}, --- Primordial Focus of Pure Essence
							[2] = {item = 26267, count = 5}, --- Primordial Focus of Diabolic Essence
							[3] = {item = 26269, count = 1}, --- Chaos Triumph Badge
							[4] = {item = 26296, count = 10}, --- Infused Orb
							[5] = {item = 26297, count = 10}, --- Celestial Infused Orb
							[6] = {item = 26298, count = 10}, --- Spirit Infused Orb
							[7] = {item = 26299, count = 10}, --- Sulfur Infused Orb
							[8] = {item = 26308, count = 10}, --- Inferno Infused Orb
							[9] = {item = 26300, count = 10}, --- Titan Infused Orb
						},
					},
				[6] = {item = "Arcana Egg",
						itemID = 26309,				
						reqItems = {
							[1] = {item = 26301, count = 10}, --- Flame Egg
							[2] = {item = 26302, count = 10}, --- Rocky Egg
							[3] = {item = 26303, count = 10}, --- Forest Egg
							[4] = {item = 26304, count = 10}, --- Crystal Egg
							[5] = {item = 26305, count = 10}, --- Wind Egg
							[6] = {item = 26306, count = 10}, --- Guardian Egg
							[7] = {item = 26307, count = 10}, --- Angel Egg
						},
					},
					[7] = {item = "Ordnance Wing",
						itemID = 27339,				
						reqItems = {
							[1] = {item = 27454, count = 25}, ---- Fragment Ordnance Wings
						},
					},
					[8] = {item = "Chaos Wing",
						itemID = 27341,				
						reqItems = {
							[1] = {item = 27455, count = 25}, --- Fragment Chaos Wings
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
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft resources on the Exaltation Forge.")
		return true
		end
end
forgeExal:id(41963, 41957, 41965, 41966)
forgeExal:register()