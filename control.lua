local data_util = require("data_util")

old_position={x=0,y=0,surface=0,distance=0,tick=0}

function draw(event)
	
	local player = game.get_player(event.player_index)
	local distance = player.mod_settings["gl-distance"].value
	local duration = player.mod_settings["gl-lifetime"].value
	local x = math.floor(player.position.x) + 0.5
	local y = math.floor(player.position.y) + 0.5
	local color = player.mod_settings["gl-line-color"].value

	draw_lines({x = x, y = y}, distance, color, duration, player.force, player.surface)
end

function draw_lines(position, distance, color, duration, force, surface)

	x = position.x
	y = position.y

	surface.create_entity({
		name = "guiding-line-line-"..color,
		position = position,
		force = force,
		source_position = {x = x - distance, y = y},
		target_position = {x = x + distance, y = y},
		duration = duration * 60
	})

	surface.create_entity({
		name = "guiding-line-line-"..color,
		position = {x = x, y = y},
		force = force,
		source_position = {x = x, y = y + distance},
		target_position = {x = x, y = y - distance},
		duration = duration * 60
	})
end

script.on_event(data_util.mod_prefix.."draw-lines", draw)
--[[

	All events defined:
	https://lua-api.factorio.com/latest/events.html

	Documentation for LuaBootstrap.on_event:
	https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.on_event


]]

















--[[

function container_placed(event)
	--Add an in-game alert saying a container was placed
end

local filters = {{filter="type", type="container"}}
-- Gets raised whenever a player builds an entity
script.on_event(defines.events.on_built_entity, container_placed, filters) --link event to function
]]
