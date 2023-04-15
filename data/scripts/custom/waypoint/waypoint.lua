
local waypointList = {
    [1] = {
        name = "Mordragor", 
        actionId = 7000,
        position = Position(32366, 32245, 7),
        requireQuest = {check = false, storage = 15002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [2] = {
        name = "Falcon Bastion",
        actionId = 7001,
        position = Position(32059, 32247, 6),
        requireQuest = {check = false, storage = 15002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [3] = {
        name = "Cobra Bastion",
        actionId = 7003,
        position = Position(31872, 32214, 1),
        requireQuest = {check = false, storage = 15002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [4] = {
        name = "Rascacoon",
        actionId = 7004,
        position = Position(31617, 32280, 5),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [5] = {
        name = "Bounac",
        actionId = 7005,
        position = Position(31552, 32148, 1),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [6] = {
        name = "Dolwatha",
        actionId = 7006,
        position = Position(31878, 32448, 7),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [7] = {
        name = "Falanaar",
        actionId = 7007,
        position = Position(32179, 32547, 7),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [8] = {
        name = "Mistfall",
        actionId = 7008,
        position = Position(32399, 31961, 6),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [9] = {
        name = "Freewind",
        actionId = 7009,
        position = Position(32495, 32859, 5),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [10] = {
        name = "Death Valley",
        actionId = 7010,
        position = Position(32651, 32236, 6),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [11] = {
        name = "Arkeron",
        actionId = 7011,
        position = Position(32724, 33121, 5),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [12] = {
        name = "Demon Hell",
        actionId = 7012,
        position = Position(32592, 31778, 8),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [13] = {
        name = "Dragon Lands",
        actionId = 7013,
        position = Position(31796, 32511, 7),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [14] = {
        name = "Mordragor Catacombs",
        actionId = 7014,
        position = Position(32246, 32363, 9),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [15] = {
        name = "Falanaar Forest",
        actionId = 7015,
        position = Position(31882, 32613, 6),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [16] = {
        name = "Death Valley Prision",
        actionId = 7016,
        position = Position(32661, 32251, 11),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [17] = {
        name = "Death Valley Goshnar's Room",
        actionId = 7017,
        position = Position(32869, 31908, 8),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [18] = {
        name = "Ancestral Waypoint",
        actionId = 7018,
        position = Position(31825, 32427, 8),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [19] = {
        name = "Echtelion",
        actionId = 7019,
        position = Position(32820, 32765, 4),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [20] = {
        name = "Rivendell",
        actionId = 7020,
        position = Position(33263, 33019, 6),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
    [21] = {
        name = "Dwalling",
        actionId = 7021,
        position = Position(32944, 33067, 5),
        requireQuest = {check = false, storage = 85002, value = 3},
        cost = {check = true, itemId = 31993, amount = 1}
    },
}

local cooldowns = {}

local waypoints = MoveEvent()
function waypoints.onStepIn(player,item,position,fromPosition)
    if not player:isPlayer() then
        return false
    end
        if cooldowns[player:getName()] ~= nil then
            if cooldowns[player:getName()] > os.time() - 2 then
            player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need to wait ".. cooldowns[player:getName()] - (os.time() - 2) .."seconds before traveling again.")
                    return false
            end
        end
    local waypoint = false

    for i=1,#waypointList do
        if waypointList[i].actionId == item.actionid then
            waypoint = waypointList[i]
        end
    end

    if waypoint then
        if waypoint.requireQuest.Check then
            if player:getStorageValue(waypoint.requireQuest.storage) < waypoint.requireQuest.value then
                player:teleportTo(fromPosition)
                player:say("You have not completed the prerequisite Secret Quest First Fragment, to unlock waypoint to ".. waypoint.name ..".", TALKTYPE_MONSTER_SAY)
                return false
            end
        end
        if player:getStorageValue(waypoint.actionId) ~= 1 then
            player:setStorageValue(waypoint.actionId,1)
            player:say("You have unlocked waypoint to ".. waypoint.name ..".", TALKTYPE_MONSTER_SAY)
            return true
        end

        player:registerEvent("revWaypoints")
        local window = ModalWindow(5000, "Waypoints", "Waypoint: " .. waypoint.name .. "\n")

        local unlockedWps = 0

        for i=1,#waypointList do
            if player:getStorageValue(waypointList[i].actionId) == 1 then
                if waypointList[i].actionId ~= item.actionid then
                    unlockedWps = unlockedWps+1
                    window:addChoice(i, waypointList[i].name)
                end
            end
        end

        window:addButton(110,"Select")
        window:addButton(111,"Cancel")
        window:setDefaultEnterButton(110)
        window:setDefaultEscapeButton(111)
        if unlockedWps ~= 0 then
            window:sendToPlayer(player)
        end
      
        return true
    end
end

for j=1,#waypointList do
    waypoints:aid(waypointList[j].actionId)
end

waypoints:type("stepin")
waypoints:register()

local wpWindow = CreatureEvent("revWaypoints")
wpWindow:type("modalwindow")

function wpWindow.onModalWindow(player,modalWindowId,buttonId,choiceId)
    if modalWindowId == 5000 then
        if buttonId == 110 then
            local travel = true
            if waypointList[choiceId].cost.check then
                        if not player:removeItem(waypointList[choiceId].cost.itemId,waypointList[choiceId].cost.amount) then
                                    travel = false
                        end
            end
            if travel then
                cooldowns[player:getName()] = os.time()
                player:unregisterEvent("revWaypoints")
                player:teleportTo(waypointList[choiceId].position)
                player:getPosition():sendMagicEffect(15)
            else
                player:say("You cant afford to travel to ".. waypointList[choiceId].name ..".",TALKTYPE_MONSTER_SAY)
            end
          
            return true
        end
    end
end

wpWindow:register()