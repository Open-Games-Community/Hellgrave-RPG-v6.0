local chaosSys = Action()

local config = {
maxchaoslevel = 1000,
storagechaos = Storage.Levels.Stats.Chaos,
expperlevelmystic = 115,
expperlevelexotic = 205,
expperlevellegacy = 395,
expperlevelabyssal = 595,
expperlevelascending = 900,
experiencechaos = 500 
}

local crystal = {
    mysticScroll = {36936},
    exoticScroll = {36937},
    legacyScroll = {36938},
    abyssalScroll = {36939},
    ascendingScroll = {36940},
}

local scrollItem = {
    mystic = {crystal.mysticScroll[1]},
    exotic = {crystal.legacyScroll[1]},
    legacy = {crystal.ascendingScroll[1]},
    abyssal = {crystal.exoticScroll[1]},
    ascending = {crystal.abyssalScroll[1]},
}




local levels = {
    {
    level = {0,100},
    crystal = {scrollItem.mystic[1]},
    iselect = 0,
    bstart = 1,
    gstart = 2,
    lbstart = 3,
    rstart = 4,
    chance = 100,
    expgainmin = 15,
    expgainmax = 40
    },
    {
    level = {101,250},
    crystal = {scrollItem.exotic[1]},
    iselect = 1,
    bstart = 1,
    gstart = 3,
    lbstart = 5,
    rstart = 7,
    chance = 98,
    expgainmin = 30,
    expgainmax = 75
    },
    {
    level = {251,450},
    crystal = {scrollItem.legacy[1]},
    iselect = 2,
    bstart = 1,
    gstart = 4,
    lbstart = 7,
    rstart = 10,
    chance = 94,
    expgainmin = 60,
    expgainmax = 120
    },
    {
    level = {451,700},
    crystal = {scrollItem.abyssal[1]},
    iselect = 3,
    bstart = 1,
    gstart = 5,
    lbstart = 9,
    rstart = 13,
    chance = 90,
    expgainmin = 100,
    expgainmax = 175
    },
    {
    level = {701,1000},
    crystal = {scrollItem.ascending[1]},
    iselect = 3,
    bstart = 1,
    gstart = 5,
    lbstart = 9,
    rstart = 13,
    chance = 86,
    expgainmin = 150,
    expgainmax = 225
    },
}

function chaosSys.onUse(cid, item, fromPosition, itemEx, toPosition)


local getchaosLevel = getPlayerStorageValue(cid, config.storagechaos)
local getchaosExp = getPlayerStorageValue(cid, config.experiencechaos)

    if getchaosLevel == -1 then
        setPlayerStorageValue(cid, config.storagechaos, 0)
    end
    if getchaosExp < 0 then
        setPlayerStorageValue(cid, config.experiencechaos, 0)
    end

    if (isInArray(scrollItem.mystic, itemEx.itemid) or isInArray(scrollItem.exotic, itemEx.itemid) or isInArray(scrollItem.legacy, itemEx.itemid) or isInArray(scrollItem.abyssal, itemEx.itemid) or isInArray(scrollItem.ascending, itemEx.itemid))  then    
        for a = 1, #levels do
            min = levels[a].level[1]; max = levels[a].level[2]

            if (getchaosLevel >= min and getchaosLevel <= max) then
                if isInArray(levels[a].crystal, itemEx.itemid) then
                        if (math.random(1, 100) <= levels[a].chance) then
                            experience = math.random(levels[a].expgainmin, levels[a].expgainmax)
                                if isInArray(crystal.mysticScroll, itemEx.itemid) then
                                    iselection = math.random(levels[a].bstart, levels[a].bstart + levels[a].iselect)
                                    if getchaosLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getchaosLevel <= 999 then                                 
                                            if getchaosExp >= config.expperlevelmystic then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storagechaos, getchaosLevel + 1)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp - config.expperlevelmystic)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n You advanced from chaos level " ..getchaosLevel.. " to chaos level " ..(getchaosLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 62)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp + experience)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n" ..(config.expperlevelmystic - getchaosExp - experience).. " experience points left to next level. \nCurrent chaos Level: " ..getchaosLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.exoticScroll, itemEx.itemid) then
                                    iselection = math.random(levels[a].gstart, levels[a].gstart + levels[a].iselect)
                                    if getchaosLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getchaosLevel <= 999 then                                  
                                            if getchaosExp >= config.expperlevelexotic then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storagechaos, getchaosLevel + 1)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp - config.expperlevelexotic)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n You advanced from chaos level " ..getchaosLevel.. " to chaos level " ..(getchaosLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 204)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp + experience)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n" ..(config.expperlevelexotic - getchaosExp - experience).. " experience points left to next level. \nCurrent chaos Level: " ..getchaosLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)
                                        end
                                end
                                if isInArray(crystal.legacyScroll, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getchaosLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getchaosLevel <= 999 then                                   
                                            if getchaosExp >= config.expperlevelabyssal then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storagechaos, getchaosLevel + 1)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp - config.expperlevelabyssal)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n You advanced from chaos level " ..getchaosLevel.. " to chaos level " ..(getchaosLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 208)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp + experience)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n" ..(config.expperlevelabyssal - getchaosExp - experience).. " experience points left to next level. \nCurrent chaos Level: " ..getchaosLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.abyssalScroll, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getchaosLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getchaosLevel <= 999 then                                   
                                            if getchaosExp >= config.expperlevelabyssalScroll then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storagechaos, getchaosLevel + 1)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp - config.expperlevelabyssalScroll)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n You advanced from chaos level " ..getchaosLevel.. " to chaos level " ..(getchaosLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 240)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp + experience)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n" ..(config.expperlevelabyssalScroll - getchaosExp - experience).. " experience points left to next level. \nCurrent chaos Level: " ..getchaosLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.ascendingScroll, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getchaosLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getchaosLevel <= 999 then                                   
                                            if getchaosExp >= config.expperlevelascendingScroll then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storagechaos, getchaosLevel + 1)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp - config.expperlevelascendingScroll)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n You advanced from chaos level " ..getchaosLevel.. " to chaos level " ..(getchaosLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 236)
                                                setPlayerStorageValue(cid, config.experiencechaos, getchaosExp + experience)
                                                text = "You have gained " ..experience.. " experience points on chaos. \n" ..(config.expperlevelascendingScroll - getchaosExp - experience).. " experience points left to next level. \nCurrent chaos Level: " ..getchaosLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                        else
                            doPlayerSendTextMessage(cid, 22, "The identification did not work, the objects were destroyed. You'll have better luck next time.")
                        end
                else
                    doPlayerSendTextMessage(cid, 22, "You don\'t meet the requirements to use this item.")
                end
            end
        end
    else
        doSendMagicEffect(getCreaturePosition(cid), 2)
        doPlayerSendTextMessage(cid, 22, "You can't use this.")
    end
end

chaosSys:id(36974)
chaosSys:register()