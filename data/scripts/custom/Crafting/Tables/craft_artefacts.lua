
local scrollsCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end
local config = {
	mainTitleMsg = "Artefact & Relics Table", 
	mainMsg = "Welcome to the Artefact & Relics Table Craft System.\nPlease choose a category:", 
 
	craftTitle = "Artefacts & Relics: ",
	craftMsg = "Click on Recipe to see the necessary items to craft an Artefact or a Relic.\n\nHere is a list of all Artefacts and Relics available to craft: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Artefacts", 
			items = {
				[1] = {item = "Fire Artefact", 
						itemID = 9676, 
						reqItems = {
								[1] = {item = 8613, count = 10}, -- Salvage material 
								[2] = {item = 41995, count = 3}, -- Dust
							},
						},
 
				[2] = {item = "Arch of Riddles",
						itemID = 9677,		
						reqItems = {
								[1] = {item = 41995, count = 5}, -- Dust
								[2] = {item = 8613, count = 28}, -- Salvage material
							},
						},					
 
				[3] = {item = "Karma Arch",
						itemID = 11428,			
						reqItems = {
							[1] = {item = 8613, count = 10}, -- Salvage material 
							[2] = {item = 41995, count = 3}, -- Dust
						},
					},
 
				[4] = {item = "Arch of Destruction",
						itemID = 9693,				
						reqItems = {
							    [1] = {item = 41944, count = 2}, -- Sliver
								[2] = {item = 41995, count = 20}, -- Dust
								[3] = {item = 9698, count = 1}, -- Orb of Misery
								[4] = {item = 9697, count = 1}, -- Orb of Nature
								[5] = {item = 37419, count = 2}, -- sparkling potion
						},
					},
 
				[5] = {item = "Hells Arch",
						itemID = 9694,				
						reqItems = {
							    [1] = {item = 41944, count = 1}, -- Sliver
								[2] = {item = 41995, count = 5}, -- Dust
								[3] = {item = 8613, count = 40}, -- Salvage material
								[4] = {item = 9676, count = 1}, -- Fire Artefact
								[5] = {item = 11428, count = 1}, -- Karma Arch
						},
					},
				[6] = {item = "Damnation Ark",
					itemID = 9696,				
					reqItems = {
							[1] = {item = 41944, count = 1}, -- Sliver
							[2] = {item = 41995, count = 10}, -- Dust
							[3] = {item = 8613, count = 30}, -- Salvage material
					},
				},
				[7] = {item = "Orb of Nature",
					itemID = 9697,				
					reqItems = {
							[1] = {item = 41995, count = 5}, -- Dust
							[2] = {item = 8613, count = 70}, -- Salvage material
					},
				},
				[8] = {item = "Orb of Misery",
					itemID = 9698,				
					reqItems = {
							[1] = {item = 37419, count = 1}, -- Sparkling Potion
							[2] = {item = 41995, count = 13}, -- Dust
					},
				},
				[9] = {item = "Curse of Monolith",
					itemID = 9699,				
					reqItems = {
							[1] = {item = 37419, count = 3}, -- Sparkling Potion
							[2] = {item = 41995, count = 10}, -- Dust
							[3] = {item = 9694, count = 3}, -- Hells Arch
							[4] = {item = 41944, count = 1}, -- Sliver
					},
				},
				[10] = {item = "Dream Catcher",
					itemID = 9735,				
					reqItems = {
							[1] = {item = 37419, count = 1}, -- Sparkling Potion
							[2] = {item = 41995, count = 5}, -- Dust
							[3] = {item = 9693, count = 1}, -- Arch of Destruction
					},
				},
				},
			},
		[2] = {tiers = "Relics", 
			items = {
				[1] = {item = "Supremacy Relic", 
						itemID = 10119, 
						reqItems = {
								[1] = {item = 42082, count = 10}, -- amber dust
								[2] = {item = 42084, count = 5}, -- amber sliver
								[3] = {item = 37419, count = 4}, -- sparkling potion
							},
						},
 
				[2] = {item = "Mirror Relic",
						itemID = 10071,		
						reqItems = {
								[1] = {item = 37419, count = 1}, -- sparkling potion
								[2] = {item = 10074, count = 2}, -- Relic of nature
								[3] = {item = 42082, count = 3}, -- amber dust
							},
						},					
 
				[3] = {item = "Necromancer Relic",
						itemID = 10072,			
						reqItems = {
								[1] = {item = 42082, count = 5}, -- amber dust
								[2] = {item = 42084, count = 1}, -- amber sliver
								[3] = {item = 8613, count = 35}, -- salvage material
						},
					},
 
				[4] = {item = "Relic of Benediction",
						itemID = 10073,				
						reqItems = {
							    [1] = {item = 42082, count = 20}, -- amber dust
								[2] = {item = 42084, count = 1}, -- amber sliver
								[3] = {item = 8613, count = 40}, -- salvage material
						},
					},
 
				[5] = {item = "Relic of Nature",
						itemID = 10074,				
						reqItems = {
							    [1] = {item = 42082, count = 8}, -- amber dust
								[2] = {item = 8613, count = 20}, -- salvage material
						},
					},
				[6] = {item = "Relic of Cosmos",
					itemID = 10075,				
					reqItems = {
						[1] = {item = 42082, count = 5}, -- amber dust
						[2] = {item = 42084, count = 1}, -- amber sliver
						[3] = {item = 10072, count = 1}, -- Necromancer Relic
					},
				},
				[7] = {item = "Relic of the Sky",
					itemID = 10089,				
					reqItems = {
						[1] = {item = 42082, count = 12}, -- amber dust
						[2] = {item = 2088, count = 3}, -- Relic of venom
						[3] = {item = 37419, count = 1}, -- Sparkling potion
					},
				},
				[8] = {item = "Magma Relic",
					itemID = 10090,				
					reqItems = {
						[1] = {item = 10089, count = 2}, -- Relic of the sky
						[2] = {item = 18547, count = 1}, -- Celestial Relic
						[3] = {item = 14350, count = 1}, -- Enigma relic
						[4] = {item = 10092, count = 1}, -- Evil Relic
						[5] = {item = 42082, count = 10}, -- amber dust
					},
				},
				[9] = {item = "Relic of Venom",
					itemID = 2088,				
					reqItems = {
						[1] = {item = 8613, count = 30}, -- Salvage Material
						[2] = {item = 42082, count = 2}, -- amber dust
					},
				},
				[10] = {item = "Enigma Relic",
					itemID = 14350,				
					reqItems = {
						[1] = {item = 42084, count = 2}, -- amber sliver
						[2] = {item = 10073, count = 3}, -- Relic of Benediction
						[3] = {item = 42082, count = 10}, -- amber dust
					},
				},
				[11] = {item = "Evil Relic",
					itemID = 10092,				
					reqItems = {
						[1] = {item = 42084, count = 1}, -- amber sliver
						[2] = {item = 42082, count = 100}, -- amber dust
					},
				},
				[12] = {item = "Celestial Relic",
					itemID = 18547,				
					reqItems = {
						[1] = {item = 42084, count = 4}, -- amber sliver
						[2] = {item = 42082, count = 20}, -- amber dust
						[3] = {item = 37419, count = 3}, -- sparkling potion
					},
				},
				[13] = {item = "Elemental Relic",
					itemID = 10096,				
					reqItems = {
						[1] = {item = 42084, count = 1}, -- amber sliver
						[2] = {item = 42082, count = 5}, -- amber dust
						[3] = {item = 8613, count = 40}, -- salvage material
					},
				},
				[14] = {item = "Water Relic",
					itemID = 10097,				
					reqItems = {
						[1] = {item = 8613, count = 35}, -- salvage material
					},
				},
				[15] = {item = "Divine Relic",
					itemID = 10099,				
					reqItems = {
						[1] = {item = 10090, count = 1}, -- Magma Relic
						[2] = {item = 18547, count = 1}, -- Celestial Relic
						[3] = {item = 10119, count = 2}, -- Supremacy relic
						[4] = {item = 42084, count = 2}, -- amber sliver
						[5] = {item = 42082, count = 20}, -- amber dust
						[6] = {item = 37419, count = 1}, -- sparkling potion
					},
				},
				},
			},
			[3] = {tiers = "Identification Runes & Parchment", 
			items = {
				[1] = {item = "Rare Identification Rune", 
						itemID = 13248, 
						reqItems = {
								[1] = {item = 36038, count = 40}, -- 40 Rare Rune Powder
								[2] = {item = 21251, count = 20}, -- 20 Scroll of Inscriptions
							},
						},
 
				[2] = {item = "Very Rare Identification Rune",
						itemID = 12793,		
						reqItems = {
							[1] = {item = 36040, count = 40}, -- 40 Very Rare Rune Powder
							[2] = {item = 21251, count = 20}, -- 20 Scroll of Inscriptions
							},
						},					
 
				[3] = {item = "Epic Identification Rune",
						itemID = 12794,			
						reqItems = {
							[1] = {item = 36039, count = 40}, -- 40 Epic Rune Powder
							[2] = {item = 21251, count = 20}, -- 20 Scroll of Inscriptions
						},
					},
 
				[4] = {item = "Divine Identification Rune",
						itemID = 12795,				
						reqItems = {
							[1] = {item = 36041, count = 40}, -- 40 Divine Rune Powder
							[2] = {item = 21251, count = 20}, -- 20 Scroll of Inscriptions
						},
					},
				[5] = {item = "Identification Parchment",
					itemID = 12807,				
					reqItems = {
							[1] = {item = 21251, count = 30}, -- 30 Scroll of Inscriptions
							[2] = {item = 21308, count = 1}, -- 1 Endless Rune
					},
				},
				},
			},
			[4] = {tiers = "Blessed Crystals", 
			items = {
				[1] = {item = "Rare Blessed Crystal", 
						itemID = 13290, 
						reqItems = {
								[1] = {item = 13130, count = 75}, -- 75 Rare Blessed Dust
								[2] = {item = 21251, count = 6}, -- 6 Scroll of Inscriptions
							},
						},
 
				[2] = {item = "Very Rare Blessed Crystal",
						itemID = 12796,		
						reqItems = {
							[1] = {item = 12803, count = 75}, -- 75 Very Rare Blessed Dust
							[2] = {item = 21251, count = 10}, -- 10 Scroll of Inscriptions
							},
						},					
 
				[3] = {item = "Epic Blessed Crystal",
						itemID = 12797,			
						reqItems = {
							[1] = {item = 12804, count = 75}, -- 75 Epic Blessed Dust
							[2] = {item = 21251, count = 21}, -- 21 Scroll of Inscriptions
						},
					},
 
				[4] = {item = "Divine Blessed Crystal",
						itemID = 12802,				
						reqItems = {
							[1] = {item = 12805, count = 75}, -- 75 Divine Blessed Dust
							[2] = {item = 21251, count = 50}, -- 50 Scroll of Inscriptions
						},
					},
				},
			},
			[5] = {tiers = "Chaos", 
			items = {
					[1] = {item = "Fragment of Dimensional Chaos", 
						itemID = 36974, 
						reqItems = {
							[1] = {item = 36975, count = 1}, -- First Fragment of Dimensional Chaos
							[2] = {item = 36976, count = 1}, -- Second Fragment of Dimensional Chaos
							[3] = {item = 36977, count = 1}, -- Thirst Fragment of Dimensional Chaos
							},
						},
					[2] = {item = "Wings of Destruction",
					itemID = 41832,				
					reqItems = {
						[1] = {item = 27339, count = 5}, -- Ordnance Wings
						[2] = {item = 27341, count = 5}, -- Chaos Wings
						[3] = {item = 27430, count = 2}, -- Imperial Blue Topaz Tear
						[4] = {item = 27431, count = 2}, -- Imperial Orange Topaz Tear
						},
					},
					[3] = {item = "Relic of Valor",
						itemID = 26268,				
						reqItems = {
							[1] = {item = 26233, count = 30}, --- Divine Star
							[2] = {item = 26234, count = 10}, --- Refined Chaos Demonic Stone
							[3] = {item = 26237, count = 10}, --- Refined Chaos Divine Stone
							[4] = {item = 26254, count = 5}, --- Jewel of Angels
							[5] = {item = 26255, count = 5}, --- Jewel of Evil's
						},
					},
					[4] = {item = "Chaos Triumph Badge",
						itemID = 26269,				
						reqItems = {
							[1] = {item = 26268, count = 3}, --- Relic of Valor
							[2] = {item = 26289, count = 10}, --- Elementium Lizard
							[3] = {item = 26292, count = 15}, --- Amber Shade Crystal - 10 648 000
							[4] = {item = 26295, count = 1}, --- Hell's Pure Crystal
							[5] = {item = 26294, count = 1}, --- Pure Void Crystal
						},
					},
					[5] = {item = "Ancient Seal Scroll",
						itemID = 27399,				
						reqItems = {
							[1] = {item = 27398, count = 2}, --- Pile of Ancient Scrolls
					},
					},
					[6] = {item = "Quantum Tablet Fragment I",
						itemID = 27423,				
						reqItems = {
							[1] = {item = 27420, count = 2}, --- Ancient Spiritual Tablet
					},
					},
					[7] = {item = "Quantum Tablet Fragment II",
						itemID = 27424,				
						reqItems = {
							[1] = {item = 27421, count = 2}, --- Ancient Mystic Tablet
					},
					},
					[8] = {item = "Quantum Tablet Fragment III",
						itemID = 27425,				
						reqItems = {
							[1] = {item = 27422, count = 2}, --- Ancient Void Tablet
					},
					},
					[9] = {item = "Ancient Tablet Scroll",
						itemID = 27401,				
						reqItems = {
							[1] = {item = 27420, count = 1}, --- Ancient Spiritual Tablet
							[2] = {item = 27421, count = 1}, --- Ancient Mystic Tablet
							[3] = {item = 27422, count = 1},  --- Ancient Void Tablet
					},
					},
					[10] = {item = "Quantum Fragment Scroll",
						itemID = 27402,				
						reqItems = {
							[1] = {item = 27423, count = 1}, --- Quantum Tablet Fragment I
							[2] = {item = 27424, count = 1}, ---  Quantum Tablet Fragment II
							[3] = {item = 27425, count = 1},  ---  Quantum Tablet Fragment III
						},
					},
					[11] = {item = "Quantum Scroll",
						itemID = 27400,				
						reqItems = {
							[1] = {item = 27402, count = 1}, --- Quantum Fragment Scroll
							[2] = {item = 27401, count = 1}, --- Ancient Tablet Scroll
						},
					},
					[12] = {item = "Tenebrae Scroll",
						itemID = 27429,				
						reqItems = {
							[1] = {item = 27402, count = 1}, --- Quantum Fragment Scroll
							[2] = {item = 27405, count = 1}, --- Shattered Scroll of Chaos
							[3] = {item = 27401, count = 1},  --- Ancient Tablet Scroll
						},
					},
					[13] = {item = "Shattered Scroll of Scroll",
						itemID = 27405,				
						reqItems = {
							[1] = {item = 27399, count = 3}, --- Ancient Seal Scroll
							[2] = {item = 27401, count = 2}, --- Ancient Tablet Scroll
						},
					},
					},
				},
			[6] = {tiers = "Transcending", 
			items = {
					[1] = {item = "Void Mark", 
						itemID = 25943, 
						reqItems = {
							[1] = {item = 25944, count = 2}, -- 2 Shadow Mark
							},
						},
					[2] = {item = "Ultimate Mark", 
						itemID = 25947, 
						reqItems = {
							[1] = {item = 25943, count = 1}, -- 1 Void Mark
							[2] = {item = 25944, count = 1}, -- 1 Shadow Mark
							},
						},
					[3] = {item = "Titanic Mark", 
						itemID = 25948, 
						reqItems = {
							[1] = {item = 25943, count = 1}, -- 1 Void Mark
							[2] = {item = 25947, count = 1}, -- 1 Ultimate Mark
							},
						},
					[4] = {item = "Wrath Mark", 
						itemID = 25940, 
						reqItems = {
							[1] = {item = 25947, count = 1}, -- 1 Ultimate Mark
							[2] = {item = 25948, count = 1}, -- 1 Titanic Mark
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
scrollsCraft:id(13951)
scrollsCraft:register()