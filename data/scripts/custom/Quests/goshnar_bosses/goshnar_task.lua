local taskOneOnKill = CreatureEvent("taskoneonKill") -- nombre importante que pondreis en el login.php lo vereis despues, tiene que cambiar en cada fichero, igual para local taskOneOnKill, cada uno con un nombre distinto

local config = {
     ['goshnar hatred'] = {amount = 1, storage = 39015, startstorage = 6243, startvalue = 1}, -- brachiodemon , nombre exacto del monstruo, amount = cuantos para matar , el storage = igual que arriba en npc.lua , el startstorage es el storage que hemos puesto al npc 6227
     ['goshnar spite'] = {amount = 1, storage = 39016, startstorage = 6243, startvalue = 1},
	 ['goshnar malice'] = {amount = 1, storage = 39017, startstorage = 6243, startvalue = 1},
	 ['goshnar cruelty'] = {amount = 1, storage = 39018, startstorage = 6243, startvalue = 1},
	 ['goshnar greed'] = {amount = 1, storage = 39019, startstorage = 6243, startvalue = 1},
	 ['goshnar megalomania'] = {amount = 1, storage = 39020, startstorage = 6243, startvalue = 1},
}
function taskOneOnKill.onKill(cid, target) -- aqui hay un taskoneonkill este si creais uno con este nombre el siguiente lo debereis de llamar distinto
     local monster = config[getCreatureName(target):lower()]
     if isPlayer(target) or not monster or isSummon(target) then
         return true
     end

     if (getPlayerStorageValue(cid, monster.storage)+1) < monster.amount and getPlayerStorageValue(cid, monster.startstorage) >= monster.startvalue then
         setPlayerStorageValue(cid, monster.storage, getPlayerStorageValue(cid, monster.storage) + 1)
         doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, '[Task message]: '..(getPlayerStorageValue(cid, monster.storage)+1)..' of '..monster.amount..' '..getCreatureName(target)..'s killed.')
     end
     if (getPlayerStorageValue(cid, monster.storage)+1) == monster.amount then
         doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Congratulations, you have killed '..(getPlayerStorageValue(cid, monster.storage)+1)..' '..getCreatureName(target)..'s and completed the '..getCreatureName(target)..'s mission.') -- mensaje que dira en la pantalla al matar los monsters
         setPlayerStorageValue(cid, monster.storage, getPlayerStorageValue(cid, monster.storage) + 1)
     end
     return true
end

taskOneOnKill:register() -- taskone de nuevo a cambiar si haceis varios npc
