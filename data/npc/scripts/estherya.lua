local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local talkState = {}
local rtnt = {}
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end

npcHandler:setMessage(MESSAGE_GREET, "Greetings |PLAYERNAME|. If you have some precious materials to trade just say {addons}, {mounts} or {help} if you don't know what to do.")

addoninfo = {

---- Base Outfits + Addon 1 + Addon 2 -----
['base nightmare outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 269, outfit_male = 268, addon = 0, storageID = 29052},
['first nightmare addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 269, outfit_male = 268, addon = 1, storageID = 29053},
['second nightmare addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 269, outfit_male = 268, addon = 2, storageID = 29054},
['base jester outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 270, outfit_male = 273, addon = 0, storageID = 29055},
['first jester addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 270, outfit_male = 273, addon = 1, storageID = 29056},
['second jester addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 270, outfit_male = 273, addon = 2, storageID = 29057},
['base brotherhood outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 279, outfit_male = 278, addon = 0, storageID = 29058},
['first brotherhood addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 279, outfit_male = 278, addon = 1, storageID = 29059},
['second brotherhood addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 279, outfit_male = 278, addon = 2, storageID = 29060},
['base demon hunter outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 288, outfit_male = 289, addon = 0, storageID = 29061},
['first demon hunter addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 288, outfit_male = 289, addon = 1, storageID = 29062},
['second demon hunter addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 288, outfit_male = 289, addon = 2, storageID = 29063},
['base yalaharian outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 324, outfit_male = 325, addon = 0, storageID = 29064},
['first yalaharian addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 324, outfit_male = 325, addon = 1, storageID = 29065},
['second yalaharian addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 324, outfit_male = 325, addon = 2, storageID = 29066},
['base newly wed outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 329, outfit_male = 328, addon = 0, storageID = 29067},
['first newly wed addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 329, outfit_male = 328, addon = 1, storageID = 29068},
['second newly wed addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 329, outfit_male = 328, addon = 2, storageID = 29069},
['base warmaster outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 336, outfit_male = 335, addon = 0, storageID = 29070},
['first warmaster addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 336, outfit_male = 335, addon = 1, storageID = 29071},
['second warmaster addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 336, outfit_male = 335, addon = 2, storageID = 29072},
['base wayfarer outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 366, outfit_male = 367, addon = 0, storageID = 29073},
['first wayfarer addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 366, outfit_male = 367, addon = 1, storageID = 29074},
['second wayfarer addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 366, outfit_male = 367, addon = 2, storageID = 29075},
['base afflicted outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 431, outfit_male = 430, addon = 0, storageID = 29076},
['first afflicted addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 431, outfit_male = 430, addon = 1, storageID = 29077},
['second afflicted addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 431, outfit_male = 430, addon = 2, storageID = 29078},
['base elementalist outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 433, outfit_male = 432, addon = 0, storageID = 29079},
['first elementalist addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 433, outfit_male = 432, addon = 1, storageID = 29080},
['second elementalist addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 433, outfit_male = 432, addon = 2, storageID = 29081},
['base deepling outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 464, outfit_male = 463, addon = 0, storageID = 29082},
['first deepling addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 464, outfit_male = 463, addon = 1, storageID = 29083},
['second deepling addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 464, outfit_male = 463, addon = 2, storageID = 29084},
['base insectoid outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 466, outfit_male = 465, addon = 0, storageID = 29085},
['first insectoid addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 466, outfit_male = 465, addon = 1, storageID = 29086},
['second insectoid addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 466, outfit_male = 465, addon = 2, storageID = 29087},
['base crystal warlord outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 513, outfit_male = 512, addon = 0, storageID = 29088},
['first crystal warlord addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 513, outfit_male = 512, addon = 1, storageID = 29089},
['second crystal warlord addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 513, outfit_male = 512, addon = 2, storageID = 29090},
['base soil guardian outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 514, outfit_male = 516, addon = 0, storageID = 29091},
['first soil guardian addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 514, outfit_male = 516, addon = 1, storageID = 29092},
['second soil guardian addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 514, outfit_male = 516, addon = 2, storageID = 29093},
['base demon outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 542, outfit_male = 541, addon = 0, storageID = 29094},
['first demon addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 542, outfit_male = 541, addon = 1, storageID = 29095},
['second demon addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 542, outfit_male = 541, addon = 2, storageID = 29096},
['base cave explorer outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 575, outfit_male = 574, addon = 0, storageID = 29097},
['first cave explorer addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 575, outfit_male = 574, addon = 1, storageID = 29098},
['second cave explorer addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 575, outfit_male = 574, addon = 2, storageID = 29099},
['base dream warden outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 578, outfit_male = 577, addon = 0, storageID = 29100},
['first dream warden addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 578, outfit_male = 577, addon = 1, storageID = 29101},
['second dream warden addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 578, outfit_male = 577, addon = 2, storageID = 29102},
['base glooth engineer outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 618, outfit_male = 610, addon = 0, storageID = 29103},
['first glooth engineer addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 618, outfit_male = 610, addon = 1, storageID = 29104},
['second glooth engineer addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 618, outfit_male = 610, addon = 2, storageID = 29105},
['base recruiter outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 745, outfit_male = 746, addon = 0, storageID = 29106},
['first recruiter addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 745, outfit_male = 746, addon = 1, storageID = 29107},
['second recruiter addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 745, outfit_male = 746, addon = 2, storageID = 29108},
['base rift warrior outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 845, outfit_male = 846, addon = 0, storageID = 29109},
['first rift warrior addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 845, outfit_male = 846, addon = 1, storageID = 29110},
['second rift warrior addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 845, outfit_male = 846, addon = 2, storageID = 29111},
['base festive outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 929, outfit_male = 931, addon = 0, storageID = 29112},
['first festive addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 929, outfit_male = 931, addon = 1, storageID = 29113},
['second festive addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 929, outfit_male = 931, addon = 2, storageID = 29114},
['base makeshift warrior outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 1043, outfit_male = 1042, addon = 0, storageID = 29115},
['first makeshift warrior addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 1043, outfit_male = 1042, addon = 1, storageID = 29116},
['second makeshift warrior addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 1043, outfit_male = 1042, addon = 2, storageID = 29117},
['base battle mage outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 1070, outfit_male = 1069, addon = 0, storageID = 29118},
['first battle mage addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 1070, outfit_male = 1069, addon = 1, storageID = 29119},
['second battle mage addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 1070, outfit_male = 1069, addon = 2, storageID = 29120},
['base discoverer outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 1095, outfit_male = 1094, addon = 0, storageID = 29121},
['first discoverer addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 1095, outfit_male = 1094, addon = 1, storageID = 29122},
['second discoverer addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 1095, outfit_male = 1094, addon = 2, storageID = 29123},
['base dream warrior outfit'] = {cost = 0, items = {{42027,50}}, outfit_female = 1147, outfit_male = 1146, addon = 0, storageID = 29124},
['first dream warrior addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 1147, outfit_male = 1146, addon = 1, storageID = 29125},
['second dream warrior addon'] = {cost = 0, items = {{42027,100}}, outfit_female = 1147, outfit_male = 1146, addon = 2, storageID = 29126},


----- Mounts -----
['widow queen mount'] = {cost = 0, items = {{42027,100}}, mount_id = 1, storageID = 29127},
['titanica mount'] = {cost = 0, items = {{42027,100}}, mount_id = 7, storageID = 29131},
['tin lizzard mount'] = {cost = 0, items = {{42027,100}}, mount_id = 8, storageID = 29132},
['blazebringer mount'] = {cost = 0, items = {{42027,100}}, mount_id = 9, storageID = 29133},
['rapid boar mount'] = {cost = 0, items = {{42027,75}}, mount_id = 10, storageID = 29134},
['stampor mount'] = {cost = 0, items = {{42027,100}}, mount_id = 11, storageID = 29135},
['undead cavebear mount'] = {cost = 0, items = {{42027,100}}, mount_id = 12, storageID = 29136},
['donkey mount'] = {cost = 0, items = {{42027,100}}, mount_id = 13, storageID = 29137},
['tiger slug mount'] = {cost = 0, items = {{42027,100}}, mount_id = 14, storageID = 29138},
['uniwheel mount'] = {cost = 0, items = {{42027,150}}, mount_id = 15, storageID = 29139},
['crystal wolf mount'] = {cost = 0, items = {{42027,100}}, mount_id = 16, storageID = 29140},
['war horse mount'] = {cost = 0, items = {{42027,50}}, mount_id = 17, storageID = 29141},
['kingly deer mount'] = {cost = 0, items = {{42027,75}}, mount_id = 18, storageID = 29142},
['tamed panda mount'] = {cost = 0, items = {{42027,50}}, mount_id = 19, storageID = 29143},
['dromedary mount'] = {cost = 0, items = {{42027,50}}, mount_id = 20, storageID = 29144},
['scorpion king mount'] = {cost = 0, items = {{42027,100}}, mount_id = 21, storageID = 29145},
['lady bug mount'] = {cost = 0, items = {{42027,100}}, mount_id = 27, storageID = 29146},
['manta ray mount'] = {cost = 0, items = {{42027,100}}, mount_id = 28, storageID = 29147},
['ironblight mount'] = {cost = 0, items = {{42027,100}}, mount_id = 29, storageID = 2148},
['magma crawler mount'] = {cost = 0, items = {{42027,100}}, mount_id = 30, storageID = 29149},
['dragonling mount'] = {cost = 0, items = {{42027,100}}, mount_id = 31, storageID = 29150},
['gnarlhound mount'] = {cost = 0, items = {{42027,75}}, mount_id = 32, storageID = 29151},
['water buffalo mount'] = {cost = 0, items = {{42027,75}}, mount_id = 35, storageID = 29152},
['ursagrodon mount'] = {cost = 0, items = {{42027,100}}, mount_id = 38, storageID = 29153},
['the hellgrip mount'] = {cost = 0, items = {{42027,100}}, mount_id = 39, storageID = 29154},
['noble lion mount'] = {cost = 0, items = {{42027,100}}, mount_id = 28, storageID = 29155},
['walker mount'] = {cost = 0, items = {{42027,100}}, mount_id = 43, storageID = 29156},
['glooth glider mount'] = {cost = 0, items = {{42027,100}}, mount_id = 71, storageID = 29157},
['rift runner mount'] = {cost = 0, items = {{42027,100}}, mount_id = 87, storageID = 29158},
['sparkion mount'] = {cost = 0, items = {{42027,150}}, mount_id = 94, storageID = 29159},
['shock head mount'] = {cost = 0, items = {{42027,150}}, mount_id = 42, storageID = 29160},
['neon sparkid mount'] = {cost = 0, items = {{42027,100}}, mount_id = 98, storageID = 29161},
['vortexion mount'] = {cost = 0, items = {{42027,150}}, mount_id = 99, storageID = 29162},
['stone rhino mount'] = {cost = 0, items = {{42027,100}}, mount_id = 106, storageID = 29163},
['mole mount'] = {cost = 0, items = {{42027,100}}, mount_id = 119, storageID = 29164},
['fleeting knowledge mount'] = {cost = 0, items = {{42027,100}}, mount_id = 126, storageID = 29165},
['lacewig moth mount'] = {cost = 0, items = {{42027,100}}, mount_id = 280, storageID = 29166},
['hibernal moth mount'] = {cost = 0, items = {{42027,100}}, mount_id = 131, storageID = 29167},
['cold percht sleigh mount'] = {cost = 0, items = {{42027,100}}, mount_id = 132, storageID = 29168},
['bright percht sleigh mount'] = {cost = 0, items = {{42027,100}}, mount_id = 133, storageID = 29169},
['dark percht sleigh mount'] = {cost = 0, items = {{42027,100}}, mount_id = 134, storageID = 29170},
['gryphon mount'] = {cost = 0, items = {{42027,100}}, mount_id = 144, storageID = 29171},
['cold percht sleigh variant mount'] = {cost = 0, items = {{42027,100}}, mount_id = 147, storageID = 29172},
['bright percht sleigh variant mount'] = {cost = 0, items = {{42027,100}}, mount_id = 148, storageID = 29173},
['dark percht sleigh variant mount'] = {cost = 0, items = {{42027,100}}, mount_id = 149, storageID = 29174},
['cold percht sleigh final mount'] = {cost = 0, items = {{42027,100}}, mount_id = 150, storageID = 29175},
['bright percht sleigh final mount'] = {cost = 0, items = {{42027,100}}, mount_id = 151, storageID = 29176},
['dark percht sleigh final mount'] = {cost = 0, items = {{42027,100}}, mount_id = 152, storageID = 29177},
['blue rolling barrel mount'] = {cost = 0, items = {{42027,100}}, mount_id = 156, storageID = 29178},
['red rolling barrel mount'] = {cost = 0, items = {{42027,100}}, mount_id = 157, storageID = 29179},
['green rolling barrel mount'] = {cost = 0, items = {{42027,100}}, mount_id = 158, storageID = 29180},
['haze mount'] = {cost = 0, items = {{42027,100}}, mount_id = 162, storageID = 29181},
['antelope mount'] = {cost = 0, items = {{42027,100}}, mount_id = 163, storageID = 29182},
['phantasmal jade mount'] = {cost = 0, items = {{42027,200}}, mount_id = 167, storageID = 29183},
['white lion mount'] = {cost = 0, items = {{42027,100}}, mount_id = 174, storageID = 29184},
['krakoloss mount'] = {cost = 0, items = {{42027,100}}, mount_id = 175, storageID = 29185},
['phant mount'] = {cost = 0, items = {{42027,150}}, mount_id = 182, storageID = 29186},
['shellodon mount'] = {cost = 0, items = {{42027,200}}, mount_id = 183, storageID = 29187},
['singeing steed mount'] = {cost = 0, items = {{42027,200}}, mount_id = 184, storageID = 29188},
['gloothomotive mount'] = {cost = 0, items = {{42027,200}}, mount_id = 194, storageID = 29189},
['red draggy mount'] = {cost = 0, items = {{42027,300}}, mount_id = 201, storageID = 29190},
['black draggy mount'] = {cost = 0, items = {{42027,300}}, mount_id = 202, storageID = 29191},
['giant beaver mount'] = {cost = 0, items = {{42027,300}}, mount_id = 203, storageID = 29192},
['ripptor mount'] = {cost = 0, items = {{42027,300}}, mount_id = 204, storageID = 29193},
['armoured dromedary mount'] = {cost = 0, items = {{42027,350}}, mount_id = 208, storageID = 29194},
['blue tiger mount'] = {cost = 0, items = {{42027,1000}}, mount_id = 209, storageID = 29195},
['rage draptor mount'] = {cost = 0, items = {{42027,350}}, mount_id = 210, storageID = 29196},
['flame horse mount'] = {cost = 0, items = {{42027,450}}, mount_id = 211, storageID = 29197},
['guardian bear mount'] = {cost = 0, items = {{42027,450}}, mount_id = 212, storageID = 29198},
['polar bear mount'] = {cost = 0, items = {{42027,450}}, mount_id = 213, storageID = 29199},
['soho bear mount'] = {cost = 0, items = {{42027,450}}, mount_id = 214, storageID = 29200},
['angry draptor mount'] = {cost = 0, items = {{42027,450}}, mount_id = 215, storageID = 29201},
['crawl monkey mount'] = {cost = 0, items = {{42027,450}}, mount_id = 216, storageID = 29202},
['Tangerine Flecked Koi'] = {cost = 0, items = {{42027,450}}, mount_id = 217, storageID = 29203},
['Brass Speckled Koi'] = {cost = 0, items = {{42027,450}}, mount_id = 218, storageID = 29204},
['Ink Spotted Koi'] = {cost = 0, items = {{42027,450}}, mount_id = 219, storageID = 29205},

}
local o = {'nightmare', 'jester', 'brotherhood', 'demon hunter', 'yalaharian', 'newly wed', 'warmaster', 'wayfarer', 'afflicted', 'elementalist', 'deeplind', 'insectoid',
'crystal warlord', 'soil guardian', 'demon','cave explorer', 'dream warden', 'glooth engineer', 'recruiter', 'rift warrior', 'festive', 'makeshift warrior', 'battle mage', 'discoverer',
'dream warrior' }
local b = {'widow queen', 'racing bird', 'war bear', 'black sheep', 'titanica', 'tin lizzard', 'blazebringer', 'rapid boar', 'stampor', 'undead cavebear', 'donkey', 'tiger slug',
'uniwheel', 'crystal wolf', 'war horse', 'kingly deer', 'tamed panda', 'dromedary', 'scropion king', 'lady bug', 'manta ray', 'ironblight', 'magma crawler', 'dragonling', 'gnarlhound',
'water buffalo', 'ursagrodon', 'the hellgrip', 'noble lion' }
local c = {'walker','glooth glider', 'rift runner', 'sparkion', 'shock head', 'neon sparkid', 'vortexion', 'stone rhino', 'mole', 'fleeting knowledge', 'lacewig moth', 'hibernal moth', 'cold percht sleigh',
'bright percht sleigh', 'dark percht sleigh', 'gryphon', 'cold percht sleigh variant', 'bright percht sleigh varian', 'dark percht sleight variant', 'cold percht sleigh final', 'bright percht sleigh final',
'dark percht sleigh final', 'blue rolling barrel', 'red rolling barrel', 'green rolling barrel', 'haze'}
local d = {'antelope', 'phantasmal jade', 'white lion', 'krakoloss', 'phant', 'shellodon', 'singeing steed', 'gloothomotive', 'red draggy', 'black draggy', 'giant beaver', 'ripptor', 'armoured dromedary',
'blue tiger', 'rage draptor', 'flame horse', 'guardian bear', 'polar bear', 'soho bear', 'anrgy draptor', 'crawl monkey'}
function creatureSayCallback(cid, type, msg)
local talkUser = cid

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if addoninfo[msg] ~= nil then
        if (getPlayerStorageValue(cid, addoninfo[msg].storageID) ~= -1) then
                npcHandler:say('You already have this addon!', cid)
                npcHandler:resetNpc()
        else
        local itemsTable = addoninfo[msg].items
        local items_list = ''
            if table.maxn(itemsTable) > 0 then
                for i = 1, table.maxn(itemsTable) do
                    local item = itemsTable[i]
                    items_list = items_list .. item[2] .. ' ' .. ItemType(item[1]):getName()
                    if i ~= table.maxn(itemsTable) then
                        items_list = items_list .. ', '
                    end
                end
            end
        local text = ''
            if (addoninfo[msg].cost > 0) then
                text = addoninfo[msg].cost .. ' gp'
            elseif table.maxn(addoninfo[msg].items) then
                text = items_list
            elseif (addoninfo[msg].cost > 0) and table.maxn(addoninfo[msg].items) then
                text = items_list .. ' and ' .. addoninfo[msg].cost .. ' gp'
            end
            npcHandler:say('For ' .. msg .. ' you will need ' .. text .. '. Do you have it all with you?', cid)
            rtnt[talkUser] = msg
            talkState[talkUser] = addoninfo[msg].storageID
            return true
        end
    elseif msgcontains(msg, "yes") then
        if (talkState[talkUser] > 29052 and talkState[talkUser] < 29202) then
            local items_number = 0
            if table.maxn(addoninfo[rtnt[talkUser]].items) > 0 then
                for i = 1, table.maxn(addoninfo[rtnt[talkUser]].items) do
                    local item = addoninfo[rtnt[talkUser]].items[i]
                    if (getPlayerItemCount(cid,item[1]) >= item[2]) then
                        items_number = items_number + 1
                    end
                end
            end
            if(getPlayerMoney(cid) >= addoninfo[rtnt[talkUser]].cost) and (items_number == table.maxn(addoninfo[rtnt[talkUser]].items)) then
                doPlayerRemoveMoney(cid, addoninfo[rtnt[talkUser]].cost)
                if table.maxn(addoninfo[rtnt[talkUser]].items) > 0 then
                    for i = 1, table.maxn(addoninfo[rtnt[talkUser]].items) do
                        local item = addoninfo[rtnt[talkUser]].items[i]
                        doPlayerRemoveItem(cid,item[1],item[2])
                    end
                end
                doPlayerAddOutfit(cid, addoninfo[rtnt[talkUser]].outfit_male, addoninfo[rtnt[talkUser]].addon)
                doPlayerAddOutfit(cid, addoninfo[rtnt[talkUser]].outfit_female, addoninfo[rtnt[talkUser]].addon)
                doPlayerAddMount(cid, addoninfo[rtnt[talkUser]].mount_id)
                setPlayerStorageValue(cid,addoninfo[rtnt[talkUser]].storageID,1)
                npcHandler:say('Here you are.', cid)
            else
                npcHandler:say('You do not have needed items!', cid)
            end
            rtnt[talkUser] = nil
            talkState[talkUser] = 0
            npcHandler:resetNpc()
            return true
        end
    elseif msgcontains(msg, "addon") then
        npcHandler:say('I can give you base outfit and addons for {' .. table.concat(o, "}, {") .. '} outfits.', cid)
        rtnt[talkUser] = nil
        talkState[talkUser] = 0
        npcHandler:resetNpc()
        return true
    elseif msgcontains(msg, "mounts") then
        npcHandler:say('I can give you these mounts {' .. table.concat(b, "}, {") .. '} maybe you wish to see {more mounts} ?.', cid)
        rtnt[talkUser] = nil
        talkState[talkUser] = 0
        npcHandler:resetNpc()
        return true
    elseif msgcontains(msg, "more mounts") then
        npcHandler:say('The next mounts are: {' .. table.concat(c, "}, {") .. '}., maybe you wish i extend {the list} ?', cid)
        rtnt[talkUser] = nil
        talkState[talkUser] = 0
        npcHandler:resetNpc()
        return true
    elseif msgcontains(msg, "the list") then
        npcHandler:say('The next mounts are: {' .. table.concat(d, "}, {") .. '}.', cid)
        rtnt[talkUser] = nil
        talkState[talkUser] = 0
        npcHandler:resetNpc()
        return true
    elseif msgcontains(msg, "help") then
        npcHandler:say('To buy Outfits: the base outfit say \'base NAME outfit\', for first addon say \'first NAME addon\', for the second addon say \'second NAME addon\'. \n To buy Mounts just ask \'MOUNT NAME mount\'.', cid)
        rtnt[talkUser] = nil
        talkState[talkUser] = 0
        npcHandler:resetNpc()
        return true
    else
        if talkState[talkUser] ~= nil then
            if talkState[talkUser] > 0 then
            npcHandler:say('Come back when you get the items.', cid)
            rtnt[talkUser] = nil
            talkState[talkUser] = 0
            npcHandler:resetNpc()
            return true
            end
        end
    end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())