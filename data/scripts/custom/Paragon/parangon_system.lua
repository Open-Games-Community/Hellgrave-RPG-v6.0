local paraSys = Action()

local config = {
maxparagonlevel = 1000,
storageparagon = Storage.Levels.Stats.Parangon,
expperlevelfendless = 250,
expperlevelpendless = 600,
expperlevelendless = 950,
expperlevelfdivine = 1600,
expperlevelpdivine = 2550,
expperleveldivine = 3800,
expperlevelfamber = 5250,
expperlevelpamber = 7000,
expperlevelamber = 10000,
experienceparagon = 500
}

local crystal = {
    fendless = {33983},
    pendless = {23704},
    endless = {36189},
    fdivine = {33985},
    pdivine = {27878},
    divine = {36190},
    famber = {33984},
    pamber = {23705},
    amber = {36191}

}

local crystalsItem = {
    premier = {crystal.fendless[1]},
    second = {crystal.fdivine[1]},
    troisieme = {crystal.famber[1]},
    quatrieme = {crystal.pendless[1]},
    cinquieme = {crystal.pdivine[1]},
    sixieme = {crystal.pamber[1]},
    septieme = {crystal.endless[1]},
    huitieme = {crystal.divine[1]},
    neuvieme = {crystal.amber[1]}
}




local levels = {
    {
    level = {0,50},
    crystal = {crystalsItem.premier[1]},
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
    level = {51,125},
    crystal = {crystalsItem.troisieme[1]},
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
    level = {126,200},
    crystal = {crystalsItem.second[1]},
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
    level = {201,275},
    crystal = {crystalsItem.quatrieme[1]},
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
    level = {276,375},
    crystal = {crystalsItem.cinquieme[1]},
    iselect = 3,
    bstart = 1,
    gstart = 5,
    lbstart = 9,
    rstart = 13,
    chance = 86,
    expgainmin = 150,
    expgainmax = 225
    },
    {
    level = {376,475},
    crystal = {crystalsItem.sixieme[1]},
    iselect = 3,
    bstart = 1,
    gstart = 5,
    lbstart = 9,
    rstart = 13,
    chance = 80,
    expgainmin = 185,
    expgainmax = 295
    },
    {
    level = {476,600},
    crystal = {crystalsItem.septieme[1]},
    iselect = 3,
    bstart = 1,
    gstart = 5,
    lbstart = 9,
    rstart = 13,
    chance = 75,
    expgainmin = 250,
    expgainmax = 400
    },
    {
    level = {601,750},
    crystal = {crystalsItem.huitieme[1]},
    iselect = 3,
    bstart = 1,
    gstart = 5,
    lbstart = 9,
    rstart = 13,
    chance = 65,
    expgainmin = 350,
    expgainmax = 500
    },
    {
    level = {751, 1000},
    crystal = {crystalsItem.neuvieme[1]},
    iselect = 3,
    bstart = 1,
    gstart = 5,
    lbstart = 9,
    rstart = 13,
    chance = 50,
    expgainmin = 425,
    expgainmax = 725
    },
}

function paraSys.onUse(cid, item, fromPosition, itemEx, toPosition)


local getParagonLevel = getPlayerStorageValue(cid, config.storageparagon)
local getParagonExp = getPlayerStorageValue(cid, config.experienceparagon)

    if getParagonLevel == -1 then
        setPlayerStorageValue(cid, config.storageparagon, 0)
    end
    if getParagonExp < 0 then
        setPlayerStorageValue(cid, config.experienceparagon, 0)
    end

    if (isInArray(crystalsItem.premier, itemEx.itemid) or isInArray(crystalsItem.second, itemEx.itemid) or isInArray(crystalsItem.troisieme, itemEx.itemid) or isInArray(crystalsItem.quatrieme, itemEx.itemid) or isInArray(crystalsItem.cinquieme, itemEx.itemid) or isInArray(crystalsItem.sixieme, itemEx.itemid) or isInArray(crystalsItem.septieme, itemEx.itemid) or isInArray(crystalsItem.huitieme, itemEx.itemid) or isInArray(crystalsItem.neuvieme, itemEx.itemid))  then    
        for a = 1, #levels do
            min = levels[a].level[1]; max = levels[a].level[2]

            if (getParagonLevel >= min and getParagonLevel <= max) then
                if isInArray(levels[a].crystal, itemEx.itemid) then
                        if (math.random(1, 100) <= levels[a].chance) then
                            experience = math.random(levels[a].expgainmin, levels[a].expgainmax)
                                if isInArray(crystal.fendless, itemEx.itemid) then
                                    iselection = math.random(levels[a].bstart, levels[a].bstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                 
                                            if getParagonExp >= config.expperlevelfendless then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperlevelfendless)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 6)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperlevelfendless - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.pendless, itemEx.itemid) then
                                    iselection = math.random(levels[a].gstart, levels[a].gstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                  
                                            if getParagonExp >= config.expperlevelpendless then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperlevelpendless)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 10)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperlevelpendless - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)
                                        end
                                end
                                if isInArray(crystal.endless, itemEx.itemid) then
                                    iselection = math.random(levels[a].lbstart, levels[a].lbstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                   
                                            if getParagonExp >= config.expperlevelendless then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperlevelendless)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 8)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperlevelendless - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)
                                        end
                                end
                                if isInArray(crystal.fdivine, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                   
                                            if getParagonExp >= config.expperlevelfdivine then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperlevelfdivine)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 7)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperlevelfdivine - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.pdivine, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                   
                                            if getParagonExp >= config.expperlevelpdivine then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperlevelpdivine)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 214)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperlevelpdivine - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.divine, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                   
                                            if getParagonExp >= config.expperleveldivine then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperleveldivine)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 186)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperleveldivine - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.famber, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                   
                                            if getParagonExp >= config.expperlevelfamber then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperlevelfamber)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 67)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperlevelfamber - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.pamber, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                   
                                            if getParagonExp >= config.expperlevelpamber then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperlevelpamber)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 206)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperlevelpamber - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
                                            end
                                            doSendMagicEffect(toPosition, 9)
                                            doPlayerSendTextMessage(cid, 22, text)
                                            item:remove(1)
                                            itemEx:remove(1)                                          
                                        end
                                end
                                if isInArray(crystal.amber, itemEx.itemid) then
                                    iselection = math.random(levels[a].rstart, levels[a].rstart + levels[a].iselect)
                                    if getParagonLevel == 1000 then
                                        doSendMagicEffect(toPosition, 9)
                                        doPlayerSendTextMessage(cid, 22, text)
                                        item:remove(1)
                                        itemEx:remove(1)
                                        elseif getParagonLevel <= 999 then                                   
                                            if getParagonExp >= config.expperlevelamber then
                                                doSendMagicEffect(getCreaturePosition(cid), 241)
                                                setPlayerStorageValue(cid, config.storageparagon, getParagonLevel + 1)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp - config.expperlevelamber)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n You advanced from paragon level " ..getParagonLevel.. " to paragon level " ..(getParagonLevel + 1).. "."
                                            else
                                                doSendMagicEffect(getCreaturePosition(cid), 195)
                                                setPlayerStorageValue(cid, config.experienceparagon, getParagonExp + experience)
                                                text = "You have gained " ..experience.. " experience points on Paragon. \n" ..(config.expperlevelamber - getParagonExp - experience).. " experience points left to next level. \nCurrent Paragon Level: " ..getParagonLevel.. "."
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

paraSys:id(24807)
paraSys:register()