local addTournamentCoinsBalance = TalkAction("/tournament")

function addTournamentCoinsBalance.onSay(player, words, param)    

    if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
        return true
    end
    local usage = "/tournament PLAYER NAME,TOURNAMENT AMOUNT"
    if param == "" then
        player:sendCancelMessage("Command param required. Usage: ".. usage)
        return false
    end

    local split = param:split(",")
    if not split[2] then
        player:sendCancelMessage("Insufficient parameters. Usage: ".. usage)
        return false
    end

    local target = Player(split[1])
    if not target then
        player:sendCancelMessage("A player with that name is not online.")
        return false
    end
    --trim left
    split[2] = split[2]:gsub("^%s*(.-)$", "%1")
    
    player:sendCancelMessage("Added " .. split[2] .. " tournament coins to the character '" .. target:getName() .. "'.")
    target:sendCancelMessage("Received " .. split[2] .. " tournament coins!")
    target:addTournamentBalance(tonumber(split[2]))
end

addTournamentCoinsBalance:separator(" ")
addTournamentCoinsBalance:register()