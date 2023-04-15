local AdentisPick = Action()

local config = {
    [8637] = {text = {"The crystal is regenerating"}}, -- Blue Crystal
    [8633] = {break_chance = 50, loot_chance = 35, lower_tier = 8637,  -- Large Blue Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [42057] = {break_chance = 75, loot_chance = 55, lower_tier = 8633, -- Mega Blue Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [8638] = {text = {"The crystal is regenerating"}}, -- Cyan Crystal
    [8634] = {break_chance = 50, loot_chance = 35, lower_tier = 8638, -- Large Cyan Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [42056] = {break_chance = 75, loot_chance = 55, lower_tier = 8634, -- Mega Cyan Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [8639] = {text = {"The crystal is regenerating"}}, -- Red Crystal
    [8635] = {break_chance = 50, loot_chance = 35, lower_tier = 8639,  -- Large Red Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [42059] = {break_chance = 75, loot_chance = 55, lower_tier = 8635, -- Mega Red Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [8640] = {text = {"The crystal is regenerating"}}, -- Green Crystal
    [8636] = {break_chance = 50, loot_chance = 35, lower_tier = 8640, -- Large Green Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [42058] = {break_chance = 75, loot_chance = 55, lower_tier = 8636, -- Mega Green Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [21638] = {text = {"The crystal is regenerating"}}, -- White Crystal
    [21637] = {break_chance = 50, loot_chance = 35, lower_tier = 21638, -- Large White Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
    [42060] = {break_chance = 75, loot_chance = 55, lower_tier = 21637, -- Mega White Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 7705, count = 1}, -- Magma Stone
            [2] = {item_id = 5089, count = 1}, -- Crystal Stone
			[3] = {item_id = 7736, count = 1}, -- Solar Stone
			[4] = {item_id = 7844, count = 1}, -- Amethyst Stone
			[5] = {item_id = 4854, count = 1}, -- Amber Stone
			[6] = {item_id = 7846, count = 1}, -- Lava Stone
			[7] = {item_id = 4851, count = 1}, -- Light Solar Stone
			[8] = {item_id = 4853, count = 1}, -- Malachite Stone
			[9] = {item_id = 4872, count = 1}, -- Sapphir Stone
			[10] = {item_id = 4858, count = 1} -- Gold Stone
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 4871, count = 1}, -- Magma Ore
            [2] = {item_id = 7733, count = 1},  -- Crystal Ore
			[3] = {item_id = 4867, count = 1}, -- Solar Ore
			[4] = {item_id = 4866, count = 1}, -- Amethyst Ore
			[5] = {item_id = 7845, count = 1}, -- Amber Ore
			[6] = {item_id = 4855, count = 1}, -- Lava Ore
			[7] = {item_id = 4852, count = 1}, -- Light Solar Ore
			[8] = {item_id = 6087, count = 1}, -- Malachite Ore
			[9] = {item_id = 14336, count = 1}, -- Sapphir Ore
			[10] = {item_id = 4869, count = 1} -- Gold Ore
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 5937, count = 1}, -- Precious Magma Crystal
            [2] = {item_id = 5802, count = 1},  -- Precious Crystal
			[3] = {item_id = 5799, count = 1}, -- Precious Solar Crystal
			[4] = {item_id = 4873, count = 1}, -- Precious Amethyst Crystal
			[5] = {item_id = 4865, count = 1}, -- Precious Amber Crystal
			[6] = {item_id = 4870, count = 1}, -- Precious Lava Crystal
			[7] = {item_id = 5939, count = 1}, -- Precious Light Solar Crystal
			[8] = {item_id = 6088, count = 1}, -- Precious Malachite Crystal
			[9] = {item_id = 5938, count = 1}, -- Precious Sapphir Crystal
			[10] = {item_id = 4868, count = 1} -- Precious Gold Crystal
        }
    },
}

local mining = {
	maxLevel = 500,
	experiencePerLevel = 125,
	storage = {
		level = 45001,
		experience = 45002
	},
}

local function giveMiningExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveMiningExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local miningLevel = player:getStorageValue(mining.storage.level)
    miningLevel = miningLevel >= 0 and miningLevel or 0
 
    local miningExperience = player:getStorageValue(mining.storage.experience)
    miningExperience = miningExperience >= 0 and miningExperience or 0
 
    -- local TotalMiningExperience = (miningLevel * ((mining.experience * (miningLevel - 1))/2)) + miningExperience
 
    miningExperience = miningExperience + amount
 
    if miningLevel < mining.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = miningLevel * mining.experiencePerLevel
            if miningExperience >= ExperienceRequiredForNextLevel then
                miningExperience = miningExperience - ExperienceRequiredForNextLevel
                miningLevel = miningLevel + 1
                local text = "You have advanced to mining level " .. miningLevel .. "."
                if miningLevel == mining.maxLevel then
                    text = "You have reached the maximum mining level."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (miningLevel == mining.maxLevel)
    end
 
    player:setStorageValue(mining.storage.level, miningLevel)
    player:setStorageValue(mining.storage.experience, miningExperience)
    return true
end


function AdentisPick.onUse(cid, item, fromPosition, itemEx, toPosition)
	local player = Player(cid)
		if not player then
    	return true
	end
	local levels = {
		expgainmin = 80, -- DO NOT CHANGE !
		expgainmax = 140, -- DO NOT CHANGE !
	}
    local object = config[itemEx.itemid]
	local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
    if object then
	local prevOutfit = player:getOutfit()
    local newOutfitfemale = {
        lookType = 1674,
        lookHead = 120,
        lookBody = 172,
        lookLegs = 0,
        lookFeet = 41,
        lookAddons = 0,
        lookMount = 0
    }
    local newOutfitmale = {
        lookType = 1673,
        lookHead = 120,
        lookBody = 172,
        lookLegs = 0,
        lookFeet = 41,
        lookAddons = 0,
        lookMount = 0
    }

    if player:getSex() == PLAYERSEX_FEMALE then
        addEvent(function(cid, prev)
            local player = Creature(cid)
            if not player then
                return
            end
            player:setOutfit(prev)
        end, 1500, player:getId(), prevOutfit)

        player:setOutfit(newOutfitfemale)
    end
    if player:getSex() == PLAYERSEX_MALE then
        addEvent(function(cid, prev)
            local player = Creature(cid)
            if not player then
                return
            end
            player:setOutfit(prev)
        end, 1500, player:getId(), prevOutfit)

        player:setOutfit(newOutfitmale)
    end
		if giveMiningExperience(player:getId(), experienceRan) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on mining job.")
			
		end
        if object.text then
            local rand_text = math.random(#object.text)
            doCreatureSay(cid, object.text[rand_text], TALKTYPE_ORANGE_1, nil, nil, toPosition)
            doSendMagicEffect(toPosition, CONST_ME_POFF)
            return true
        end
 
     
        local rand_event = math.random(200)
        if rand_event == 200 then
            doSendMagicEffect(toPosition, 33)
            return true
        end
     
        local rand_break = math.random(100)
        if rand_break <= object.break_chance then
            doTransformItem(itemEx.uid, object.lower_tier)
            doSendMagicEffect(toPosition, CONST_ME_POFF)
        end
 
        local rand_reward = math.random(100)
        if rand_reward > (object.loot_chance + 10) then
            doSendMagicEffect(toPosition, 255)
            return true
        end
        doSendMagicEffect(toPosition, 255)
       
        local multiple = 1
        local rand_multiple = math.random(15)
        if rand_multiple == 15 then
            multiple = math.random(2, 3)
        end
        for i = 1, multiple do
            local loot_table = object.normal_loot_table
            local rand_loot = math.random(100)
            if rand_loot < 6 then
                loot_table = object.rare_loot_table
            elseif rand_loot < 21 then
                loot_table = object.semi_rare_loot_table
            end
            local rand_item = math.random(#loot_table)
            rand_item = loot_table[rand_item]
            if rand_item.count == 1 then
                doPlayerAddItem(cid, rand_item.item_id, 1, true)
            else
                local new_count = math.random(rand_item.count)
                doPlayerAddItem(cid, rand_item.item_id, new_count, true)
            end
        end
 
    end
 
    return true
end

AdentisPick:id(8980)
AdentisPick:register()