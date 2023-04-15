local worldBoss = GlobalEvent("archaedasWb")

local cfg = {
    teleportPos = {x = 31851, y = 32527, z = 12, stackpos = 1},
    teleportToPos = {x = 31823, y = 32443, z = 12},
    min = 60  
 }
  
 local function removeMagicForcefield(position)
   Tile({x = 31851, y = 32527, z = 12}):getItemById(1387):remove()
end

 function worldBoss.onTime()
    if(os.date("%A") == "Wednesday") then 
       doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
       Game.broadcastMessage("World Boss Archaedas has spawned!", MESSAGE_EVENT_ADVANCE)
       addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 31851, y = 32527, z = 12, stackpos = 1}).uid, 1)
 
 Game.createMonster("Archaedas", Position(31809, 32448, 12)) 
    end
    return true
 end

worldBoss:time("20:00:00")
worldBoss:register()


local worldBossLarva = GlobalEvent("larvaQueenWb")

local cfg = {
    teleportPos = {x = 32102, y = 32663, z = 14, stackpos = 14},
    teleportToPos = {x = 32803, y = 32464, z = 8},
    min = 60
 }
  
 local function removeMagicForcefield(position)
   Tile({x = 32102, y = 32663, z = 14}):getItemById(1387):remove()
end

 function worldBossLarva.onTime()
    if(os.date("%A") == "Friday") then 
       doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
       Game.broadcastMessage("World Boss Larva Queen has spawned!", MESSAGE_EVENT_ADVANCE)
       addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32102, y = 32663, z = 14, stackpos = 1}).uid, 1)
 
 Game.createMonster("Larva Queen", Position(32777, 32412, 8)) 
 Game.createMonster("Larva Corpse", Position(32777, 32410, 8)) 
 Game.createMonster("Larva Corpse", Position(32777, 32409, 8)) 
 Game.createMonster("Larva Estomac", Position(32777, 32408, 8)) 
 Game.createMonster("Larva Estomac", Position(32777, 32407, 8)) 
 Game.createMonster("Larva Eggs", Position(32774, 32408, 8)) 
 Game.createMonster("Larva Eggs", Position(32773, 32412, 8)) 
 Game.createMonster("Larva Eggs", Position(32781, 32408, 8)) 
 Game.createMonster("Larva Eggs", Position(32782, 32412, 8)) 
 Game.createMonster("Larva Neck", Position(32777, 32411, 8)) 
    end
    return true
 end

worldBossLarva:time("12:00:00")
worldBossLarva:register()

local worldBossArgnork = GlobalEvent("argnorokWb")

local cfg = {
    teleportPos = {x = 32835, y = 32328, z = 7, stackpos = 14},
    teleportToPos = {x = 32997, y = 32656, z = 8},
    min = 60
 }
  
 local function removeMagicForcefield(position)
   Tile({x = 32835, y = 32328, z = 7}):getItemById(1387):remove()
end

 function worldBossArgnork.onTime()
    if(os.date("%A") == "Saturday") then 
       doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
       Game.broadcastMessage("World Boss Argnork has spawned!", MESSAGE_EVENT_ADVANCE)
       addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32835, y = 32328, z = 7, stackpos = 1}).uid, 1)
 
 Game.createMonster("Argnork", Position(32999, 32622, 8)) 
    end
    return true
 end

 worldBossArgnork:time("12:00:00")
 worldBossArgnork:register()

 local worldBossAsira = GlobalEvent("asiraWb")

local cfg = {
    teleportPos = {x = 31611, y = 32253, z = 10, stackpos = 14},
    teleportToPos = {x = 31578, y = 32269, z = 10},
    min = 60
 }
  
 local function removeMagicForcefield(position)
   Tile({x = 31611, y = 32253, z = 10}):getItemById(1387):remove()
end

 function worldBossAsira.onTime()
    if(os.date("%A") == "Wednesday") then 
       doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
       Game.broadcastMessage("World Boss Asira Arcanist has spawned!", MESSAGE_EVENT_ADVANCE)
       addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 31611, y = 32253, z = 10, stackpos = 1}).uid, 1)
 
 Game.createMonster("Asira Arcanist", Position(31577, 32263, 10)) 
    end
    return true
 end

 worldBossAsira:time("16:00:00")
 worldBossAsira:register()

 local worldBossCrus = GlobalEvent("crustosteoWb")

 local cfg = {
     teleportPos = {x = 32064, y = 32429, z = 9, stackpos = 14},
     teleportToPos = {x = 32063, y = 32430, z = 8},
     min = 60
  }
   
  local function removeMagicForcefield(position)
    Tile({x = 32064, y = 32429, z = 9}):getItemById(1387):remove()
 end
 
  function worldBossCrus.onTime()
     if(os.date("%A") == "Thursday") then 
        doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
        Game.broadcastMessage("World Boss Crustosteo has spawned!", MESSAGE_EVENT_ADVANCE)
        addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32064, y = 32429, z = 9, stackpos = 1}).uid, 1)
  
  Game.createMonster("Crustosteo", Position(32061, 32423, 8)) 
     end
     return true
  end
 
  worldBossCrus:time("16:00:00")
  worldBossCrus:register()


  local worldBossDeathwing = GlobalEvent("deathwingWb")

  local cfg = {
      teleportPos = {x = 32877, y = 32408, z = 8, stackpos = 14},
      teleportToPos = {x = 32877, y = 32410, z = 8},
      min = 60
   }
    
   local function removeMagicForcefield(position)
     Tile({x = 32877, y = 32408, z = 8}):getItemById(1387):remove()
  end
  
   function worldBossDeathwing.onTime()
      if(os.date("%A") == "Sunday") then 
         doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
         Game.broadcastMessage("World Boss Deathwing has spawned!", MESSAGE_EVENT_ADVANCE)
         addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32877, y = 32408, z = 8, stackpos = 1}).uid, 1)
   
   Game.createMonster("Deathwing", Position(32918, 32505, 8)) 
      end
      return true
   end
  
   worldBossDeathwing:time("20:00:00")
   worldBossDeathwing:register()


   local worldBossDreadlord = GlobalEvent("dreadlordWb")

   local cfg = {
       teleportPos = {x = 32789, y = 32508, z = 8, stackpos = 14},
       teleportToPos = {x = 32784, y = 32509, z = 8},
       min = 60
    }
     
    local function removeMagicForcefield(position)
      Tile({x = 32789, y = 32508, z = 8}):getItemById(1387):remove()
   end
   
    function worldBossDreadlord.onTime()
       if(os.date("%A") == "Saturday") then 
          doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
          Game.broadcastMessage("World Boss Dreadlord has spawned!", MESSAGE_EVENT_ADVANCE)
          addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32789, y = 32508, z = 8, stackpos = 1}).uid, 1)
    
    Game.createMonster("Dreadlord", Position(32777, 32501, 8)) 
       end
       return true
    end
   
    worldBossDreadlord:time("16:00:00")
    worldBossDreadlord:register()


    local worldBossKilJaeden = GlobalEvent("kiljaedenWb")

    local cfg = {
        teleportPos = {x = 32976, y = 32396, z = 8, stackpos = 14},
        teleportToPos = {x = 32949, y = 32424, z = 8},
        min = 60
     }
      
     local function removeMagicForcefield(position)
       Tile({x = 32976, y = 32396, z = 8}):getItemById(1387):remove()
    end
    
     function worldBossKilJaeden.onTime()
        if(os.date("%A") == "Sunday") then 
           doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
           Game.broadcastMessage("World Boss Kil'Jaeden has spawned!", MESSAGE_EVENT_ADVANCE)
           addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32976, y = 32396, z = 8, stackpos = 1}).uid, 1)
     
     Game.createMonster("Kil'Jaeden", Position(32943, 32398, 8)) 
        end
        return true
     end
    
     worldBossKilJaeden:time("12:00:00")
     worldBossKilJaeden:register()

     local worldbossEmerald = GlobalEvent("emeraldWb")

     local cfg = {
         teleportPos = {x = 31963, y = 32769, z = 9, stackpos = 14},
         teleportToPos = {x = 32801, y = 32592, z = 8},
         min = 60
      }
       
      local function removeMagicForcefield(position)
        Tile({x = 31963, y = 32769, z = 9}):getItemById(1387):remove()
     end
     
      function worldbossEmerald.onTime()
         if(os.date("%A") == "Friday") then 
            doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
            Game.broadcastMessage("World Boss Emerald Leviathan has spawned!", MESSAGE_EVENT_ADVANCE)
            addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 31963, y = 32769, z = 9, stackpos = 1}).uid, 1)
      
      Game.createMonster("Emerald Leviathan", Position(32802, 32553, 8)) 
         end
         return true
      end
     
      worldbossEmerald:time("20:00:00")
      worldbossEmerald:register()

      local worldbossNether = GlobalEvent("netherWb")

      local cfg = {
          teleportPos = {x = 32466, y = 32286, z = 9, stackpos = 14},
          teleportToPos = {x = 32466, y = 32290, z = 9},
          min = 60
       }
        
       local function removeMagicForcefield(position)
         Tile({x = 32466, y = 32286, z = 9}):getItemById(1387):remove()
      end
      
       function worldbossNether.onTime()
          if(os.date("%A") == "Tuesday") then 
             doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
             Game.broadcastMessage("World Boss Netherspite has spawned!", MESSAGE_EVENT_ADVANCE)
             addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32466, y = 32286, z = 9, stackpos = 1}).uid, 1)
       
       Game.createMonster("Netherspite", Position(32449, 32267, 10)) 
          end
          return true
       end
      
       worldbossNether:time("16:00:00")
       worldbossNether:register()

       local worldBossOssirian = GlobalEvent("ossirianWb")

      local cfg = {
          teleportPos = {x = 31939, y = 32514, z = 8, stackpos = 14},
          teleportToPos = {x = 31970, y = 32534, z = 8},
          min = 60
       }
        
       local function removeMagicForcefield(position)
         Tile({x = 31939, y = 32514, z = 8}):getItemById(1387):remove()
      end
      
       function worldBossOssirian.onTime()
          if(os.date("%A") == "Monday") then 
             doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
             Game.broadcastMessage("World Boss Ossirian has spawned!", MESSAGE_EVENT_ADVANCE)
             addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 31939, y = 32514, z = 8, stackpos = 1}).uid, 1)
       
       Game.createMonster("Ossirian", Position(31970, 32514, 8)) 
          end
          return true
       end
      
       worldBossOssirian:time("16:00:00")
       worldBossOssirian:register()


       local worldBossRevendroth = GlobalEvent("revendrothWb")

       local cfg = {
           teleportPos = {x = 32274, y = 32677, z = 6, stackpos = 14},
           teleportToPos = {x = 32875, y = 32665, z = 7},
           min = 60
        }
         
        local function removeMagicForcefield(position)
          Tile({x = 32274, y = 32677, z = 6}):getItemById(1387):remove()
       end
       
        function worldBossRevendroth.onTime()
           if(os.date("%A") == "Thursday") then 
              doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
              Game.broadcastMessage("World Boss Revendroth has spawned!", MESSAGE_EVENT_ADVANCE)
              addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32274, y = 32677, z = 6, stackpos = 1}).uid, 1)
        
        Game.createMonster("Revendroth", Position(32914, 32614, 8)) 
           end
           return true
        end
       
        worldBossRevendroth:time("20:00:00")
        worldBossRevendroth:register()


        local worldBossSartharion = GlobalEvent("sartharionWb")

        local cfg = {
            teleportPos = {x = 32532, y = 32509, z = 9, stackpos = 14},
            teleportToPos = {x = 32531, y = 32512, z = 10},
            min = 60
         }
          
         local function removeMagicForcefield(position)
           Tile({x = 32532, y = 32509, z = 9}):getItemById(1387):remove()
        end
        
         function worldBossSartharion.onTime()
            if(os.date("%A") == "Thursday") then 
               doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
               Game.broadcastMessage("World Boss Sartharion has spawned!", MESSAGE_EVENT_ADVANCE)
               addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32532, y = 32509, z = 9, stackpos = 1}).uid, 1)
         
         Game.createMonster("Sartharion", Position(32562, 32502, 9)) 
            end
            return true
         end
        
         worldBossSartharion:time("12:00:00")
         worldBossSartharion:register()


         local worldBossTrygosa = GlobalEvent("trygosaWb")

        local cfg = {
            teleportPos = {x = 31765, y = 32568, z = 4, stackpos = 14},
            teleportToPos = {x = 32756, y = 32553, z = 5},
            min = 60
         }
          
         local function removeMagicForcefield(position)
           Tile({x = 32532, y = 32509, z = 9}):getItemById(1387):remove()
        end
        
         function worldBossTrygosa.onTime()
            if(os.date("%A") == "Wednesday") then 
               doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
               Game.broadcastMessage("World Boss Trygosa has spawned!", MESSAGE_EVENT_ADVANCE)
               addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32532, y = 32509, z = 9, stackpos = 1}).uid, 1)
         
         Game.createMonster("Trygosa", Position(32755, 32554, 8)) 
            end
            return true
         end
        
         worldBossTrygosa:time("12:00:00")
         worldBossTrygosa:register()


         local worldBossViscidius = GlobalEvent("viscidiusWb")

         local cfg = {
             teleportPos = {x = 32686, y = 31961, z = 9, stackpos = 14},
             teleportToPos = {x = 32687, y = 31961, z = 10},
             min = 60
          }
           
          local function removeMagicForcefield(position)
            Tile({x = 32686, y = 31961, z = 9}):getItemById(1387):remove()
         end
         
          function worldBossViscidius.onTime()
             if(os.date("%A") == "Tuesday") then 
                doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
                Game.broadcastMessage("World Boss Viscidius has spawned!", MESSAGE_EVENT_ADVANCE)
                addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32686, y = 31961, z = 9, stackpos = 1}).uid, 1)
          
          Game.createMonster("Viscidius", Position(32698, 31933, 11)) 
             end
             return true
          end
         
          worldBossViscidius:time("20:00:00")
          worldBossViscidius:register()


          local worldBossWushoolay = GlobalEvent("wushoolayWb")

         local cfg = {
             teleportPos = {x = 32182, y = 32481, z = 8, stackpos = 14},
             teleportToPos = {x = 32185, y = 32477, z = 8},
             min = 60
          }
           
          local function removeMagicForcefield(position)
            Tile({x = 32182, y = 32481, z = 8}):getItemById(1387):remove()
         end
         
          function worldBossWushoolay.onTime()
             if(os.date("%A") == "Monday") then 
                doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
                Game.broadcastMessage("World Boss Wushoolay has spawned!", MESSAGE_EVENT_ADVANCE)
                addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 32182, y = 32481, z = 8, stackpos = 1}).uid, 1)
          
          Game.createMonster("Wushoolay", Position(32205, 32445, 8)) 
             end
             return true
          end
         
          worldBossWushoolay:time("20:00:00")
          worldBossWushoolay:register()


          local worldBossWyrm = GlobalEvent("wyrmWb")

         local cfg = {
             teleportPos = {x = 33177, y = 32682, z = 8, stackpos = 14},
             teleportToPos = {x = 33202, y = 32624, z = 8},
             min = 60
          }
           
          local function removeMagicForcefield(position)
            Tile({x = 33177, y = 32682, z = 8}):getItemById(1387):remove()
         end
         
          function worldBossWyrm.onTime()
             if(os.date("%A") == "Saturday") then 
                doCreateTeleport(1387, cfg.teleportToPos, cfg.teleportPos)
                Game.broadcastMessage("World Boss Wushoolay has spawned!", MESSAGE_EVENT_ADVANCE)
                addEvent(removeMagicForcefield, cfg.min * 10 * 1000, getThingfromPos({x = 33177, y = 32682, z = 8, stackpos = 1}).uid, 1)
          
          Game.createMonster("the Wyrm", Position(33089, 32632, 9)) 
             end
             return true
          end
         
          worldBossWyrm:time("20:00:00")
          worldBossWyrm:register()