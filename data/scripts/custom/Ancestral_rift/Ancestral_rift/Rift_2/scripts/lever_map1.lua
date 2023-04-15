--[[
    "object" -> anything that is not a floor tile.
    "floor" floor tiles (roof/ground/hole)
    
    "add" / "remove" -> tells the script what to do when lever is on the left. (after it flops, it will do the opposite)
    "replace" -> transforms an item into another item, instead of adding/removing
    
]]--

local levers = {left = 1945, right = 1946}
local config = {
-- [actionid] = {"object", "add", position, itemid, relocate_direction}
-- [actionid] = {"object", "remove", position, itemid, relocate_direction}
-- [actionid] = {"object", "replace", position, {itemid_from, itemid_to}}

    [34003] = {"object", "replace", Position(29492, 31939, 9), {14618, 14628}},
    
-- [actionid] = {"floor", "add", position, itemid}
-- [actionid] = {"floor", "remove", position, itemid}
-- [actionid] = {"floor", "replace", position, {itemid_from, itemid_to}, {relocate_from, relocate_to}}


    [34008] = {"floor", "replace", Position(29587, 31933, 8), {461, 462}, {false, true}}, -- true means YES do relocate.
}

local relocateDirections = {
    ["north"] = {0, -1},
    ["east"]  = {1, 0},
    ["south"] = {0, 1},
    ["west"]  = {-1, 0},
}

local function transposeFields(fromPosition, toPosition, transpose)
    local tile = Tile(fromPosition)
    if tile then
        local items = tile:getItems()
        if items then
            for i, item in ipairs(items) do
                if transpose == true then
                    item:moveTo(toPosition)
                else
                    item:remove()
                end
            end
        end
    end
end

local leverActions = Action()

function leverActions.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local item_id = item.itemid
    local index = config[item.actionid]
    local tile = Tile(index[3])
    
    -- add
    if index[2] == "add" and item_id == levers.left or index[2] == "remove" and item_id == levers.right then
        if index[1] == "object" then
            local relocatePosition = Position(index[3].x + relocateDirections[index[5]][1], index[3].y + relocateDirections[index[5]][2], index[3].z)
            tile:relocateTo(relocatePosition)
            transposeFields(index[3], relocatePosition, true)
            Game.createItem(index[4], 1, index[3])
        elseif index[1] == "floor" then
            Game.createTile(index[3], true)
            Game.createItem(index[4], 1, index[3])
        end
        
    -- remove
    elseif index[2] == "remove" and item_id == levers.left or index[2] == "add" and item_id == levers.right then
        if index[1] == "object" then
            local object = tile:getItemById(index[4])
            object:remove()
        elseif index[1] == "floor" then
            local relocatePosition = Position(index[3].x, index[3].y, index[3].z + 1)
            tile:relocateTo(relocatePosition)
            transposeFields(index[3], relocatePosition, false)
            tile:getGround():remove()
        end
        
    -- replace
    elseif index[2] == "replace" then
        local transformTo = tile:getItemCountById(index[4][1]) > 0 and 2 or 1
        local object = tile:getItemById(transformTo == 2 and index[4][1] or index[4][2])            
        object:transform(index[4][transformTo])
        if index[1] == "floor" and index[5][transformTo] == true then
            local relocatePosition = Position(index[3].x, index[3].y, index[3].z + 1)
            tile:relocateTo(relocatePosition)
            transposeFields(index[3], relocatePosition, false)
        end
        
    end
    
    item:transform(item_id == levers.left and levers.right or levers.left)
    return true
end

for k, v in pairs(config) do
    leverActions:aid(k)
end
leverActions:register()