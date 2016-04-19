require "util"
require "defines"


script.on_event(defines.events.on_player_driving_changed_state, function(event)
  tank_talk(event.player_index)
end)

--Function tank_talk(player_index){
function tank_talk(player_index)
  local player = game.get_player(player_index) 
  local tanktype = nil
  local count_auto_cannon_shells = 0
  local count_cannon_shells = 0
  local count_mortar_shells = 0

  if( player.character ) then -- must be exist
    if( player.character.health > 0.0 ) then -- must be alive
      if( player.driving == false ) then
        player.print("Please come back")
      else
        tanktype = player.vehicle.name
        if ( tanktype == "auto-tank" or tanktype == "auto-tank-wlsk" ) then
          count_auto_cannon_shells = player.vehicle.get_item_count("45mm-auto")
          count_cannon_shells = player.vehicle.get_item_count("cannon-shell-2")
          count_mortar_shells = player.vehicle.get_item_count("50mm-mortar")          
          player.print("Tank status:")
          player.print("Auto cannon shells: ".. count_auto_cannon_shells)
          player.print("Battle cannon shells: ".. count_cannon_shells)
          player.print("Mortar shells: ".. count_mortar_shells)
        end
        if ( tanktype == "flame-tank" or tanktype == "flame-tank-wlsk" ) then
          player.print("Lets make the sun shine brighter then ever!")
        end
        if ( tanktype == "diesel-locomotive" ) then
          player.print("Hello sir, please be seated in the most lethal vehicle in this game!")
        end
      end
    end
  end
end