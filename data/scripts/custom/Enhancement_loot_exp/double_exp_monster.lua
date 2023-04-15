-- Do not touch this script until you know what you are doing
-- You can Expect Errors if you change something
local custom_exp_damage_effect = CreatureEvent("custom_exp_damage_effect")

local config = {
    ['Rotworm'] = { chance = 100 }, 
    ['Cyclops'] = { chance = 130 },
    ['Dragon'] = { chance = 140 },
    ['Dragon Lord'] = { chance = 160 },
    ['Behemoth'] = { chance = 180 },
    ['Nightmare'] = { chance = 190 },
    ['Grim Reaper'] = { chance = 200 },
    ['Demon'] = { chance = 290 },
    ['Plaguesmith'] = { chance = 230 },
    ['Dark Torturer'] = { chance = 240 },
    ['Hydra'] = { chance = 190 },
    ['Serpent Spawn'] = { chance = 200 },
    ['Sea Serpent'] = { chance = 270 },
    ['Dawnfire Asura'] = { chance = 210 },
    ['Frost Flower Asura'] = { chance = 230 },
    ['Midnight Asura'] = { chance = 220 },
    ['True Dawnfire Asura'] = { chance = 220 },
    ['True Frost Flower Asura'] = { chance = 220 },
    ['True Midnight Asura'] = { chance = 220 },
    ['Retching Horror'] = { chance = 270 },
    ['Guzzlemaw'] = { chance = 250 },
    ['Frazzlemaw'] = { chance = 190 },
    ['Silencer'] = { chance = 200 },
    ['Choking Fear'] = { chance = 280 },
    ['Branchy Crawler'] = { chance = 350 },
    ['Infernal Demon'] = { chance = 350 },
    ['Bony Sea Devil'] = { chance = 350 },
    ['Brachiodemon'] = { chance = 350 },
    ['Infernal Phantom'] = { chance = 350 },
    ['Mould Phantom'] = { chance = 350 },
    ['Rotten Golem'] = { chance = 350 },
    ['Capricious Phantom'] = { chance = 350 },
    ['Hazardous Phantom'] = { chance = 350 },
    ['Turbulent Elemental'] = { chance = 350 },
    ['Vibran Phantom'] = { chance = 350 },
    ['Courage Leech'] = { chance = 350 },
    ['Many Face'] = { chance = 350 },
    ['Distorted Phantom'] = { chance = 350 },
    ['Exotic Cave Spider'] = { chance = 220 },
    ['Afflicted Strider'] = { chance = 300 },
    ['Bashmu'] = { chance = 300 },
    ['Blemished Spawn'] = { chance = 300 },
    ['Carnisylvan Sapling'] = { chance = 300 },
    ['Cave Chimera'] = { chance = 300 },
    ['Dark Carnisylvan'] = { chance = 300 },
    ['Eyeless Devourer'] = { chance = 300 },
    ['Girtablilu Warrior'] = { chance = 300 },
    ['Hulking Carnisylvan'] = { chance = 300 },
    ['Juvenile Bashmu'] = { chance = 300 },
    ['Lavafungus'] = { chance = 300 },
    ['Lavaworm'] = { chance = 300 },
    ['Poisonous Carnisylvan'] = { chance = 300 },
    ['Streaked Devourer'] = { chance = 300 },
    ['Tremendous Tyrant'] = { chance = 300 },
    ['Unexpected'] = { chance = 300 },
    ['Unsolicited'] = { chance = 300 },
    ['Unwanted'] = { chance = 300 },
    --- ANCESTRAL RIFT MONSTERS ----
    ['Fallen Shaman [1]'] = { chance = 220 },
    ['Tyrant Slug [1]'] = { chance = 220 },
    ['Atlantis Manta [1]'] = { chance = 220 },
    ['Deathrattle [1]'] = { chance = 220 },
    ['Demon Hunter [1]'] = { chance = 220 },
    ['Giant Troll [1]'] = { chance = 220 },
    ['Eastern Shaman [1]'] = { chance = 220 },
    ['Fallen Rhino [1]'] = { chance = 220 },
    ['Sacred Hydra [2]'] = { chance = 300 },
    ['Sacred Three [2]'] = { chance = 300 },
    ['Tyrant Three [2]'] = { chance = 300 },
    ['Demon Hunter [2]'] = { chance = 300 },
    ['Evil Hydra [2]'] = { chance = 300 },
    ['Inferno Hydra [2]'] = { chance = 300 },
    ['Slime Of Terror [2]'] = { chance = 300 },
    ['Warcaller [2]'] = { chance = 300 },
    ['Enraged Rat [2]'] = { chance = 300 },
    ['Shamed Three [2]'] = { chance = 300 },
    ['Venom Tyrant [2]'] = { chance = 300 },
    --- ANCESTRAL RIFT MONSTERS  ----
    ---- Elder Rift Monsters ----
    ['Damned Soul [**]'] = { chance = 400 },
    ['King Skeleton [**]'] = { chance = 400 },
    ['Oculus Rift [**]'] = { chance = 400 },
    ['Disemboweled [**]'] = { chance = 400 },
    ['Shaper of Flesh [**]'] = { chance = 400 },
    ['Unspeakable Terror [**]'] = { chance = 400 },
    ['Lurkbringer [**]'] = { chance = 400 },
    ['Malfeasance [**]'] = { chance = 400 },
    ['Mangler [**]'] = { chance = 400 },
    ------ Demoniac Rift -------
    ['Dark Elder [***]'] = { chance = 450 },
    ['Wormboiler [***]'] = { chance = 450 },
    ['Evil Beholder [***]'] = { chance = 450 },
    ['Evil Demon [***]'] = { chance = 450 },
    ['Goreshot [***]'] = { chance = 450 },
    ['Zarhym [***]'] = { chance = 450 },
    ['Scourge of Azazel [***]'] = { chance = 450 },
    ['Tyrant Spider [***]'] = { chance = 450 },
    ['Elder Dragon Lord [***]'] = { chance = 450 },
    ['Elder Dragon [***]'] = { chance = 450 },
    ['Rust Crawler [***]'] = { chance = 450 },
    ['Soul Skull [***]'] = { chance = 450 },
    ['Black Dragon [***]'] = { chance = 450 },
    ['Stone Juggernaut [***]'] = { chance = 450 },
    ------ Arkeron -----
    ['Arcangel [****]'] = { chance = 500 },
    ['Cephalopod [****]'] = { chance = 500 },
    ['Divine Angel [****]'] = { chance = 500 },
    ['Lokness [****]'] = { chance = 500 },
    ['Otzi [****]'] = { chance = 500 },
    ['Raven Spider [****]'] = { chance = 500 },
    ['Solar Guardian [****]'] = { chance = 500 },
    ['Mutated Angry Draptor [****]'] = { chance = 520 },
    ['Mutated Draptor [****]'] = { chance = 520 },
    ['Mutated Ghost [****]'] = { chance = 520 },
    ['Mutated Lurkbringer Lancer [****]'] = { chance = 520 },
    ['Mutated Lurkbringer Necromancer [****]'] = { chance = 520 },
    ['Mutated Lurkbringer Warrior [****]'] = { chance = 520 },
    ['Mutated Lurkbringer [****]'] = { chance = 520 },
    ['Mutated Scourge Draptor [****]'] = { chance = 520 },
    ['Mutated Stone Golem [****]'] = { chance = 520 },
    ['Mutated Wailing Widow [****]'] = { chance = 520 },
    ['Behemoth Amalgam [****]'] = { chance = 540 },
    ['Demon Amalgam [****]'] = { chance = 540 },
    ['Despair Tree Amalgam [****]'] = { chance = 540 },
    ['Dragon Amalgam [****]'] = { chance = 540 },
    ['Emeraude Dragon Amalgam [****]'] = { chance = 540 },
    ['Ghost Hell Amalgam [****]'] = { chance = 540 },
    ['Grim Reaper Amalgam [****]'] = { chance = 540 },
    ['Hellfire Fighter Amalgam [****]'] = { chance = 540 },
    ['Hydra Amalgam [****]'] = { chance = 540 },
    ['Obsidian Dragon Amalgam [****]'] = { chance = 540 },
    ['Sapphir Dragon Amalgam [****]'] = { chance = 540 },
    ['Stone Golem Amalgam [****]'] = { chance = 540 },
    ['Tyrant Tree Amalgam [****]'] = { chance = 540 },
    ['Vampire Viscount Amalgam [****]'] = { chance = 540 },
    ['Winter Wolf Amalgam [****]'] = { chance = 540 },
    ['Yeti Amalgam [****]'] = { chance = 540 },
    ['Amazon Anomaly [****]'] = { chance = 565 },
    ['Chester Anomaly [****]'] = { chance = 565 },
    ['Demon Anomaly [****]'] = { chance = 565 },
    ['Dragon Anomaly [****]'] = { chance = 565 },
    ['Ghost Anomaly [****]'] = { chance = 565 },
    ['Ghoul Anomaly [****]'] = { chance = 565 },
    ['Hydra Anomaly [****]'] = { chance = 565 },
    ['Mage Anomaly [****]'] = { chance = 565 },
    ['Ulyss Anomaly [****]'] = { chance = 565 },
    ['Undead Berserker Anomaly [****]'] = { chance = 565 },
    ['Undead Elite Guardian Anomaly [****]'] = { chance = 565 },
    ['Undead Elite Mage Anomaly [****]'] = { chance = 565 },
    ['Undead Guardian Anomaly [****]'] = { chance = 565 },
    ['Valkyrie Anomaly [****]'] = { chance = 565 },

}

local function sendMessage(target)
    if not target then
        return true
    end
    target:sendMagicEffect(56)
    target:sendMagicEffect(57)
end

function custom_exp_damage_effect.onKill(creature, target)
    if target:isPlayer() then
        return true
    end
    local monster = config[target:getName()]
    if not monster then
        return true
    end
    if math.random(1, 10000) <= monster.chance then
        local tile = Tile(target:getPosition())
        if tile then
            local ground = tile:getGround()
            if ground then
                ground:setActionId(6000)
                target:say('DOUBLE EXP!', TALKTYPE_MONSTER_SAY)
                for i = 0, 3 do
                    addEvent(sendMessage, 1000 * i, target:getPosition())
                end
            end
        end
    end
    return true
end

custom_exp_damage_effect:type("kill")
custom_exp_damage_effect:register()
---------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------
local custom_exp_damage_effect_login = CreatureEvent("custom_exp_damage_effect_login")

function custom_exp_damage_effect_login.onLogin(player)
    player:registerEvent("custom_exp_damage_effect")
    return true
end

custom_exp_damage_effect_login:type("login")
custom_exp_damage_effect_login:register()
---------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------
local custom_exp_damage_effect_movement = MoveEvent()
custom_exp_damage_effect_movement:type("stepin")

local function sendEffect(cid)
    local player = Player(cid)
    if not player then
        return true
    end
    local pos = player:getPosition()
    local pos2 = player:getPosition() + Position(math.random(-2, 2), math.random(-2, 2), 0)
    pos:sendMagicEffect(223)
end

function custom_exp_damage_effect_movement.onStepIn(player, item, position, fromPosition)
    if player:isMonster() then
        return true
    end
    local tile = Tile(player:getPosition())
    if tile then
        local ground = tile:getGround()
        if ground then
            ground:setActionId()
            player:setStorageValue(6000, os.time() + 60)
            player:sendTextMessage(MESSAGE_INFO_DESCR, 'You have received double experience for the next 60 seconds. Type !exp to see the remaining time.')
            for i = 0, 25 do
                addEvent(sendEffect, 25 * i, player:getId())
            end
        end
    end
    return true
end

custom_exp_damage_effect_movement:aid(6000)

custom_exp_damage_effect_movement:register()
---------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------
local expCheck = TalkAction("!exp")


function expCheck.onSay(player, words)
 
    local exhaust = 6000
    local stor = player:getStorageValue(6000)
    if player:getStorageValue(exhaust) - os.time() > 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Your extra exp will end on : "..os.date("%d %B %Y %X", stor).."")
        return false
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You didn't have any current Double EXP enhancement.")
    end
    return false
end

expCheck:separator(" ")
expCheck:register()
---------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------
