
local eggsCraft = Action()

function capAll(str)
    return str:gsub("^(%a)", string.upper):gsub("([^%a]%a)", string.upper)
end

local config = {
	mainTitleMsg = "Dragon Egg Craft", 
	mainMsg = "Welcome to the Dragon Egg Craft.\nPlease choose a category:", 
 
	craftTitle = "Dragon Egg Craft: ",
	craftMsg = "Click on Recipe to see the necessary resources needed to craft a new one.\n Dragon Eggs are very rare, you can find it around the world. Collecting all eggs you will be able to craft the Legendary Cryptic Dragon Egg.\n\nHere is a list of all resources that can be crafted from Dragon Egg craft: ", 
	needItems = "You do not have all the required items to make ",
	system = {
	[1] = {tiers = "Equipment Egg", 
			items = {
				[1] = {item = "Cryptic Dragon Egg",
					itemID = 29220,			
					reqItems = {
							[1] = {item = 29200, count = 1}, -- Umbra Dragon Egg
							[2] = {item = 29180, count = 1}, -- Quantum Dragon Egg
							[3] = {item = 37697, count = 1}, -- Cracked Golden Dragon Egg
							[4] = {item = 29207, count = 1}, -- Ovalith Dragon Egg
							[5] = {item = 29198, count = 1}, -- Delicia Dragon Egg
							[6] = {item = 29206, count = 1}, -- Nebula Dragon Egg
							[7] = {item = 29178, count = 1}, --- Pyrite Dragon Egg
							[8] = {item = 41832, count = 1}, --- Wings of Destruction 
							[9] = {item = 27354, count = 1}, -- Chaos Pure Brooch
							[10] = {item = 26286, count = 5}, -- Demonic Pure Heart
							[11] = {item = 42076, count = 1}, -- Demoniac Egg
					},
				},
				},
			},
 
	[2] = {tiers= "Mordragor Eggs", 
			items = {
				[1] = {item = "Geminian Dragon Egg", -- 76k  - 500 gps
						itemID = 29205,
						reqItems = {
								[1] = {item = 27132, count = 1}, -- Crystal Dragon Egg
								[2] = {item = 27160, count = 1}, -- Star Dragon Egg
								[3] = {item = 27168, count = 1}, -- Volcano Dragon Egg
								[4] = {item = 27475, count = 1}, -- Galaxy Fae Dragon Egg
								[5] = {item = 27148, count = 1}, -- Magma Dragon Egg
								[6] = {item = 27235, count = 1}, -- Loch Dragon Egg
								[7] = {item = 27147, count = 1}, -- Fraktal Dragon Egg
								[8] = {item = 27143, count = 1}, -- Illusion Dragon Egg
								[9] = {item = 27527, count = 1}, -- Permafrost Dragon Egg
								[10] = {item = 27114, count = 1}, -- Adamantium Dragon Egg
								[11] = {item = 27130, count = 1}, -- Chimera Dragon Egg
								[12] = {item = 27478, count = 1}, -- Hot Metal Dragon Egg
								[13] = {item = 27154, count = 1}, -- Prophet Dragon Egg
								[14] = {item = 27465, count = 1}, --- Stained Dragon Egg
						},
					},
 
				[2] = {item = "Eve Dragon Egg", -- 236k  -  7500 gps
						itemID = 29201,
						reqItems = {
							    [1] = {item = 29205, count = 1}, -- Geminian Dragon Egg
								[2] = {item = 29171, count = 1}, -- Busby Dragon Egg
								[3] = {item = 27133, count = 1}, -- Eurus Dragon Egg
								[4] = {item = 27363, count = 1}, -- Naga Dragon Egg
								[5] = {item = 27492, count = 1}, -- Wurm Dragon Egg
								[6] = {item = 27467, count = 1}, -- Ladybug Dragon Egg
								[7] = {item = 27502, count = 1}, -- Ragnor Dragon Egg
								[8] = {item = 27469, count = 1}, -- Beholder Dragon Egg
								[9] = {item = 27485, count = 1}, -- Venom Dragon Egg
								[10] = {item = 27487, count = 1}, -- Yggdrasil Dragon Egg
								[11] = {item = 27536, count = 1}, -- Outlaw Dragon Egg
								[12] = {item = 27244, count = 1}, -- Glutty Dragon Egg
								[13] = {item = 27120, count = 1}, -- Aztec Dragon Egg
								[14] = {item = 27150, count = 1}, -- Mist Dragon Egg
						},
					},						
				[3] = {item = "Umbra Dragon Egg", -- 306k -- 35000 gps
						itemID = 29200,
						reqItems = {
								[1] = {item = 29201, count = 1}, -- Eve Dragon Egg
								[2] = {item = 29172, count = 1}, -- Serket Dragon Egg
								[3] = {item = 27255, count = 1}, -- Golden Earth Dragon Egg
						},
					},
				},
			},
 
		[3] = {tiers = "Mistfall Eggs",
				items = {
					[1] = {item = "Lazuli Dragon Egg",
						itemID = 29157,
						reqItems = {
								[1] = {item = 27368, count = 1}, -- Blizzard Dragon Egg
								[2] = {item = 29174, count = 1}, -- Dittoglide Dragon Egg
								[3] = {item = 27142, count = 1}, -- Icewind Dragon Egg
           						[4] = {item = 27135, count = 1}, -- Fluorescent Fae Dragon Egg
            					[5] = {item = 27127, count = 1}, -- Cherimoya Dragon Egg
            					[6] = {item = 27122, count = 1}, -- Snowstorm Dragon Egg
            					[7] = {item = 27249, count = 1}, -- Frilled Dragon Egg
           		 				[8] = {item = 27248, count = 1}, -- Sewn Dragon Egg ----
            					[9] = {item = 27237, count = 1}, -- Rainbow Dragon Egg
            					[10] = {item = 27505, count = 1}, -- Quartz Dragon Egg
            					[11] = {item = 27501, count = 1}, -- Radiant Dragon Egg
            					[12] = {item = 27486, count = 1}, -- Watefall Dragon Egg
            					[13] = {item = 27479, count = 1}, -- Neon Dragon Egg
            					[14] = {item = 27477, count = 1}, -- Ice Bullet Dragon Egg
						},
					},
 
				[2] = {item = "Galaxy Dragon Egg",
						itemID = 29163,
						reqItems = {
							    [1] = {item = 29157, count = 1}, -- Lazuli Dragon Egg
								[2] = {item = 27356, count = 1}, -- Emerald Dragon Egg
								[3] = {item = 27370, count = 1}, -- Orthimbras Dragon Egg
								[4] = {item = 28596, count = 1}, -- Nature Dragon Egg
            					[5] = {item = 29186, count = 1}, -- Dortal Dragon Egg
            					[6] = {item = 29153, count = 1}, -- Blightwing Dragon Egg
            					[7] = {item = 27144, count = 1}, -- Jade Dragon Egg
            					[8] = {item = 27490, count = 1}, -- Lianas Dragon Egg
            					[9] = {item = 27473, count = 1}, -- Purple Fire Dragon Egg
            					[10] = {item = 27153, count = 1}, -- Origami Dragon Egg
            					[11] = {item = 27256, count = 1}, -- Demon Dragon Egg
            					[12] = {item = 27525, count = 1}, -- Platinum Dragon Egg
            					[13] = {item = 27121, count = 1}, -- Anevi Dragon Egg
            					[14] = {item = 27522, count = 1}, -- Polar Dragon Egg
            					[15] = {item = 27230, count = 1}, -- Steel Dragon Egg
						},
					},						
				[3] = {item = "Quantum Dragon Egg",
						itemID = 29180,
						reqItems = {
								[1] = {item = 27138, count = 1}, -- Greenfluid Dragon Egg
								[2] = {item = 27528, count = 1}, -- Paradise Dragon Egg
								[3] = {item = 29163, count = 1}, -- Galaxy Dragon Egg
						},
					},
				},
			},
		[4] = {tiers= "Falanaar Eggs", 
			items = {
				[1] = {item = "Savannah Dragon Egg",
						itemID = 37645,
						reqItems = {
								[1] = {item = 27139, count = 1}, -- Gummy Dragon Egg
								[2] = {item = 27149, count = 1}, -- Melted Dragon Egg
								[3] = {item = 27494, count = 1}, -- Trickster Dragon Egg
								[4] = {item = 27152, count = 1}, -- Nightmare Fae Dragon Egg
								[5] = {item = 27134, count = 1}, -- Flaming Rock Dragon Egg
								[6] = {item = 27129, count = 1}, -- Citadel Dragon Egg
								[7] = {item = 27112, count = 1}, -- Ace Dragon Egg
								[8] = {item = 27110, count = 1}, -- Abnormal Dragon Egg 
								[9] = {item = 27250, count = 1}, -- Frightening Dragon Egg
								[10] = {item = 27241, count = 1}, -- Hedgehog Dragon Egg
								[11] = {item = 27236, count = 1}, -- Lava Dragon Egg
								[12] = {item = 27227, count = 1}, -- Mishievous Dragon Egg
								[13] = {item = 27537, count = 1}, -- Horned Dragon Egg
								[14] = {item = 27524, count = 1}, -- Larva Dragon Egg
						},
					},
 
				[2] = {item = "Scourge Dragon Egg",
						itemID = 29162,
						reqItems = {
							    [1] = {item = 37645, count = 1}, -- Savannah Dragon Egg
								[2] = {item = 27362, count = 1}, -- Scale Dragon Egg
								[3] = {item = 27159, count = 1}, -- Prismatic Dragon Egg
								[4] = {item = 27489, count = 1}, -- Zombieski Dragon Egg
								[5] = {item = 27116, count = 1}, -- Aquamarine Dragon Egg
								[6] = {item = 27124, count = 1}, -- Blood Mage Dragon Egg
								[7] = {item = 27481, count = 1}, -- Penumbra Dragon Egg
								[8] = {item = 27359, count = 1}, -- Aguabrial Fire Dragon Egg
								[9] = {item = 27466, count = 1}, -- Alien Dragon Egg
								[10] = {item = 27253, count = 1}, -- Electric Dragon Egg
								[11] = {item = 27365, count = 1}, -- Sapphire Dragon Egg
								[12] = {item = 27145, count = 1}, -- Juggernaut Dragon Egg
								[13] = {item = 27125, count = 1}, -- Chainmail Dragon Egg
								[14] = {item = 27360, count = 1}, -- Absinthe Dragon Egg
								[15] = {item = 27225, count = 1}, -- Music Dragon Egg
						},
					},						
				[3] = {item = "Cracked Golden Dragon Egg",
						itemID = 37697,
						reqItems = {
								[1] = {item = 37641, count = 1}, -- Ebony Dragon Egg
								[2] = {item = 27229, count = 1}, -- Meteor Dragon Egg
								[3] = {item = 29162, count = 1}, -- Scourge Earth Dragon Egg
						},
					},
				},
			},
			[5] = {tiers= "Freewind Eggs", 
			items = {
				[1] = {item = "Toxic Dragon Egg",
						itemID = 37652,
						reqItems = {
								[1] = {item = 29185, count = 1}, -- Malefice Dragon Egg
								[2] = {item = 27498, count = 1}, -- Salamander Dragon Egg
								[3] = {item = 27161, count = 1}, -- Stonework Dragon Egg
								[4] = {item = 27470, count = 1}, -- Tanzanite Dragon Egg
								[5] = {item = 29161, count = 1}, -- Lagoon Dragon Egg
								[6] = {item = 37655, count = 1}, -- Malice Dragon Egg
								[7] = {item = 37654, count = 1}, -- Spirit Dragon Egg
								[8] = {item = 37653, count = 1}, -- Nova Dragon Egg 
								[9] = {item = 37650, count = 1}, -- Hellish Eye Dragon Egg
								[10] = {item = 27414, count = 1}, -- Sunlight Dragon Egg
								[11] = {item = 27171, count = 1}, -- Usurper Dragon Egg
								[12] = {item = 27165, count = 1}, -- Red Spark Dragon Egg
								[13] = {item = 27164, count = 1}, -- Golden Shard Dragon Egg
								[14] = {item = 27497, count = 1}, -- Tentacle Dragon Egg
						},
					},
 
				[2] = {item = "Abyssal Dragon Egg",
						itemID = 29191,
						reqItems = {
							    [1] = {item = 37652, count = 1}, -- Toxic Dragon Egg
								[2] = {item = 27228, count = 1}, -- Millium Dragon Egg
								[3] = {item = 37648, count = 1}, -- Septentrional Dragon Egg
								[4] = {item = 29208, count = 1}, -- Barite Dragon Egg
								[5] = {item = 29193, count = 1}, -- Tranquil Dragon Egg
								[6] = {item = 29184, count = 1}, -- Mylio Mage Dragon Egg
								[7] = {item = 29190, count = 1}, -- Burrow Dragon Egg
								[8] = {item = 37695, count = 1}, -- Clear Dragon Egg
								[9] = {item = 37651, count = 1}, -- Bifrost Dragon Egg
								[10] = {item = 27251, count = 1}, -- Fire and Ice Dragon Egg
								[11] = {item = 27155, count = 1}, -- Arctic Guardian Dragon Egg
								[12] = {item = 27371, count = 1}, -- Vethan Dragon Egg
								[13] = {item = 27415, count = 1}, -- Crystalline Dragon Egg
								[14] = {item = 27413, count = 1}, -- Turquoise Dragon Egg
								[15] = {item = 27496, count = 1}, -- Terra Dragon Egg
						},
					},						
				[3] = {item = "Ovalith Dragon Egg",
						itemID = 29207,
						reqItems = {
								[1] = {item = 27141, count = 1}, -- Impassible Dragon Egg
								[2] = {item = 27488, count = 1}, -- Zombie Flame Dragon Egg
								[3] = {item = 29191, count = 1}, -- Abyssal Earth Dragon Egg
						},
					},
				},
			},
			[6] = {tiers= "Death Valley Eggs", 
			items = {
				[1] = {item = "Hedera Dragon Egg",
						itemID = 29199,
						reqItems = {
								[1] = {item = 27539, count = 1}, -- Nightglow Dragon Egg
								[2] = {item = 29182, count = 1}, -- Riptide Dragon Egg
								[3] = {item = 27123, count = 1}, -- Blizzking Dragon Egg
								[4] = {item = 29165, count = 1}, -- Hyperion Dragon Egg
								[5] = {item = 29187, count = 1}, -- Zaffer Dragon Egg
								[6] = {item = 29168, count = 1}, -- Igluit Dragon Egg
								[7] = {item = 29151, count = 1}, -- Dark Rift Dragon Egg
								[8] = {item = 37696, count = 1}, -- Legacy Dragon Egg 
								[9] = {item = 37640, count = 1}, -- Ivory Dragon Egg
								[10] = {item = 27416, count = 1}, -- Nebulux Dragon Egg
								[11] = {item = 27163, count = 1}, -- Stormbringer Dragon Egg
								[12] = {item = 27158, count = 1}, -- Fae Seism Dragon Egg
								[13] = {item = 27115, count = 1}, -- Arid Dragon Egg
								[14] = {item = 27257, count = 1}, -- Dark Sky Dragon Egg
						},
					},
 
				[2] = {item = "Peridot Dragon Egg",
						itemID = 29179,
						reqItems = {
							    [1] = {item = 29199, count = 1}, -- Hedera Dragon Egg
								[2] = {item = 27156, count = 1}, -- Sea Dragon Egg
								[3] = {item = 29177, count = 1}, -- Oracle Dragon Egg
								[4] = {item = 27480, count = 1}, -- Onslaught Dragon Egg
								[5] = {item = 37656, count = 1}, -- Lost Dragon Egg
								[6] = {item = 37647, count = 1}, -- Almanach Mage Dragon Egg
								[7] = {item = 29160, count = 1}, -- Fomhar Dragon Egg
								[8] = {item = 29170, count = 1}, -- Mesmerus Dragon Egg
								[9] = {item = 29169, count = 1}, -- Melancholy Dragon Egg
								[10] = {item = 27234, count = 1}, -- Mammatus Dragon Egg
								[11] = {item = 27500, count = 1}, -- Raven Dragon Egg
								[12] = {item = 27503, count = 1}, -- Pyrex Dragon Egg
								[13] = {item = 27504, count = 1}, -- Ra Dragon Egg
								[14] = {item = 27493, count = 1}, -- Whimsical Dragon Egg
								[15] = {item = 27474, count = 1}, -- Headstrong Dragon Egg
						},
					},						
				[3] = {item = "Nebula Dragon Egg",
						itemID = 29206,
						reqItems = {
								[1] = {item = 29181, count = 1}, -- Diamond Dragon Egg
								[2] = {item = 37649, count = 1}, -- Explosive Dragon Egg
								[3] = {item = 29179, count = 1}, -- Peridot Dragon Egg
						},
					},
				},
			},
			[7] = {tiers= "Dolwatha Eggs", 
			items = {
				[1] = {item = "Kaiju Dragon Egg",
						itemID = 29176,
						reqItems = {
								[1] = {item = 27252, count = 1}, -- Faust Dragon Egg
								[2] = {item = 27367, count = 1}, -- Death Dragon Egg
								[3] = {item = 27358, count = 1}, -- Chronic Dragon Egg
								[4] = {item = 27374, count = 1}, -- Zetherus Dragon Egg
								[5] = {item = 29166, count = 1}, -- Incandescent Dragon Egg
								[6] = {item = 27136, count = 1}, -- Spiked Dragon Egg
								[7] = {item = 27128, count = 1}, -- Lancecacille Dragon Egg
								[8] = {item = 27119, count = 1}, -- Atomic Dragon Egg 
								[9] = {item = 27254, count = 1}, -- Dragonfly Dragon Egg
								[10] = {item = 27243, count = 1}, -- Grapple Dragon Egg
								[11] = {item = 27226, count = 1}, -- Elvenar Dragon Egg
								[12] = {item = 27538, count = 1}, -- Notus Dragon Egg
								[13] = {item = 27499, count = 1}, -- Terraformer Dragon Egg
								[14] = {item = 27484, count = 1}, -- Jewel Dragon Egg
						},
					},
 
				[2] = {item = "Aquarian Dragon Egg",
						itemID = 29203,
						reqItems = {
							    [1] = {item = 29176, count = 1}, -- Kaiju Dragon Egg
								[2] = {item = 27506, count = 1}, -- Quake Dragon Egg
								[3] = {item = 27238, count = 1}, -- Kitsune Dragon Egg
								[4] = {item = 27535, count = 1}, -- Ovi Dragon Egg
								[5] = {item = 27245, count = 1}, -- Freezox Dragon Egg
								[6] = {item = 27476, count = 1}, -- Heartbroken Mage Dragon Egg
								[7] = {item = 27131, count = 1}, -- Ice Fire Dragon Egg
								[8] = {item = 27151, count = 1}, -- Moose Dragon Egg
								[9] = {item = 27231, count = 1}, -- Mercury Dragon Egg
								[10] = {item = 27240, count = 1}, -- Nucleus Dragon Egg
								[11] = {item = 27468, count = 1}, -- Metal Dragon Egg
								[12] = {item = 27495, count = 1}, -- Tiger Dragon Egg
								[13] = {item = 27146, count = 1}, -- Lantern Dragon Egg
								[14] = {item = 27523, count = 1}, -- Poisonux Dragon Egg
								[15] = {item = 27526, count = 1}, -- Petroleum Dragon Egg
						},
					},						
				[3] = {item = "Delicia Dragon Egg",
						itemID = 29198,
						reqItems = {
								[1] = {item = 27361, count = 1}, -- Komodo Dragon Egg
								[2] = {item = 37694, count = 1}, -- Tenebrous Dragon Egg
								[3] = {item = 29203, count = 1}, -- Aquarian Earth Dragon Egg
						},
					},
				},
			},
			[8] = {tiers= "Arkeron Eggs", 
			items = {
				[1] = {item = "Pure Ruby Dragon Egg",
						itemID = 37643,
						reqItems = {
								[1] = {item = 27521, count = 1}, -- Predator Dragon Egg
								[2] = {item = 29192, count = 1}, -- Spectrapod Dragon Egg
								[3] = {item = 27239, count = 1}, -- Hight Tension Dragon Egg
								[4] = {item = 27162, count = 1}, -- Sweet Dragon Egg
								[5] = {item = 29196, count = 1}, -- Charlatan Dragon Egg
								[6] = {item = 29173, count = 1}, -- Morpho Dragon Egg
								[7] = {item = 29167, count = 1}, -- Apotros Dragon Egg
								[8] = {item = 29156, count = 1}, -- Dark Matter Dragon Egg 
								[9] = {item = 29155, count = 1}, -- Spore Dragon Egg
								[10] = {item = 27118, count = 1}, -- Artic Dragon Egg
								[11] = {item = 27232, count = 1}, -- Maori Dragon Egg
								[12] = {item = 27369, count = 1}, -- Lex Dragon Egg
								[13] = {item = 27366, count = 1}, -- Ashmore Dragon Egg
								[14] = {item = 27351, count = 1}, -- Chronos Dragon Egg
						},
					},
 
				[2] = {item = "Twin Hell Dragon Egg",
						itemID = 27140,
						reqItems = {
							    [1] = {item = 37643, count = 1}, -- Pure Ruby Dragon Egg
								[2] = {item = 29158, count = 1}, -- Vibe Dragon Egg
								[3] = {item = 29164, count = 1}, -- Monolith Dragon Egg
								[4] = {item = 29189, count = 1}, -- Thorn Dragon Egg
								[5] = {item = 37644, count = 1}, -- Enchanted Dragon Egg
								[6] = {item = 29152, count = 1}, -- Viridian Mage Dragon Egg
								[7] = {item = 29194, count = 1}, -- Misfortune Dragon Egg
								[8] = {item = 27117, count = 1}, -- Archaic Dragon Egg
								[9] = {item = 29188, count = 1}, -- Nox Dragon Egg
								[10] = {item = 29183, count = 1}, -- Grove Dragon Egg
								[11] = {item = 29159, count = 1}, -- Muse Dragon Egg
								[12] = {item = 29195, count = 1}, -- Victory Dragon Egg
								[13] = {item = 27157, count = 1}, -- Scarab Dragon Egg
								[14] = {item = 27126, count = 1}, -- Chibihomp Dragon Egg
								[15] = {item = 27242, count = 1}, -- Portal Dragon Egg
						},
					},						
				[3] = {item = "Pyrite Dragon Egg",
						itemID = 29178,
						reqItems = {
								[1] = {item = 29154, count = 1}, -- Abraxas Dragon Egg
								[2] = {item = 29204, count = 1}, -- Cansian Dragon Egg
								[3] = {item = 29202, count = 1}, -- Morphimagus Dragon Egg
								[4] = {item = 29197, count = 1}, -- Kage Dragon Egg
								[5] = {item = 27140, count = 1}, -- Twin Hell Dragon Egg
						},
					},
				},
			},
		},
	}
 
function eggsCraft.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	if player:getStorageValue(Storage.EggHunter.scroll.unlock) == 1 then
    player:sendMainCraftWindow(config)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You didn't learn how to craft Dragon Eggs.")
    return true
	end
end
eggsCraft:id(29221)
eggsCraft:register()