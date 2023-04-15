local gearStor = Storage.Levels.Stats.GearScore
local prestige = Storage.Levels.Stats.Prestige
local config = {
    ----------------------> Normal Items <-------------------
    [34843] = {type = "head", value = 25, level = 0}, -- Covenant Helmet
    [34844] = {type = "armor", value = 35, level = 0}, -- Covenant Armor
    [35061] = {type = "legs", value = 30, level = 0}, -- Covenant Legs
    [35062] = {type = "feet", value = 20, level = 0}, -- Covenant Boots
    [35063] = {type = "head", value = 25, level = 0}, -- Dark Crystal Helmet
    [35064] = {type = "armor", value = 30, level = 0}, -- Dark Crystal Armor
    [35065] = {type = "legs", value = 25, level = 0}, -- Dark Crystal Legs
    [35066] = {type = "feet", value = 25, level = 0}, -- Dark Crystal Boots
    [35084] = {type = "head", value = 22, level = 0}, -- Helmet of Fate
    [35085] = {type = "armor", value = 20, level = 0}, -- Armor of Fate
    [35086] = {type = "legs", value = 17, level = 0}, -- Legs of Fate
    [35087] = {type = "feet", value = 10, level = 0}, -- Boots of Fate
    [35088] = {type = "hand", value = 12, level = 0}, -- Dark Crystal Wand
    [35089] = {type = "hand", value = 8, level = 0}, -- Wand of Flame
    [35090] = {type = "hand", value = 8, level = 0}, -- Rod of Flame
    [34641] = {type = "hand", value = 28, level = 0}, -- Malachite Club
    [34642] = {type = "hand", value = 28, level = 0}, -- Malachite Sword
    [34644] = {type = "hand", value = 28, level = 0}, -- Malachite Axe
    [34806] = {type = "hand", value = 20, level = 0}, -- Graviton Crossbow
    [34807] = {type = "hand", value = 20, level = 0}, -- The Face Crusher
    [35044] = {type = "hand", value = 16, level = 0}, -- Vorpal Flame
    [41916] = {type = "head", value = 30, level = 0}, -- Elven Hood Helmet
    [41917] = {type = "armor", value = 35, level = 0}, -- Elven Hood Armor
    [41918] = {type = "legs", value = 25, level = 0}, -- Elven Hood Legs 
    [41919] = {type = "feet", value = 20, level = 0}, -- Elven Hood Boots
    [41920] = {type = "head", value = 40, level = 0}, -- Ice Hitter Helmet
    [41921] = {type = "head", value = 30, level = 0}, -- Frozen Helmet
    [41922] = {type = "armor", value = 18, level = 0}, -- Frozen Armor
    [41923] = {type = "legs", value = 16, level = 0}, -- Frozen Legs
    [41924] = {type = "feet", value = 15, level = 0}, -- Frozen Boots
    [41925] = {type = "head", value = 8, level = 0}, -- Kro'kron Helmet
    [41753] = {type = "armor", value = 8, level = 0}, -- Kro'kron Armor
    [41754] = {type = "legs", value = 6, level = 0}, -- Kro'kron Legs
    [41755] = {type = "feet", value = 3, level = 0}, -- Kro'kron Boots
    [41756] = {type = "head", value = 22, level = 0}, -- Vinguard Helmet
    [41757] = {type = "armor", value = 24, level = 0}, -- Vinguard Armor
    [41758] = {type = "legs", value = 18, level = 0}, -- Vinguard Legs
    [41708] = {type = "feet", value = 15, level = 0}, -- Vinguard Boots
    [41709] = {type = "head", value = 35, level = 0}, -- Glorious Helmet
    [41710] = {type = "armor", value = 35, level = 0}, -- Glorious Plate
    [41711] = {type = "legs", value = 30, level = 0}, -- Glorious Legs
    [41687] = {type = "feet", value = 22, level = 0}, -- Glorious Boots
    [41688] = {type = "head", value = 8, level = 0}, -- Brutal Gladiator Helmet
    [41689] = {type = "armor", value = 10, level = 0}, -- Brutal Gladiator Armor
    [41683] = {type = "legs", value = 8, level = 0}, -- Brutal Gladiator legs
    [41684] = {type = "feet", value = 6, level = 0}, -- Brutal Gladiator boots
    [41685] = {type = "head", value = 50, level = 0}, -- Warfront Helmet
    [41686] = {type = "armor", value = 60, level = 0}, -- Warfront Armor
    [41567] = {type = "legs", value = 55, level = 0}, -- Warfront Legs
    [41568] = {type = "feet", value = 40, level = 0}, -- Warfront Boots
    [41569] = {type = "head", value = 45, level = 0}, -- Fanged Slayer Helmet
    [41570] = {type = "armor", value = 60, level = 0}, -- Fanged Slayer Armor
    [41571] = {type = "legs", value = 60, level = 0}, -- Fanged Slayer Legs
    [41572] = {type = "feet", value = 50, level = 0}, -- Fanged Slayer Boots
    [41573] = {type = "head", value = 45, level = 0}, -- Regalia of Bound Helmet
    [41574] = {type = "armor", value = 70, level = 0}, -- Regalia of Bound Armor
    [41575] = {type = "legs", value = 60, level = 0}, -- Regalia of Bound Legs
    [41576] = {type = "hand", value = 70, level = 0}, -- Regalia of Bound Shield
    [41577] = {type = "feet", value = 55, level = 0}, -- Regalia of Bound Boots
    [41461] = {type = "hand", value = 40, level = 0}, -- Elven Hood Quiver
    [41462] = {type = "hand", value = 60, level = 0}, -- Starkoh Quiver
    [41457] = {type = "hand", value = 20, level = 0}, -- Peaceful Quiver
    [41465] = {type = "head", value = 35, level = 0}, -- Onslaught Helmet
    [41466] = {type = "armor", value = 50, level = 0}, -- Onslaught Armor
    [41467] = {type = "legs", value = 35, level = 0}, -- Onslaught Legs
    [41468] = {type = "feet", value = 30, level = 0}, -- Onslaught Boots
    [36814] = {type = "hand", value = 15, level = 0}, -- Ogreskull Shield
    [36813] = {type = "hand", value = 15, level = 0}, -- Sepulcher Armor
    [36809] = {type = "hand", value = 25, level = 0}, -- Scourgelord Shield
    [36808] = {type = "legs", value = 8, level = 0}, -- Scourgelord Legs
    [36807] = {type = "head", value = 12, level = 0}, -- Scourgelord Helmet
    [36806] = {type = "feet", value = 4, level = 0}, -- Funerary Boots
    [36805] = {type = "legs", value = 4, level = 0}, -- Funerary Legs
    [36804] = {type = "armor", value = 4, level = 0}, -- Funerary armor
    [36803] = {type = "head", value = 4, level = 0}, -- Funerary helmet
    [36802] = {type = "head", value = 15, level = 0}, -- Gul'dan Helmet
    [36800] = {type = "armor", value = 14, level = 0}, -- Gronnstalker Armor
    [36799] = {type = "legs", value = 12, level = 0}, -- Gronnstalker Legs
    [36798] = {type = "feet", value = 8, level = 0}, -- Gronnstalker Boots
    [36857] = {type = "hand", value = 25, level = 0}, -- Tentacle Sword
    [36866] = {type = "hand", value = 25, level = 0}, -- Tentacle Mace
    [36865] = {type = "head", value = 20, level = 0}, -- Tentacle Helmet
    [36864] = {type = "armor", value = 25, level = 0}, -- Tentacle Armor
    [36863] = {type = "legs", value = 30, level = 0}, -- Tentacle Armor
    [36862] = {type = "hand", value = 25, level = 0}, -- Tentacle Bow
    [36861] = {type = "feet", value = 20, level = 0}, -- Tentacle Boots
    [36860] = {type = "hand", value = 25, level = 0}, -- Tentacle Spellbook
    [36859] = {type = "hand", value = 25, level = 0}, -- Tentacle Axe
    [36858] = {type = "hand", value = 25, level = 0}, -- Tentacle Wand
    [36952] = {type = "hand", value = 15, level = 0}, -- Defias Axe
    [36951] = {type = "hand", value = 15, level = 0}, -- Defias Wand
    [36957] = {type = "hand", value = 15, level = 0}, -- Defias Bow
    [36950] = {type = "hand", value = 14, level = 0}, -- Defias Shield
    [36429] = {type = "hand", value = 15, level = 0}, -- Defias Club
    [36428] = {type = "hand", value = 15, level = 0}, -- Defias Sword
    [39405] = {type = "hand", value = 20, level = 0}, -- Plagueheart Sword
    [39406] = {type = "hand", value = 22, level = 0}, -- Aldor Axe
    [39404] = {type = "hand", value = 10, level = 0}, -- Sanctified Wand
    [39403] = {type = "feet", value = 10, level = 0}, -- Sanctified boots
    [39402] = {type = "legs", value = 10, level = 0}, -- Sanctified pants
    [39401] = {type = "armor", value = 10, level = 0}, -- Sanctified armor
    [39400] = {type = "head", value = 10, level = 0}, -- Sanctified helmet
    [39399] = {type = "feet", value = 12, level = 0}, -- Defias Boots
    [39398] = {type = "legs", value = 18, level = 0}, -- Defias Legs
    [39397] = {type = "armor", value = 20, level = 0}, -- Defias Armor
    [39860] = {type = "head", value = 15, level = 0}, -- Defias Helmet
    [39859] = {type = "hand", value = 30, level = 0}, -- Stalker Axe
    [39858] = {type = "hand", value = 30, level = 0}, -- Colossal Sword
    [39856] = {type = "hand", value = 22, level = 0}, -- Hollow Spellbook
    [39854] = {type = "hand", value = 18, level = 0}, -- Deathbone Spellbook
    [40730] = {type = "legs", value = 40, level = 0}, -- Phantomas Legs
    [39278] = {type = "feet", value = 35, level = 0}, -- Phantomas boots
    [40728] = {type = "armor", value = 35, level = 0}, -- Deathbone Armor
    [40729] = {type = "armor", value = 35, level = 0}, -- Darkbone Armor
    [40727] = {type = "legs", value = 60, level = 0}, -- Exalted legs
    [40723] = {type = "backpack", value = 15, level = 0}, -- Unchained Backpack
    [40722] = {type = "feet", value = 10, level = 0}, -- Unchained boots
    [40721] = {type = "legs", value = 15, level = 0}, -- Unchained legs
    [40720] = {type = "armor", value = 20, level = 0}, -- Unchained armor
    [40719] = {type = "head", value = 15, level = 0}, -- Unchained helmet
    [40713] = {type = "head", value = 25, level = 0}, -- Saronite helmet
    [40714] = {type = "armor", value = 30, level = 0}, -- Saronite Armor
    [40715] = {type = "legs", value = 20, level = 0}, -- Saronite Legs
    [40716] = {type = "feet", value = 15, level = 0}, -- Saronite Boots
    [40717] = {type = "backpack", value = 15, level = 0}, -- Saronite backpack
    [40718] = {type = "hand", value = 22, level = 0}, -- Saronite Shield
    [40711] = {type = "hand", value = 20, level = 0}, -- Relentless Shield
    [40712] = {type = "backpack", value = 15, level = 0}, -- Relentless backpack
    [40707] = {type = "head", value = 20, level = 0}, -- Relentless helmet
    [40708] = {type = "armor", value = 20, level = 0}, -- Relentless Armor
    [40709] = {type = "legs", value = 15, level = 0}, -- Relentless Legs
    [40710] = {type = "feet", value = 10, level = 0}, -- Relentless Boots
    [40694] = {type = "feet", value = 12, level = 0}, -- Bloodscale Boots
    [40693] = {type = "shield", value = 25, level = 0}, -- Bloodscale Shield
    [40692] = {type = "hand", value = 30, level = 0}, -- Bloodscale Bow
    [40691] = {type = "hand", value = 30, level = 0}, -- Bloodscale Wand
    [40690] = {type = "hand", value = 30, level = 0}, -- Bloodscale GreatAxe
    [40689] = {type = "hand", value = 30, level = 0}, -- Bloodscale Club
    [40688] = {type = "hand", value = 30, level = 0}, -- Bloodscale Axe
    [40687] = {type = "backpack", value = 18, level = 0}, -- Bloodscale Backpack
    [40686] = {type = "legs", value = 20, level = 0}, -- Bloodscale Legs
    [41785] = {type = "head", value = 25, level = 0}, -- Bloodscale Helmet
    [41780] = {type = "armor", value = 30, level = 0}, -- Bloodscale Armor
    [39279] = {type = "head", value = 35, level = 0}, -- Allister Helmet
    [39277] = {type = "hand", value = 30, level = 0}, -- Frozen Hell Wand
    [39276] = {type = "hand", value = 30, level = 0}, -- Frozen Hell Axe
    [39275] = {type = "hand", value = 30, level = 0}, -- Frozen Hell Bow
    [39274] = {type = "hand", value = 30, level = 0}, -- Frozen Hell Shield
    [39271] = {type = "hand", value = 25, level = 0}, -- Shattered Rod
    [39270] = {type = "hand", value = 25, level = 0}, -- Shattered Sword
    [39269] = {type = "armor", value = 45, level = 0}, -- Retching Armor
    [39268] = {type = "armor", value = 35, level = 0}, -- Betrayed Armor
    [41472] = {type = "feet", value = 35, level = 0}, -- Shattered Boots
    [41471] = {type = "legs", value = 35, level = 0}, -- Shattered Legs
    [41470] = {type = "armor", value = 35, level = 0}, -- Shattered Armor
    [41469] = {type = "head", value = 35, level = 0}, -- Shattered Helmet
    [39247] = {type = "backpack", value = 15, level = 0}, -- Foresworn Backpack
    [39248] = {type = "head", value = 8, level = 0}, -- Foresworn Helmet
    [39249] = {type = "armor", value = 14, level = 0}, -- Foresworn Armor
    [39250] = {type = "legs", value = 10, level = 0}, -- Foresworn Legs
    [39251] = {type = "feet", value = 5, level = 0}, -- Foresworn Boots
    [41473] = {type = "head", value = 35, level = 0}, -- Scouting Helmet
    [41475] = {type = "armor", value = 45, level = 0}, -- Scouting Armor
    [41476] = {type = "legs", value = 35, level = 0}, -- Scouting Legs
    [41477] = {type = "feet", value = 20, level = 0}, -- Scouting Boots
    [41674] = {type = "head", value = 80, level = 0}, -- Wrath of the Lich Helmet
    [41455] = {type = "head", value = 45, level = 0}, -- Lightbringer Helmet
    [41453] = {type = "armor", value = 60, level = 0}, -- Lightbringer Armor
    [39239] = {type = "legs", value = 50, level = 0}, -- Lightbringer Legs
    [39240] = {type = "feet", value = 30, level = 0}, -- Lightbringer Boots
    [39241] = {type = "backpack", value = 25, level = 0}, -- Lightbringer Backpack
    [39242] = {type = "hand", value = 50, level = 0}, -- Lightbringer Shield
    [39252] = {type = "backpack", value = 25, level = 0}, -- Lightforged Backpack
    [39253] = {type = "head", value = 55, level = 0}, -- Lightforged Cask
    [39254] = {type = "armor", value = 65, level = 0}, -- Lightforged Armor
    [39255] = {type = "legs", value = 50, level = 0}, -- Lightforged Pants
    [39256] = {type = "feet", value = 30, level = 0}, -- Lightforged Boots
    [39257] = {type = "head", value = 55, level = 0}, -- Lightforged Crown
    [39258] = {type = "feet", value = 30, level = 0}, -- Lightforged Mesh Boots
    [39259] = {type = "backpack", value = 25, level = 0}, -- Darkshore Backpack
    [39260] = {type = "head", value = 45, level = 0}, -- Darkshore Helmet
    [39261] = {type = "armor", value = 55, level = 0}, -- Darkshore Armor
    [39262] = {type = "legs", value = 45, level = 0}, -- Darkshore Legs
    [39263] = {type = "feet", value = 35, level = 0}, -- Darkshore Boots
    [39272] = {type = "hand", value = 40, level = 0}, -- Guardless Axe
    [39273] = {type = "backpack", value = 65, level = 0}, -- Alchemist Backpack
    [39280] = {type = "backpack", value = 25, level = 0}, -- Sun Crystal Backpack
    [39281] = {type = "hand", value = 50, level = 0}, -- Darkshore Sword
    [39282] = {type = "hand", value = 50, level = 0}, -- Darkshore Axe
    [39283] = {type = "hand", value = 50, level = 0}, -- Darkshore Wand
    [39284] = {type = "hand", value = 50, level = 0}, -- Darkshore Bow
    [39285] = {type = "hand", value = 50, level = 0}, -- Darkshore Rod
    [39286] = {type = "hand", value = 50, level = 0}, -- Lightforged Sword
    [39288] = {type = "hand", value = 50, level = 0}, -- Lightforged Axe
    [39287] = {type = "hand", value = 50, level = 0}, -- Lightforged Club
    [39289] = {type = "hand", value = 50, level = 0}, -- Darkshore Club
    [39290] = {type = "hand", value = 50, level = 0}, -- Darkshore Elven Bow
    [39215] = {type = "hand", value = 70, level = 0}, -- Divine Wand
    [39216] = {type = "hand", value = 70, level = 0}, -- Divine Axe
    [39217] = {type = "hand", value = 70, level = 0}, -- Divine Mace
    [39218] = {type = "hand", value = 70, level = 0}, -- Divine Sword
    [39219] = {type = "hand", value = 70, level = 0}, -- Divine Bow
    [12508] = {type = "head", value = 100, level = 1}, -- Obscurus Helmet
    [39220] = {type = "hand", value = 75, level = 0}, -- Obscurus Sword
    [39221] = {type = "hand", value = 75, level = 0}, -- Obscurus Bow
    [39222] = {type = "hand", value = 75, level = 0}, -- Obscurus Mace
    [38138] = {type = "hand", value = 75, level = 0}, -- Obscurus Axe
    [41786] = {type = "backpack", value = 35, level = 0}, -- Megalithe Backpack
    [41787] = {type = "hand", value = 80, level = 0}, -- Megalithe Slayer
    [41788] = {type = "hand", value = 80, level = 0}, -- Megalithe Sword
    [41789] = {type = "hand", value = 80, level = 0}, -- Megalithe Scythe
    [41790] = {type = "hand", value = 80, level = 0}, -- Megalithe Hammer
    [41791] = {type = "hand", value = 80, level = 0}, -- Megalithe Axe
    [41774] = {type = "head", value = 65, level = 0}, -- Cruel's Gladiator Helmet
    [41775] = {type = "backpack", value = 40, level = 0}, -- Cruel's Gladiator Backpack
    [41776] = {type = "armor", value = 80, level = 0}, -- Cruel's Gladiator Armor
    [41777] = {type = "legs", value = 65, level = 0}, -- Cruel's Gladiator Legs
    [41778] = {type = "hand", value = 90, level = 0}, -- Cruel's Gladiator Rod
    [41779] = {type = "hand", value = 90, level = 0}, -- Cruel's Gladiator Wand
    [41781] = {type = "hand", value = 90, level = 0}, -- Cruel's Gladiator Bow
    [41782] = {type = "hand", value = 90, level = 0}, -- Cruel's Gladiator Crossbow
    [41783] = {type = "feet", value = 50, level = 0}, -- Cruel's Gladiator Boots
    [41784] = {type = "hand", value = 70, level = 0}, -- Cruel's Gladiator Shield
    [40695] = {type = "head", value = 85, level = 0}, -- Radiant Helmet
    [40696] = {type = "armor", value = 100, level = 1}, -- Radiant Armor
    [40697] = {type = "hand", value = 90, level = 0}, -- Radiant Crossbow
    [40698] = {type = "legs", value = 90, level = 0}, -- Radiant Legs
    [40699] = {type = "feet", value = 75, level = 0}, -- Radiant Boots
    [40700] = {type = "backpack", value = 50, level = 0}, -- Radiant Backpack
    [40724] = {type = "hand", value = 65, level = 0}, -- Vanguard Shield
    [40725] = {type = "backpack", value = 35, level = 0}, -- Vanguard Backpack
    [40726] = {type = "feet", value = 35, level = 0}, -- Vanguard Boots
    [40731] = {type = "hand", value = 65, level = 0}, -- Vanguard Sword
    [40732] = {type = "hand", value = 65, level = 0}, -- Vanguard Mace
    [40733] = {type = "hand", value = 65, level = 0}, -- Vanguard Wand
    [40734] = {type = "hand", value = 65, level = 0}, -- Vanguard Bow
    [40735] = {type = "head", value = 145, level = 1}, -- Infernatil Helmet
    [39855] = {type = "hand", value = 150, level = 1}, -- Vengeful Spellbook
    [39857] = {type = "hand", value = 115, level = 1}, -- Tyrant Spellbook
    [39407] = {type = "hand", value = 70, level = 0}, -- Kirin Wand
    [39408] = {type = "hand", value = 70, level = 0}, -- Kirin Club
    [39409] = {type = "hand", value = 70, level = 0}, -- Kirin Axe
    [39410] = {type = "hand", value = 70, level = 0}, -- Kirin Sword
    [39411] = {type = "backpack", value = 35, level = 0}, -- Kirin backpack
    [39412] = {type = "hand", value = 70, level = 0}, -- Kirin Scythe
    [39424] = {type = "head", value = 60, level = 0}, -- Kirin Helmet
    [39425] = {type = "armor", value = 75, level = 0}, -- Kirin Armor
    [39426] = {type = "legs", value = 60, level = 0}, -- Kirin Legs
    [39427] = {type = "hand", value = 60, level = 0}, -- Kirin Boots
    [34631] = {type = "hand", value = 85, level = 0}, -- Frost Bow
    [34632] = {type = "hand", value = 85, level = 0}, -- Frost Axe
    [36810] = {type = "hand", value = 85, level = 0}, -- Vidictive Sword
    [36953] = {type = "legs", value = 45, level = 0}, -- Judgement Legs
    [36954] = {type = "armor", value = 55, level = 0}, -- Judgement Armor
    [36955] = {type = "feet", value = 25, level = 0}, -- Judgement Boots
    [36956] = {type = "head", value = 45, level = 0}, -- Judgement Helmet
    [34842] = {type = "backpack", value = 30, level = 0}, -- Halloween Backpack
    [42040] = {type = "hand", value = 20, level = 0}, -- Wood Quiver
    [42041] = {type = "hand", value = 40, level = 0}, -- Refined Wood Quiver
    [42042] = {type = "hand", value = 60, level = 0}, -- Ornamented Wood Quiver
      ----------------------> Items Upgrade Priests/Mages <-------------------
    [7491] = {type = "ring", value = 30, level = 0}, -- Emeraude Ring
    [34784] = {type = "ring", value = 30, level = 0}, -- Emeraude Ring +1
    [34785] = {type = "ring", value = 30, level = 0}, -- Emeraude Ring +3
    [34769] = {type = "ring", value = 30, level = 0}, -- Emeraude Ring +5
    [7492] = {type = "necklace", value = 30, level = 0}, -- Emeraude Amulet
    [34770] = {type = "necklace", value = 30, level = 0}, -- Emeraude Amulet +1
    [35045] = {type = "necklace", value = 30, level = 0}, -- Emeraude Amulet +3
    [35046] = {type = "necklace", value = 30, level = 0}, -- Emeraude Amulet +5
    [8712] = {type = "necklace", value = 30, level = 0}, -- Labradorite Amulet
    [35047] = {type = "necklace", value = 30, level = 0}, -- Labradorite Amulet +1
    [35048] = {type = "necklace", value = 30, level = 0}, -- Labradorite Amulet +3
    [35049] = {type = "necklace", value = 30, level = 0}, -- Labradorite Amulet +5
    [8713] = {type = "ring", value = 30, level = 0}, -- Labradorite Ring
    [35050] = {type = "ring", value = 30, level = 0}, -- Labradorite Ring +1
    [35052] = {type = "ring", value = 30, level = 0}, -- Labradorite Ring +3
    [35058] = {type = "ring", value = 30, level = 0}, -- Labradorite Ring +5
    [8711] = {type = "ring", value = 30, level = 0}, -- Sapphire Ring
    [35059] = {type = "ring", value = 30, level = 0}, -- Sapphire Ring +1
    [35060] = {type = "ring", value = 30, level = 0}, -- Sapphire Ring +3
    [34841] = {type = "ring", value = 30, level = 0}, -- Sapphire Ring +5
    ----------------------------> Emblems <-----------------------
    [10159] = {type = "ammo", value = 50, level = 0}, -- Forest Emblem
    [10165] = {type = "ammo", value = 100, level = 1}, -- Celestial Emblem
    [10166] = {type = "ammo", value = 50, level = 0}, -- Necromantic Emblem
    [10167] = {type = "ammo", value = 50, level = 0}, -- Damned Emblem
    [10170] = {type = "ammo", value = 50, level = 0}, -- Emblem of Blessing
    [10169] = {type = "ammo", value = 100, level = 1}, -- Emblem of Cosmos
    [10290] = {type = "ammo", value = 100, level = 1}, -- Venom Emblem
    [10291] = {type = "ammo", value = 50, level = 0}, -- Emblem of the Sky
    [10292] = {type = "ammo", value = 50, level = 0}, -- Nature Emblem
    [10293] = {type = "ammo", value = 100, level = 1}, -- Division Emblem
    [10294] = {type = "ammo", value = 50, level = 0}, -- Fountain of youth Emblem
    [10295] = {type = "ammo", value = 100, level = 1}, -- Emblem of the People
    [10296] = {type = "ammo", value = 200, level = 2}, -- Supremacy Emblem
    [10297] = {type = "ammo", value = 100, level = 1}, -- Leaf Emblem
    [10298] = {type = "ammo", value = 250, level = 2}, -- Elemental Emblem
    [10299] = {type = "ammo", value = 150, level = 1}, -- Emblem of Magic
    [10300] = {type = "ammo", value = 200, level = 2}, -- Demoniac Emblem
    [10301] = {type = "ammo", value = 300, level = 3}, -- Divine Emblem
    [10289] = {type = "ammo", value = 100, level = 1}, -- Enigmatic Emblem
    ----------------------------> Amulets <-----------------------
    [42062] = {type = "necklace", value = 30, level = 0}, -- Endless Amulet
    [12582] = {type = "necklace", value = 30, level = 0}, -- Divine Amulet
    [12583] = {type = "necklace", value = 30, level = 0}, -- Star Amulet
    [12584] = {type = "necklace", value = 30, level = 0}, -- Stranger Amulet
    [12585] = {type = "necklace", value = 30, level = 0}, -- Lotus Amulet
    [12586] = {type = "necklace", value = 3000, level = 30}, -- Elemental Amulet onEquip
    [12588] = {type = "necklace", value = 3000, level = 30}, -- Elemental Amulet
    ----------------------------> Rings <-----------------------
    [12588] = {type = "ring", value = 30, level = 0}, -- Ornamented Ring
    [12599] = {type = "ring", value = 50, level = 0}, -- Steampunk Ring
    [12600] = {type = "ring", value = 80, level = 0}, -- Evil Eye Ring
    [12597] = {type = "ring", value = 115, level = 1}, -- Winged Ring
    [12601] = {type = "ring", value = 200, level = 1}, -- Epic Ring
     ----------------------------> Items 12.90 <-----------------------
    [42088] = {type = "armor", value = 200, level = 2}, -- Spiritthorn Armor
    [42089] = {type = "head", value = 200, level = 2}, -- Spiritthorn Helmet
    [42090] = {type = "head", value = 200, level = 2}, -- Alicorn Headguard
    [42091] = {type = "head", value = 200, level = 2}, -- Arcanomancer Regalia
    [42092] = {type = "head", value = 200, level = 2}, -- Arboreal Crown
    [32448] = {type = "hand", value = 225, level = 2}, -- Naga sword
    [32449] = {type = "hand", value = 225, level = 2}, -- Naga axe
    [33429] = {type = "hand", value = 225, level = 2}, -- Naga club
    [33479] = {type = "feet", value = 100, level = 1}, -- Frostflower boots
    [33930] = {type = "hand", value = 225, level = 2}, -- Naga crossbow
    [33931] = {type = "feet", value = 100, level = 1}, -- Feverbloom Boots
    [33932] = {type = "hand", value = 225, level = 2}, -- Naga wand
    [18503] = {type = "hand", value = 225, level = 2}, -- Naga wand +1
    [18504] = {type = "hand", value = 225, level = 2}, -- Naga wand +3
    [18505] = {type = "hand", value = 225, level = 2}, -- Naga wand +5
    [33933] = {type = "hand", value = 225, level = 2}, -- Naga rod
    [18506] = {type = "hand", value = 225, level = 2}, -- Naga rod +1
    [18507] = {type = "hand", value = 225, level = 2}, -- Naga rod +3
    [18508] = {type = "hand", value = 225, level = 2}, -- Naga rod +5
    [33946] = {type = "legs", value = 200, level = 2}, -- Dawnfire Sherwani
    [33947] = {type = "armor", value = 200, level = 2}, -- Midnight Tunic
    [33948] = {type = "legs", value = 200, level = 2}, -- Dawnfire Pantaloons
    [33949] = {type = "legs", value = 200, level = 2}, -- Midnight Sarong
    [42093] = {type = "hand", value = 200, level = 2}, -- Arboreal Tome
    [42094] = {type = "hand", value = 200, level = 2}, -- Arcanomancer Folio
    ----------------------------> Rare Items <-----------------------
    [35200] = {type = "head", value = 210, level = 2}, -- Soulfire Helmet
    [35201] = {type = "head", value = 230, level = 2}, -- Evermoon Helmet
    [35197] = {type = "hand", value = 230, level = 2}, -- Evermoon Shield
    [35199] = {type = "feet", value = 130, level = 1}, -- Evermoon Boots
    [35198] = {type = "armor", value = 230, level = 2}, -- Evermoon Armor
    [35202] = {type = "legs", value = 230, level = 2}, -- Evermoon Legs
    [24332] = {type = "hand", value = 135, level = 1}, -- Rod of Venom
    [20624] = {type = "hand", value = 135, level = 1}, -- Frigost Wand
    [41481] = {type = "hand", value = 135, level = 1}, -- Frigost Wand +1
    [41482] = {type = "hand", value = 135, level = 1}, -- Frigost Wand +3
    [41483] = {type = "hand", value = 135, level = 1}, -- Frigost Wand +5
    [20625] = {type = "hand", value = 250, level = 2}, -- Ghost Spellbook
    [33550] = {type = "armor", value = 250, level = 2}, -- Bone Armor
    [41760] = {type = "hand", value = 185, level = 1}, -- Dark Bone Shield
    [41761] = {type = "hand", value = 200, level = 2}, -- Skull shield of the depth
    [41762] = {type = "hand", value = 200, level = 2}, -- Skull spellbook of the depth
    [41556] = {type = "head", value = 200, level = 2}, -- Skull helmet of the depth
    [41480] = {type = "armor", value = 230, level = 2}, -- Skull armor of the depth
    [41479] = {type = "legs", value = 200, level = 2}, -- Skull legs of the depth
    [41474] = {type = "feet", value = 115, level = 1}, -- Skull boots of the depth
    [41456] = {type = "hand", value = 230, level = 2}, -- Skull axe of the depth
    [41454] = {type = "hand", value = 230, level = 2}, -- Skull hammer of the depth
    [41452] = {type = "hand", value = 230, level = 2}, -- Skull bow of the depth
    [41451] = {type = "hand", value = 230, level = 2}, -- Skull crossbow of the depth
    [41450] = {type = "hand", value = 300, level = 3}, -- Eagletalon Axe
    [41449] = {type = "hand", value = 300, level = 3}, -- Eagletalon Bow
    [39183] = {type = "hand", value = 300, level = 3}, -- Eagletalon Club
    [39184] = {type = "hand", value = 300, level = 3}, -- Eagletalon Sword
    [41448] = {type = "head", value = 230, level = 2}, -- Dreadwake Helmet
    [41438] = {type = "armor", value = 230, level = 2}, -- Dreadwake Armor
    [41428] = {type = "legs", value = 230, level = 2}, -- Dreadwake Legs
    [41427] = {type = "feet", value = 130, level = 1}, -- Dreadwake Boots
    [41313] = {type = "hand", value = 230, level = 2}, -- Dreadwake Shield
    [41314] = {type = "hand", value = 230, level = 2}, -- Dreadwake Sword
    [41315] = {type = "hand", value = 230, level = 2}, -- Dreadwake Axe
    [41316] = {type = "hand", value = 230, level = 2}, -- Dreadwake Club
    [40959] = {type = "hand", value = 230, level = 2}, -- Dreadwake Bow
    [39180] = {type = "hand", value = 230, level = 2}, -- Skull Wand of the Depth
    [39181] = {type = "armor", value = 280, level = 2}, -- Tentugly's armor
    [39182] = {type = "legs", value = 250, level = 2}, -- Tentugly's Legs
    [40855] = {type = "hand", value = 300, level = 3}, -- Tentugly's wand
    [41485] = {type = "hand", value = 250, level = 2}, -- Tentugly's Spellbook
    [39190] = {type = "hand", value = 225, level = 2}, -- Wrath of Nature
    [39191] = {type = "hand", value = 225, level = 2}, -- Spark of Demeter
    [39192] = {type = "hand", value = 225, level = 2}, -- Enlighted of Dryad's
    [40786] = {type = "hand", value = 225, level = 2}, -- Frozen Hell 
    [41888] = {type = "hand", value = 300, level = 3}, -- Bonelord Tome
    [41813] = {type = "head", value = 300, level = 3}, -- Magic Hat
    ---------------------------- Sets -----------------------
    [12505] = {type = "head", value = 300, level = 3}, -- Ornamented Helmet
    [12506] = {type = "armor", value = 300, level = 3}, -- Ornamented Armor
    [12507] = {type = "legs", value = 300, level = 3}, -- Ornamented Legs
    [12540] = {type = "head", value = 500, level = 5}, -- Ekatrix Helmet
    [12542] = {type = "hand", value = 500, level = 5}, -- Ekatrix Rod
    [18497] = {type = "hand", value = 500, level = 5}, -- Ekatrix Rod +1
    [18498] = {type = "hand", value = 500, level = 5}, -- Ekatrix Rod +3
    [18499] = {type = "hand", value = 500, level = 5}, -- Ekatrix Rod +5
    [12544] = {type = "armor", value = 500, level = 5}, -- Ekatrix Armor
    [12559] = {type = "hand", value = 500, level = 5}, -- Ekatrix Shield
    [12560] = {type = "legs", value = 500, level = 5}, -- Ekatrix Legs
    [12561] = {type = "feet", value = 500, level = 5}, -- Ekatrix Boots
    [13030] = {type = "feet", value = 500, level = 5}, -- Pair of Ekatrix Boots (only for security)
    [13031] = {type = "feet", value = 500, level = 5}, -- Worn Ekatrix Boots ( only for security )
    [12562] = {type = "hand", value = 500, level = 5}, -- Lurker Mace
    [12563] = {type = "hand", value = 500, level = 5}, -- Lurker Axe
    [12564] = {type = "hand", value = 500, level = 5}, -- Lurker Sword
    [12565] = {type = "head", value = 500, level = 5}, -- Lurker Helmet
    [12566] = {type = "hand", value = 500, level = 5}, -- Lurker Shield
    [12567] = {type = "armor", value = 500, level = 5}, -- Lurker Armor
    [12568] = {type = "legs", value = 500, level = 5}, -- Lurker Legs
    [12569] = {type = "feet", value = 500, level = 5}, -- Lurker Boots
    [13196] = {type = "feet", value = 500, level = 5}, -- Worn Lurker Boots (only for security)
    [13195] = {type = "feet", value = 500, level = 5}, -- Pair of Lurker Boots (only for security)
    [12570] = {type = "head", value = 500, level = 5}, -- Kraken Helmet
    [12571] = {type = "armor", value = 500, level = 5}, -- Kraken Armor
    [12572] = {type = "hand", value = 500, level = 5}, -- Kraken Spellbook
    [12573] = {type = "hand", value = 500, level = 5}, -- Kraken Wand
    [18500] = {type = "hand", value = 500, level = 5}, -- Kraken Wand +1
    [18501] = {type = "hand", value = 500, level = 5}, -- Kraken Wand +3
    [18502] = {type = "hand", value = 500, level = 5}, -- Kraken Wand +5
    [12574] = {type = "legs", value = 500, level = 5}, -- Kraken Legs
    [12575] = {type = "feet", value = 500, level = 5}, -- Kraken Boots
    [13197] = {type = "feet", value = 500, level = 5}, -- Pair of Kraken Boots (only for security)
    [13198] = {type = "feet", value = 500, level = 5}, -- Worn Kraken Boots (only for security)
    [12576] = {type = "head", value = 500, level = 5}, -- Engraved Helmet
    [12577] = {type = "armor", value = 500, level = 5}, -- Engraved Armor
    [12578] = {type = "legs", value = 500, level = 5}, -- Engraved Legs
    [12579] = {type = "feet", value = 500, level = 5}, -- Engraved Boots
    [13213] = {type = "feet", value = 500, level = 5}, -- Pair of Engraved Helmet (only for security)
    [13214] = {type = "feet", value = 500, level = 5}, -- Worn Engraved Helmet (only for security)
    [12580] = {type = "hand", value = 500, level = 5}, -- Engraved Crossbow
    -------------- Sets Ancestral Rift -------------------
    [42063] = {type = "head", value = 750, level = 7}, -- Ancestral Evil Helmet
    [42064] = {type = "armor", value = 1000, level = 10}, -- Ancestral Evil Armor
    [42065] = {type = "legs", value = 850, level = 8}, -- Ancestral Evil Legs
    [42066] = {type = "feet", value = 800, level = 8}, -- Ancestral Evil Boots
    [41464] = {type = "hand", value = 1250, level = 12}, -- Ancestral Evil Bow
    [41463] = {type = "hand", value = 1250, level = 12}, -- Ancestral Evil Axe
    [39186] = {type = "hand", value = 1250, level = 12}, -- Ancestral Evil Wand
    [39193] = {type = "hand", value = 1250, level = 12}, -- Ancestral Evil Wand +1
    [39194] = {type = "hand", value = 1250, level = 12}, -- Ancestral Evil Wand +3
    [39195] = {type = "hand", value = 1250, level = 12}, -- Ancestral Evil Wand +5
    [39188] = {type = "hand", value = 1250, level = 12}, -- Ancestral Evil Club
    [39189] = {type = "head", value = 750, level = 7}, -- Ancestral Evil Mask
    [42067] = {type = "head", value = 750, level = 7}, -- Ancestral Rifter Helmet
    [42068] = {type = "armor", value = 1000, level = 10}, -- Ancestral Rifter Armor
    [42069] = {type = "legs", value = 850, level = 8}, -- Ancestral Rifter Legs
    [42070] = {type = "feet", value = 800, level = 8}, -- Ancestral Rifter Boots
    [24776] = {type = "hand", value = 1000, level = 10}, -- Ancestral Rifter Shield
    [24316] = {type = "hand", value = 1250, level = 12}, -- Ancestral Rifter Dagger
    [24317] = {type = "hand", value = 1250, level = 12}, -- Ancestral Rifter Rod
    [40785] = {type = "hand", value = 1250, level = 12}, -- Ancestral Rifter Rod +1
    [40745] = {type = "hand", value = 1250, level = 12}, -- Ancestral Rifter Rod +3
    [39171] = {type = "hand", value = 1250, level = 12}, -- Ancestral Rifter Rod +5
    [41460] = {type = "hand", value = 1250, level = 12}, -- Ancestral Rifter Scythe
    [39185] = {type = "hand", value = 1250, level = 12}, -- Ancestral Rifter Bow
    [39187] = {type = "hand", value = 1250, level = 12}, -- Ancestral Rifter Club
    ------------------------ Legendary Items -------------------
    [42037] = {type = "head", value = 1500, level = 15}, -- Legacy Helmet
    [42028] = {type = "head", value = 1500, level = 15}, -- Magic Helmet
    [42031] = {type = "hand", value = 3000, level = 30}, -- Dragonscale Aegis
    [42046] = {type = "hand", value = 2500, level = 25}, -- Dark Elder Shield
    [42026] = {type = "hand", value = 2500, level = 25}, -- Elder Shield
    [42029] = {type = "head", value = 1800, level = 18}, -- Burnished Helm of Might
    [42030] = {type = "head", value = 4000, level = 40}, -- Amber Chestplate
    [42048] = {type = "hand", value = 2500, level = 25}, -- Luminous Shield
    [41458] = {type = "backpack", value = 1000, level = 10}, -- Evil Backpack
    [24777] = {type = "hand", value = 5000, level = 50}, -- Master Evil Crossbow
    [40854] = {type = "hand", value = 5000, level = 50}, -- Hellfire Bow  
    [42044] = {type = "backpack", value = 500, level = 5}, -- Sun Backpack
    [42043] = {type = "backpack", value = 500, level = 5}, -- Night Backpack
    [12581] = {type = "backpack", value = 500, level = 5}, -- Diamond BackpackD
    [42033] = {type = "hand", value = 5000, level = 50}, -- Angelic Wand
    [40804] = {type = "hand", value = 5000, level = 50}, -- Angelic Wand +1
    [40805] = {type = "hand", value = 5000, level = 50}, -- Angelic Wand +3
    [40806] = {type = "hand", value = 5000, level = 50}, -- Angelic Wand +5
    [42036] = {type = "hand", value = 6000, level = 60}, -- Inferno Sword
    [42035] = {type = "hand", value = 5000, level = 50}, -- Night Heaven Sword
    [42038] = {type = "hand", value = 5000, level = 50}, -- Night Heaven Axe
    [42039] = {type = "hand", value = 3000, level = 30}, -- Night Heaven Spellbook
    [42045] = {type = "hand", value = 5000, level = 50}, -- Night Heaven Bow
    [41459] = {type = "hand", value = 1000, level = 10}, -- Demoniac Quiver
    [39173] = {type = "hand", value = 5000, level = 50}, -- Khazra Mace
    ------------------------ 13.10 -------------------
    [27216] = {type = "legs", value = 325, level = 3}, -- Anubis Legs
    [27217] = {type = "armor", value = 400, level = 4}, -- Anubis Armor
    [27218] = {type = "feet", value = 225, level = 2}, -- Anubis Boots
    [27219] = {type = "head", value = 290, level = 2}, -- Northren Helmet
    [27220] = {type = "legs", value = 245, level = 2}, -- Northren Legs
    [27221] = {type = "legs", value = 190, level = 1}, -- Screed Legs
    [27222] = {type = "armor", value = 320, level = 3}, -- Screed Armor
    [27223] = {type = "feet", value = 280, level = 2}, -- Bronze Boots
    [27224] = {type = "feet", value = 280, level = 2}, -- Mummy Boots
    [36817] = {type = "hand", value = 300, level = 3}, -- Mummy Spellbook
    [36819] = {type = "legs", value = 325, level = 3}, -- Mummy Skirt
    [41489] = {type = "backpack", value = 500, level = 5}, -- Anubis Backpack
     -------------- Chaos Items -------------------
     [29222] = {type = "hand", value = 1275, level = 12}, -- Legacy Fallen Sword
     [29223] = {type = "hand", value = 2550, level = 25}, -- Legacy Azure Sword
     [29224] = {type = "hand", value = 3825, level = 38}, -- Legacy Avalon Sword
     [29283] = {type = "hand", value = 5100, level = 51}, -- Abyssal Fallen Sword
     [29284] = {type = "hand", value = 6375, level = 63}, -- Abyssal Azure Sword
     [29285] = {type = "hand", value = 7650, level = 76}, -- Abyssal Avalon Sword
     [29253] = {type = "hand", value = 8925, level = 89}, -- Chaos Fallen Sword
     [29254] = {type = "hand", value = 10200, level = 100}, -- Chaos Azure Sword
     [29255] = {type = "hand", value = 11475, level = 115}, -- Chaos Avalon Sword
     [29228] = {type = "hand", value = 1275, level = 12}, -- Legacy Fallen Axe
     [29229] = {type = "hand", value = 2550, level = 25}, -- Legacy Azure Axe
     [29230] = {type = "hand", value = 3825, level = 38}, -- Legacy Avalon Axe
     [29289] = {type = "hand", value = 5100, level = 51}, -- Abyssal Fallen Axe
     [29290] = {type = "hand", value = 6375, level = 63}, -- Abyssal Azure Axe
     [29291] = {type = "hand", value = 7650, level = 76}, -- Abyssal Avalon Axe
     [29259] = {type = "hand", value = 8925, level = 89}, -- Chaos Fallen Axe
     [29260] = {type = "hand", value = 10200, level = 100}, -- Chaos Azure Axe
     [29261] = {type = "hand", value = 11475, level = 115}, -- Chaos Avalon Axe
     [29234] = {type = "hand", value = 1275, level = 12}, -- Legacy Fallen Club
     [29235] = {type = "hand", value = 2550, level = 25}, -- Legacy Azure Club
     [29236] = {type = "hand", value = 3825, level = 38}, -- Legacy Avalon Club
     [29295] = {type = "hand", value = 5100, level = 51}, -- Abyssal Fallen Club
     [29296] = {type = "hand", value = 6375, level = 63}, -- Abyssal Azure Club
     [29297] = {type = "hand", value = 7650, level = 76}, -- Abyssal Avalon Club
     [29265] = {type = "hand", value = 8925, level = 89}, -- Chaos Fallen Club
     [29266] = {type = "hand", value = 10200, level = 100}, -- Chaos Azure Club
     [29267] = {type = "hand", value = 11475, level = 115}, -- Chaos Avalon Club
     [29237] = {type = "hand", value = 1275, level = 12}, -- Legacy Fallen Bow
     [29238] = {type = "hand", value = 2550, level = 25}, -- Legacy Azure Bow
     [29239] = {type = "hand", value = 3825, level = 38}, -- Legacy Avalon Bow
     [29298] = {type = "hand", value = 5100, level = 51}, -- Abyssal Fallen Bow
     [29299] = {type = "hand", value = 6375, level = 63}, -- Abyssal Azure Bow
     [29300] = {type = "hand", value = 7650, level = 76}, -- Abyssal Avalon Bow
     [29268] = {type = "hand", value = 8925, level = 89}, -- Chaos Fallen Bow
     [29269] = {type = "hand", value = 10200, level = 100}, -- Chaos Azure Bow
     [29270] = {type = "hand", value = 11475, level = 115}, -- Chaos Avalon Bow
     [29240] = {type = "hand", value = 1275, level = 12}, -- Legacy Fallen Crossbow
     [29241] = {type = "hand", value = 2550, level = 25}, -- Legacy Azure Crossbow
     [29242] = {type = "hand", value = 3825, level = 38}, -- Legacy Avalon Crossbow
     [29301] = {type = "hand", value = 5100, level = 51}, -- Abyssal Fallen Crossbow
     [29302] = {type = "hand", value = 6375, level = 63}, -- Abyssal Azure Crossbow
     [29303] = {type = "hand", value = 7650, level = 76}, -- Abyssal Avalon Crossbow
     [29271] = {type = "hand", value = 8925, level = 89}, -- Chaos Fallen Crossbow
     [29272] = {type = "hand", value = 10200, level = 100}, -- Chaos Azure Crossbow
     [29273] = {type = "hand", value = 11475, level = 115}, -- Chaos Avalon Crossbow
     [29246] = {type = "hand", value = 1275, level = 12}, -- Legacy Fallen Rod
     [29247] = {type = "hand", value = 2550, level = 25}, -- Legacy Azure Rod
     [29248] = {type = "hand", value = 3825, level = 38}, -- Legacy Avalon Rod
     [29307] = {type = "hand", value = 5100, level = 51}, -- Abyssal Fallen Rod
     [29308] = {type = "hand", value = 6375, level = 63}, -- Abyssal Azure Rod
     [29309] = {type = "hand", value = 7650, level = 76}, -- Abyssal Avalon Rod
     [29277] = {type = "hand", value = 8925, level = 89}, -- Chaos Fallen Rod
     [29278] = {type = "hand", value = 10200, level = 100}, -- Chaos Azure Rod
     [29279] = {type = "hand", value = 11475, level = 115}, -- Chaos Avalon Rod
     [29243] = {type = "hand", value = 1275, level = 12}, -- Legacy Fallen Wand
     [29244] = {type = "hand", value = 2550, level = 25}, -- Legacy Azure Wand
     [29245] = {type = "hand", value = 3825, level = 38}, -- Legacy Avalon Wand
     [29304] = {type = "hand", value = 5100, level = 51}, -- Abyssal Fallen Wand
     [29305] = {type = "hand", value = 6375, level = 63}, -- Abyssal Azure Wand
     [29306] = {type = "hand", value = 7650, level = 76}, -- Abyssal Avalon Wand
     [29274] = {type = "hand", value = 8925, level = 89}, -- Chaos Fallen Wand
     [29275] = {type = "hand", value = 10200, level = 100}, -- Chaos Azure Wand
     [29276] = {type = "hand", value = 11475, level = 115}, -- Chaos Avalon Wand
     [25888] = {type = "ammo", value = 1000, level = 10}, -- Dragon Emblem
     [25945] = {type = "ammo", value = 3500, level = 35}, -- Awakening Emblem
     [29220] = {type = "ammo", value = 8000, level = 80}, -- Cryptic Dragon Egg
     ------------ Transcending Weapons ----------------
     [25900] = {type = "hand", value = 14000, level = 140}, -- Dimensional Blade
     [25901] = {type = "hand", value = 14000, level = 140}, -- Dimensional Axe
     [25902] = {type = "hand", value = 14000, level = 140}, -- Dimensional Chopper
     [25903] = {type = "hand", value = 14000, level = 140}, -- Dimensional Bow
     [25904] = {type = "hand", value = 14000, level = 140}, -- Dimensional Crossbow
     [25905] = {type = "hand", value = 14000, level = 140}, -- Dimensional Wand
     [25906] = {type = "hand", value = 14000, level = 140}, -- Dimensional Rod
     [25907] = {type = "hand", value = 16000, level = 160}, -- Primal Blade
     [25908] = {type = "hand", value = 16000, level = 160}, -- Primal Axe
     [25909] = {type = "hand", value = 16000, level = 160}, -- Primal Chopper
     [25910] = {type = "hand", value = 16000, level = 160}, -- Primal Bow
     [25911] = {type = "hand", value = 16000, level = 160}, -- Primal Crossbow
     [25912] = {type = "hand", value = 16000, level = 160}, -- Primal Wand
     [25913] = {type = "hand", value = 16000, level = 160}, -- Primal Rod
     [25914] = {type = "hand", value = 20000, level = 200}, -- Awakening Blade
     [25915] = {type = "hand", value = 20000, level = 200}, -- Awakening Axe
     [25916] = {type = "hand", value = 20000, level = 200}, -- Awakening Chopper
     [25917] = {type = "hand", value = 20000, level = 200}, -- Awakening Bow
     [25918] = {type = "hand", value = 20000, level = 200}, -- Awakening Crossbow
     [25921] = {type = "hand", value = 20000, level = 200}, -- Awakening Wand
     [25922] = {type = "hand", value = 20000, level = 200}, -- Awakening Rod
     ------------ Chaos Sets -------------------
     [40701] = {type = "head", value = 4000, level = 40}, -- Cataclysm Helmet
     [40702] = {type = "armor", value = 6000, level = 60}, -- Cataclysm Armor
     [40703] = {type = "legs", value = 5000, level = 50}, -- Cataclysm Legs
     [40704] = {type = "feet", value = 3500, level = 35}, -- Cataclysm Boots
     [40705] = {type = "hand", value = 4000, level = 40}, -- Cataclysm Shield

     [39264] = {type = "head", value = 4000, level = 40}, -- Demacia Helmet
     [39265] = {type = "armor", value = 6000, level = 60}, -- Demacia Armor
     [39266] = {type = "legs", value = 5000, level = 50}, -- Demacia Legs
     [39267] = {type = "feet", value = 3500, level = 35}, -- Demacia Boots
     [39853] = {type = "hand", value = 4000, level = 40}, -- Demacia Shield
      ----------- Awakening / Transcending ----------
      [25934] = {type = "head", value = 6000, level = 60}, -- Awakening Cataclysm Helmet
      [25937] = {type = "armor", value = 8500, level = 85}, -- Awakening Cataclysm Armor
      [25938] = {type = "legs", value = 6500, level = 65}, -- Awakening Cataclysm Legs
      [25941] = {type = "feet", value = 5000, level = 50}, -- Awakening Cataclysm Boots
      [25942] = {type = "hand", value = 6000, level = 60}, -- Awakening Cataclysm Shield
 
      [25925] = {type = "head", value = 6000, level = 60}, -- Awakening Demacia Helmet
      [25929] = {type = "armor", value = 8500, level = 85}, -- Awakening Demacia Armor
      [25930] = {type = "legs", value = 6500, level = 65}, -- Awakening Demacia Legs
      [25933] = {type = "feet", value = 5000, level = 50}, -- Awakening Demacia Boots
      [25926] = {type = "hand", value = 6000, level = 60}, -- Awakening Demacia Shield


      -- You can add more Items on the list, in order to use the system, 
-- delete the item ID on unscripted_equipments ( not on unscripted weapons)
-- Then add a line in items.xml to see the Gear Score on the Item, add the same value on script.
-- <attribute key="description" value="Gear Score: +100. Prestige +1." />
}

for itemId, _slot in pairs(config) do
    local stepInEvent = MoveEvent()
    stepInEvent:type("equip")
    
    function stepInEvent.onEquip(player, item, slot, isCheck)
        if not isCheck then
            local currentStorage = player:getStorageValue(gearStor)
            local newStorage = currentStorage + config[item:getId()].value
            local currentStoragePrestige = player:getStorageValue(prestige)
            local newStoragePrestige = currentStoragePrestige + config[item:getId()].level
            player:setStorageValue(gearStor, newStorage)
            player:setStorageValue(prestige, newStoragePrestige)
        end
        return true
    end
    
    
    stepInEvent:id(itemId) 
    stepInEvent:slot(_slot.type)
    stepInEvent:register()
    
    local stepOutEvent = MoveEvent()
    stepOutEvent:type("deequip")
    
    function stepOutEvent.onDeEquip(player, item, slot, isCheck)
        local currentStorage = player:getStorageValue(gearStor)
        local subtractStorage = currentStorage - config[item:getId()].value
        local currentStoragePrestige = player:getStorageValue(prestige)
        local subtractStoragePrestige = currentStoragePrestige - config[item:getId()].level
        player:setStorageValue(gearStor, subtractStorage)
        player:setStorageValue(prestige, subtractStoragePrestige)
        return true
    end
    
    stepOutEvent:id(itemId)
    stepOutEvent:slot(_slot.type)
    stepOutEvent:register()
end

local creatureevent = CreatureEvent("onLoginGearScore")

function creatureevent.onLogin(player)
    local total = 0
    for i = 1, 10 do
        local item = player:getSlotItem(i)
        if item then
            local index = config[item:getId()]
            if index then
                total = total + index.value
            end
        end
    end
    player:setStorageValue(gearStor, total)
    return true
end

creatureevent:register()


local creatureevent = CreatureEvent("onLoginPrestige")

function creatureevent.onLogin(player)
    local total = 0
    for i = 1, 10 do
        local item = player:getSlotItem(i)
        if item then
            local index = config[item:getId()]
            if index then
                total = total + index.level
            end
        end
    end
    player:setStorageValue(prestige, total)
    return true
end

creatureevent:register()