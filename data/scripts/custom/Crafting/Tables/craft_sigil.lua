
local sigilCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end

local config = {
	mainTitleMsg = "Sigil Craft", 
	mainMsg = "Welcome to the Sigil Craft.\nPlease choose a category:", 
 
	craftTitle = "Sigil Craft: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n\nHere is a list of all resources that can be crafted from Sigil craft: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Radiance Sigil", 
			items = {
						[1] = {item = "Radiance Sigil of Soul II", 
						itemID = 27437, 
						reqItems = {
								[1] = {item = 27436, count = 2}, -- 2 Radiance Sigil of Soul I
							},
						},
 
						[2] = {item = "Radiance Sigil of Soul III", 
						itemID = 27438, 
						reqItems = {
								[1] = {item = 27437, count = 2}, -- 2 Radiance Sigil of Soul II
							},
						},				
 
						[3] = {item = "Radiance Sigil of Soul IV", 
						itemID = 27439, 
						reqItems = {
								[1] = {item = 27438, count = 2}, -- 2 Radiance Sigil of Soul III
							},
						},	
 
						[4] = {item = "Radiance Sigil of Soul V", 
						itemID = 27440, 
						reqItems = {
								[1] = {item = 27439, count = 2}, -- 2 Radiance Sigil of Soul IV
							},
						},
 
						[5] = {item = "Radiance Sigil of Soul VI", 
						itemID = 27441, 
						reqItems = {
								[1] = {item = 27440, count = 2}, -- 2 Radiance Sigil of Soul V
							},
						},
 
						[6] = {item = "Radiance Sigil of Soul VII", 
						itemID = 27442, 
						reqItems = {
								[1] = {item = 27441, count = 2}, -- 2 Radiance Sigil of Soul VI
							},
						},
						[7] = {item = "Radiance Sigil of Soul VIII", 
						itemID = 27443, 
						reqItems = {
								[1] = {item = 27442, count = 2}, -- 2 Radiance Sigil of Soul VII
							},
						},
						[8] = {item = "Radiance Sigil of Soul IX", 
						itemID = 27444, 
						reqItems = {
								[1] = {item = 27443, count = 2}, -- 2 Radiance Sigil of Soul VIII
							},
						},
						[9] = {item = "Radiance Sigil of Soul X", 
						itemID = 27445, 
						reqItems = {
								[1] = {item = 27444, count = 2}, -- 2 Radiance Sigil of Soul IX
								[2] = {item = 27399, count = 1}, -- Ancient Seal Scroll
								[3] = {item = 27350, count = 1}, -- Adamas Cut Stone
							},
						},
				},
			},
 
	[2] = {tiers= "Annihilation Sigil", 
			items = {
						[1] = {item = "Annihilation Sigil of Soul II", 
						itemID = 27447, 
						reqItems = {
								[1] = {item = 27446, count = 2}, -- 2 Annihilation Sigil of Soul I
							},
						},
 
						[2] = {item = "Annihilation Sigil of Soul III", 
						itemID = 27448, 
						reqItems = {
								[1] = {item = 27447, count = 2}, -- 2 Annihilation Sigil of Soul II
							},
						},				
 
						[3] = {item = "Annihilation Sigil of Soul IV", 
						itemID = 27449, 
						reqItems = {
								[1] = {item = 27448, count = 2}, -- 2 Annihilation Sigil of Soul III
							},
						},	
 
						[4] = {item = "Annihilation Sigil of Soul V", 
						itemID = 27450, 
						reqItems = {
								[1] = {item = 27449, count = 2}, -- 2 Annihilation Sigil of Soul IV
							},
						},
 
						[5] = {item = "Annihilation Sigil of Soul VI", 
						itemID = 27451, 
						reqItems = {
								[1] = {item = 27450, count = 2}, -- 2 Annihilation Sigil of Soul V
							},
						},
 
						[6] = {item = "Annihilation Sigil of Soul VII", 
						itemID = 27213, 
						reqItems = {
								[1] = {item = 27451, count = 2}, -- 2 Annihilation Sigil of Soul VI
							},
						},
						[7] = {item = "Annihilation Sigil of Soul VIII", 
						itemID = 27214, 
						reqItems = {
								[1] = {item = 27213, count = 2}, -- 2 Annihilation Sigil of Soul VII
							},
						},
						[8] = {item = "Annihilation Sigil of Soul IX", 
						itemID = 27233, 
						reqItems = {
								[1] = {item = 27214, count = 2}, -- 2 Annihilation Sigil of Soul VIII
							},
						},
						[9] = {item = "Annihilation Sigil of Soul X", 
						itemID = 27258, 
						reqItems = {
								[1] = {item = 27233, count = 2}, -- 2 Annihilation Sigil of Soul IX
								[2] = {item = 27399, count = 1}, -- Ancient Seal Scroll
								[3] = {item = 27350, count = 1}, -- Adamas Cut Stone
							},
						},
				},
			},
 
		[3] = {tiers = "Nightmare Sigil",
				items = {
					[1] = {item = "Nightmare Sigil of Soul II", 
					itemID = 27260, 
					reqItems = {
							[1] = {item = 27259, count = 2}, -- 2 Nightmare Sigil of Soul I
						},
					},

					[2] = {item = "Nightmare Sigil of Soul III", 
					itemID = 27261, 
					reqItems = {
							[1] = {item = 27260, count = 2}, -- 2 Nightmare Sigil of Soul II
						},
					},				

					[3] = {item = "Nightmare Sigil of Soul IV", 
					itemID = 27262, 
					reqItems = {
							[1] = {item = 27261, count = 2}, -- 2 Nightmare Sigil of Soul III
						},
					},	

					[4] = {item = "Nightmare Sigil of Soul V", 
					itemID = 27263, 
					reqItems = {
							[1] = {item = 27262, count = 2}, -- 2 Nightmare Sigil of Soul IV
						},
					},

					[5] = {item = "Nightmare Sigil of Soul VI", 
					itemID = 27264, 
					reqItems = {
							[1] = {item = 27263, count = 2}, -- 2 Nightmare Sigil of Soul V
						},
					},

					[6] = {item = "Nightmare Sigil of Soul VII", 
					itemID = 27265, 
					reqItems = {
							[1] = {item = 27264, count = 2}, -- 2 Nightmare Sigil of Soul VI
						},
					},
					[7] = {item = "Nightmare Sigil of Soul VIII", 
					itemID = 27266, 
					reqItems = {
							[1] = {item = 27265, count = 2}, -- 2 Nightmare Sigil of Soul VII
						},
					},
					[8] = {item = "Nightmare Sigil of Soul IX", 
					itemID = 27267, 
					reqItems = {
							[1] = {item = 27266, count = 2}, -- 2 Nightmare Sigil of Soul VIII
						},
					},
					[9] = {item = "Nightmare Sigil of Soul X", 
					itemID = 27268, 
					reqItems = {
							[1] = {item = 27267, count = 2}, -- 2 Nightmare Sigil of Soul IX
							[2] = {item = 27399, count = 1}, -- Ancient Seal Scroll
							[3] = {item = 27350, count = 1}, -- Adamas Cut Stone
						},
					},
				},
			},
		[4] = {tiers= "Spirit Sigil", 
			items = {
					[1] = {item = "Spirit Sigil of Soul II", 
					itemID = 27270, 
					reqItems = {
							[1] = {item = 27269, count = 2}, -- 2 Spirit Sigil of Soul I
						},
					},

					[2] = {item = "Spirit Sigil of Soul III", 
					itemID = 27271, 
					reqItems = {
							[1] = {item = 27270, count = 2}, -- 2 Spirit Sigil of Soul II
						},
					},				

					[3] = {item = "Spirit Sigil of Soul IV", 
					itemID = 27273, 
					reqItems = {
							[1] = {item = 27271, count = 2}, -- 2 Spirit Sigil of Soul III
						},
					},	

					[4] = {item = "Spirit Sigil of Soul V", 
					itemID = 27274, 
					reqItems = {
							[1] = {item = 27273, count = 2}, -- 2 Spirit Sigil of Soul IV
						},
					},

					[5] = {item = "Spirit Sigil of Soul VI", 
					itemID = 27275, 
					reqItems = {
							[1] = {item = 27274, count = 2}, -- 2 Spirit Sigil of Soul V
						},
					},

					[6] = {item = "Spirit Sigil of Soul VII", 
					itemID = 27276, 
					reqItems = {
							[1] = {item = 27275, count = 2}, -- 2 Spirit Sigil of Soul VI
						},
					},
					[7] = {item = "Spirit Sigil of Soul VIII", 
					itemID = 27277, 
					reqItems = {
							[1] = {item = 27276, count = 2}, -- 2 Spirit Sigil of Soul VII
						},
					},
					[8] = {item = "Spirit Sigil of Soul IX", 
					itemID = 27278, 
					reqItems = {
							[1] = {item = 27277, count = 2}, -- 2 Spirit Sigil of Soul VIII
						},
					},
					[9] = {item = "Spirit Sigil of Soul X", 
					itemID = 27279, 
					reqItems = {
							[1] = {item = 27278, count = 2}, -- 2 Spirit Sigil of Soul IX
							[2] = {item = 27399, count = 1}, -- Ancient Seal Scroll
							[3] = {item = 27350, count = 1}, -- Adamas Cut Stone
						},
					},
				},
			},
			[5] = {tiers= "Calamity Sigil", 
			items = {
					[1] = {item = "Calamity Sigil of Soul II", 
					itemID = 27281, 
					reqItems = {
							[1] = {item = 27280, count = 2}, -- 2 Calamity Sigil of Soul I
						},
					},

					[2] = {item = "Calamity Sigil of Soul III", 
					itemID = 27282, 
					reqItems = {
							[1] = {item = 27281, count = 2}, -- 2 Calamity Sigil of Soul II
						},
					},				

					[3] = {item = "Calamity Sigil of Soul IV", 
					itemID = 27283, 
					reqItems = {
							[1] = {item = 27282, count = 2}, -- 2 Calamity Sigil of Soul III
						},
					},	

					[4] = {item = "Calamity Sigil of Soul V", 
					itemID = 27284, 
					reqItems = {
							[1] = {item = 27283, count = 2}, -- 2 Calamity Sigil of Soul IV
						},
					},

					[5] = {item = "Calamity Sigil of Soul VI", 
					itemID = 27285, 
					reqItems = {
							[1] = {item = 27284, count = 2}, -- 2 Calamity Sigil of Soul V
						},
					},

					[6] = {item = "Calamity Sigil of Soul VII", 
					itemID = 27287, 
					reqItems = {
							[1] = {item = 27285, count = 2}, -- 2 Calamity Sigil of Soul VI
						},
					},
					[7] = {item = "Calamity Sigil of Soul VIII", 
					itemID = 27288, 
					reqItems = {
							[1] = {item = 27287, count = 2}, -- 2 Calamity Sigil of Soul VII
						},
					},
					[8] = {item = "Calamity Sigil of Soul IX", 
					itemID = 27289, 
					reqItems = {
							[1] = {item = 27288, count = 2}, -- 2 Calamity Sigil of Soul VIII
						},
					},
					[9] = {item = "Calamity Sigil of Soul X", 
					itemID = 27290, 
					reqItems = {
							[1] = {item = 27289, count = 2}, -- 2 Calamity Sigil of Soul IX
							[2] = {item = 27399, count = 1}, -- Ancient Seal Scroll
							[3] = {item = 27350, count = 1}, -- Adamas Cut Stone
						},
					},
				},
			},
			[6] = {tiers= "Heirloom Sigil", 
			items = {
					[1] = {item = "Heirloom Sigil of Soul II", 
					itemID = 27292, 
					reqItems = {
							[1] = {item = 27291, count = 2}, -- 2 Heirloom Sigil of Soul I
						},
					},

					[2] = {item = "Heirloom Sigil of Soul III", 
					itemID = 27293, 
					reqItems = {
							[1] = {item = 27292, count = 2}, -- 2 Heirloom Sigil of Soul II
						},
					},				

					[3] = {item = "Heirloom Sigil of Soul IV", 
					itemID = 27294, 
					reqItems = {
							[1] = {item = 27293, count = 2}, -- 2 Heirloom Sigil of Soul III
						},
					},	

					[4] = {item = "Heirloom Sigil of Soul V", 
					itemID = 27295, 
					reqItems = {
							[1] = {item = 27294, count = 2}, -- 2 Heirloom Sigil of Soul IV
						},
					},

					[5] = {item = "Heirloom Sigil of Soul VI", 
					itemID = 27296, 
					reqItems = {
							[1] = {item = 27295, count = 2}, -- 2 Heirloom Sigil of Soul V
						},
					},

					[6] = {item = "Heirloom Sigil of Soul VII", 
					itemID = 27297, 
					reqItems = {
							[1] = {item = 27296, count = 2}, -- 2 Heirloom Sigil of Soul VI
						},
					},
					[7] = {item = "Heirloom Sigil of Soul VIII", 
					itemID = 27298, 
					reqItems = {
							[1] = {item = 27297, count = 2}, -- 2 Heirloom Sigil of Soul VII
						},
					},
					[8] = {item = "Heirloom Sigil of Soul IX", 
					itemID = 27299, 
					reqItems = {
							[1] = {item = 27298, count = 2}, -- 2 Heirloom Sigil of Soul VIII
						},
					},
					[9] = {item = "Heirloom Sigil of Soul X", 
					itemID = 27300, 
					reqItems = {
							[1] = {item = 27299, count = 2}, -- 2 Heirloom Sigil of Soul IX
							[2] = {item = 27399, count = 1}, -- Ancient Seal Scroll
							[3] = {item = 27350, count = 1}, -- Adamas Cut Stone
						},
					},
				},
			},
			[7] = {tiers= "Cryptic Sigil", 
			items = {
					[1] = {item = "Cryptic Sigil of Soul II", 
					itemID = 27302, 
					reqItems = {
							[1] = {item = 27301, count = 2}, -- 2 Cryptic Sigil of Soul I
						},
					},

					[2] = {item = "Cryptic Sigil of Soul III", 
					itemID = 27307, 
					reqItems = {
							[1] = {item = 27302, count = 2}, -- 2 Cryptic Sigil of Soul II
						},
					},				

					[3] = {item = "Cryptic Sigil of Soul IV", 
					itemID = 27308, 
					reqItems = {
							[1] = {item = 27307, count = 2}, -- 2 Cryptic Sigil of Soul III
						},
					},	

					[4] = {item = "Cryptic Sigil of Soul V", 
					itemID = 27309, 
					reqItems = {
							[1] = {item = 27308, count = 2}, -- 2 Cryptic Sigil of Soul IV
						},
					},

					[5] = {item = "Cryptic Sigil of Soul VI", 
					itemID = 27313, 
					reqItems = {
							[1] = {item = 27309, count = 2}, -- 2 Cryptic Sigil of Soul V
						},
					},

					[6] = {item = "Cryptic Sigil of Soul VII", 
					itemID = 27315, 
					reqItems = {
							[1] = {item = 27313, count = 2}, -- 2 Cryptic Sigil of Soul VI
						},
					},
					[7] = {item = "Cryptic Sigil of Soul VIII", 
					itemID = 27319, 
					reqItems = {
							[1] = {item = 27315, count = 2}, -- 2 Cryptic Sigil of Soul VII
						},
					},
					[8] = {item = "Cryptic Sigil of Soul IX", 
					itemID = 27320, 
					reqItems = {
							[1] = {item = 27319, count = 2}, -- 2 Cryptic Sigil of Soul VIII
						},
					},
					[9] = {item = "Cryptic Sigil of Soul X", 
					itemID = 27323, 
					reqItems = {
							[1] = {item = 27320, count = 2}, -- 2 Cryptic Sigil of Soul IX
							[2] = {item = 27399, count = 1}, -- Ancient Seal Scroll
							[3] = {item = 27350, count = 1}, -- Adamas Cut Stone
						},
					},
				},
			},
			[8] = {tiers= "Others", 
			items = {
					[1] = {item = "Chaos Pure Brooch", 
					itemID = 27302, 
					reqItems = {
							[1] = {item = 27355, count = 2}, -- Chaos Pure Brooch Fragment
							[2] = {item = 27393, count = 1}, -- Pure Diamond
							[3] = {item = 27323, count = 1}, --- Cryptic x
							[4] = {item = 27300, count = 1}, --- Heirloom x
							[5] = {item = 27290, count = 1}, --- Calamity x
							[6] = {item = 27279, count = 1}, --- Spirit x
							[7] = {item = 27268, count = 1}, --- Nightmare x
							[8] = {item = 27258, count = 1}, --- Annihilation x
							[9] = {item = 27445, count = 1}, --- Radiance x
						},
					},
				},
			},
		},
	}
 
function sigilCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.Sigil.scroll.unlock) == 1 then
    player:sendMainCraftWindow(config)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft Sigil icons.")
    return true
	end
end
sigilCraft:id(27340)
sigilCraft:register()