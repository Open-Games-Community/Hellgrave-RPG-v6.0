
local fishingCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end

local config = {
	mainTitleMsg = "Fishing Craft", 
	mainMsg = "Welcome to the Fishing Craft.\nPlease choose a category:", 
 
	craftTitle = "Fishing Craft: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n\nHere is a list of all resources that can be crafted from Fishing craft: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Rare Fish's", 
			items = {
				[1] = {item = "Tiger Fish", 
						itemID = 2635, 
						reqItems = {
								[1] = {item = 2634, count = 3}, -- 3 Tupe Halett
								[2] = {item = 10308, count = 3}, -- 3 Gudgeon
							},
						},
 
				[2] = {item = "Trout",
						itemID = 2639,		
						reqItems = {
							[1] = {item = 2633, count = 3}, -- 3 Lard Bass
							[2] = {item = 10303, count = 3}, -- 3 Muddy Trout
							},
						},					
 
				[3] = {item = "Unique Kralove",
						itemID = 10306,			
						reqItems = {
							[1] = {item = 2632, count = 3}, -- 3 Tench
							[2] = {item = 2634, count = 3}, -- 3 Tupe Halett
					},
				},
 
				[4] = {item = "Kralove",
						itemID = 10307,				
						reqItems = {
							[1] = {item = 2633, count = 3}, -- 3 Lard Bass
							[2] = {item = 10308, count = 3}, -- 3 Gudgeon
						},
					},
 
				[5] = {item = "Shiny Sardine",
						itemID = 10616,				
						reqItems = {
							[1] = {item = 2630, count = 5}, -- 5 Perch
							[2] = {item = 10308, count = 1}, -- 1 Gudgeon
						},
					},
 
				[6] = {item = "Humonkfish",
						itemID = 11100,			
						reqItems = {
							        [1] = {item = 2633, count = 6}, -- 6 Lard Bass
						},
					},
				},
			},
 
	[2] = {tiers= "Very Rare Fish's I", 
			items = {
				[1] = {item = "Ink Snapper",
						itemID = 10302,
						reqItems = {
							    [1] = {item = 10307, count = 2}, -- 2 Kralove
								[2] = {item = 2635, count = 3}, -- 3 Tiger Fish
								[3] = {item = 11100, count = 2}, -- 2 Humonk Fish
						},
					},
 
				[2] = {item = "Grawn",
						itemID = 10304,
						reqItems = {
							    [1] = {item = 10616, count = 2}, -- 2 Shiny Sardine
								[2] = {item = 10306, count = 2}, -- 2 Unique Kralove
								[3] = {item = 2639, count = 3}, -- 3 Trout
						},
					},						
 
				[3] = {item = "Kiye Gudgeon",
						itemID = 10613,
						reqItems = {
							    [1] = {item = 10308, count = 10}, -- 10 Gudgeon
								[2] = {item = 2635, count = 1}, -- 1 Tiger Fish
								[3] = {item = 2639, count = 1}, -- 1 Trout
						},
					},
				},
			},
 
		[3] = {tiers = "Very Rare Fish's II",
				items = {
				[1] = {item = "Purple Seadream",
						itemID = 2629,
						reqItems = {
							    [1] = {item = 10302, count = 1}, -- 1 Ink Snapper
								[2] = {item = 10616, count = 10}, -- 10 Shiny Sardine
								[3] = {item = 2639, count = 10}, -- 10 Trout
								[4] = {item = 2632, count = 30}, -- 30 tench
						},
					},
 
				[2] = {item = "Frozen Icefish",
						itemID = 2631,
						reqItems = {
							    [1] = {item = 10308, count = 100}, -- 100 Gudgeon
								[2] = {item = 10613, count = 3}, -- 3 Kiye Gudgeon
						},
					},						
 
				[3] = {item = "Igloo Fish",
						itemID = 2637,
						reqItems = {
							    [1] = {item = 10304, count = 2}, -- 2 Grawn
								[2] = {item = 10306, count = 4}, -- 4 Unique Kralove
								[3] = {item = 2633, count = 45}, -- 45 Lard Bass
						},
					},
 
				[4] = {item = "Contest Snapper",
						itemID = 10614,
						reqItems = {
							    [1] = {item = 10302, count = 1}, -- 1 Ink Snapper
								[2] = {item = 10304, count = 1}, -- 1 Grawn
								[3] = {item = 10307, count = 5}, -- 5 Kralove
								[4] = {item = 2634, count = 20}, -- 20 Tupe Halett
						},
					},
				},
			},
		[4] = {tiers= "Very Rare Fish's III", 
			items = {
				[1] = {item = "Ediem Carp",
						itemID = 2636,
						reqItems = {
							[1] = {item = 10615, count = 1}, -- 1 Rare Red Carp
							[2] = {item = 2634, count = 150}, -- 150 Tupe Halett
						},
					},
 
				[2] = {item = "Ancestral Trout",
						itemID = 2638,
						reqItems = {
							[1] = {item = 10303, count = 100}, -- 100 Muddy Trout
							[2] = {item = 2639, count = 25}, -- 25 Trout
							[3] = {item = 10304, count = 4}, -- 4 Grawn
							[4] = {item = 2629, count = 1}, -- 1 Purple Sea 
						},
					},						
 
				[3] = {item = "Rare Red Carp",
						itemID = 10615,
						reqItems = {
							[1] = {item = 10614, count = 2}, -- 2 Contest Snapper
							[2] = {item = 10302, count = 15}, -- 15 Ink Snapper
							[3] = {item = 2634, count = 30}, -- 30 Tupe Halett
							[4] = {item = 2635, count = 2}, -- 2 Tiger Fish
						},
					},
				},
			},
			[5] = {tiers= "Relic", 
			items = {
				[1] = {item = "Fisher's Relic",
					itemID = 36467,			
					reqItems = {
							[1] = {item = 10302, count = 1}, -- 1 Ink Snapper
							[2] = {item = 2629, count = 1}, -- Purple Sea Bream
							[3] = {item = 2631, count = 1}, -- 1 Frozen Ice Fish
							[4] = {item = 2637, count = 1}, -- Igloo Fish
							[5] = {item = 10304, count = 1}, -- 1 Grawn
							[6] = {item = 10614, count = 1}, -- 1 Contest Snapper
					},
				},
				},
			},
		},
	}
 
function fishingCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Fishing.scroll.unlock) == 1 then
    player:sendMainCraftWindow(config)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft fishing materials.")
    return true
	end
end
fishingCraft:id(3977)
fishingCraft:register()