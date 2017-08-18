global.ssickmakers = {}
local ev = defines.events
DAMAGE_RANGE = 50
MAX_DAMAGE_HIT = 100
MAX_DURABILITY_HIT = 100
--REACTOR_MULTIPLIER = 2
--CENTRIFUGE_MULTIPLIER = 0.5
_damage_range_squared = DAMAGE_RANGE^2

local handler_on_built_entity = function(event_info)
	local entity = event_info.created_entity
	if string.find(entity.name, "s-lead-protected",1,true) then
		return
	end
	if entity.burner then
		if entity.burner.fuel_category == "nuclear" then
			table.insert(global.ssickmakers, entity)
		end
	elseif entity.name == "centrifuge" then
		table.insert(global.ssickmakers, entity)
	end
end

local handler_on_tick = function(e)
	if e.tick%30==0 and #global.ssickmakers>0 then
		for k,v in pairs(global.ssickmakers) do
			if v.type=="assembling-machine" and v.is_crafting() then 
				for k2,v2 in pairs(game.players) do
					if v2.connected then 
						damage_players_in_range(v, v2, v2.character,settings.global["centrifuge-multiplier"].value)
					end
				end
			elseif v.burner and v.burner.currently_burning then
				for k2,v2 in pairs(game.players) do
					if v2.connected then 
						damage_players_in_range(v, v2, v2.character,settings.global["reactor-multiplier"].value)
					end
				end
			end
		end
	end
	
end

local handler_remove = function(e)
	for k,v in pairs(global.ssickmakers) do
		if v == e.entity then
			table.remove(global.ssickmakers,k)
			break
		end
	end
end

damage_players_in_range = function(entity, player, character, damage_multiplier)
	if character == nil or player == nil then
		return
	end
	DAMAGE_RANGE = settings.global["damage-range"].value
	_damage_range_squared = DAMAGE_RANGE^2
	for k,v in ipairs(settings) do
		--player.print(k .. " " .. v)
	end
	
	local dist_squared = (entity.position.x-player.position.x)^2+(entity.position.y-player.position.y)^2
	
	if dist_squared<=_damage_range_squared then
		local dist_sqrt = math.sqrt(dist_squared)
		local damage = (MAX_DAMAGE_HIT*damage_multiplier)/(DAMAGE_RANGE-(DAMAGE_RANGE-dist_sqrt))
		character.damage(damage, "neutral", "radiation")
		if player.get_inventory(defines.inventory.player_armor) == nil then
			return
		end
		if character and player.get_inventory(defines.inventory.player_armor).get_item_count("radiation-armor") >= 1 then
			player.get_inventory(defines.inventory.player_armor).find_item_stack("radiation-armor").drain_durability(MAX_DURABILITY_HIT/(_damage_range_squared-(_damage_range_squared-dist_squared)))
		end
	end
end

script.on_event({ev.on_built_entity, ev.on_robot_built_entity},handler_on_built_entity)
script.on_event(ev.on_tick,handler_on_tick)
script.on_event({ev.on_entity_died, ev.on_robot_mined_entity, ev.on_player_mined_entity, script_raised_destroy},handler_remove)