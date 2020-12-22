local data_util = require("data_util")

old_position={x=0,y=0,surface=0,distance=0,tick=0}

function draw_lines(event)
	local player = game.get_player(event.player_index)
	local x = math.floor(player.character.position.x)
	local y = math.floor(player.character.position.y)
	drawLine({x = x, y = y}, {x = x + 10, y = y + 10}, player.surface)
end

function drawLine(positionStart, positionEnd, surface)

	--Find the total distance in each X and Y that has to be travelled
	local xDistance = -(positionStart.x - positionEnd.x)
	local yDistance = -(positionStart.y - positionEnd.y)
	
	--Find the total distance of the line
	local distance = settings.player["gl-distance"].value
	
	--Find the number of steps to draw the line
	local steps = settings.player["gl-distance"].value
	
	--Start position
	local xPlacement = positionStart.x
	local yPlacement = positionStart.y

	local density = settings.player["gl-density"].value
	
	if old_position.tick ~= 0 then
		remove_line(old_position.x,old_position.y,game.get_surface(old_position.surface),old_position.distance)
	end

	old_position={x=xPlacement,y=yPlacement,surface=surface.name,distance=distance,tick=game.tick}

	--For each step, place a dot step distance closer to the end point
	for i=0, steps do
		surface.create_decoratives{
			check_collision=false,
			decoratives={
				{name="draw-line-dot", position={xPlacement+i, yPlacement},amount=density},
				{name="draw-line-dot", position={xPlacement-i, yPlacement},amount=density},
				{name="draw-line-dot", position={xPlacement, yPlacement+i},amount=density},
				{name="draw-line-dot", position={xPlacement, yPlacement-i},amount=density}
		}}
	end
end

function remove_line(positionX, positionY, surface, distance)
	surface.destroy_decoratives({left_top={positionX-distance, positionY-distance}, right_bottom={positionX+distance, positionY+distance},name="draw-line-dot"})
	old_position={x=0,y=0,surface=0,distance=0,tick=0}
end

function check_line_age()
	if old_position.tick ~= 0 then
		local max_age = settings.player["gl-lifetime"].value * 60
		if old_position.tick + max_age < game.tick then
			remove_line(old_position.x,old_position.y,game.get_surface(old_position.surface),old_position.distance)
		end
	end
end

script.on_event(data_util.mod_prefix.."generate-drawing-tool", draw_lines)
script.on_event(defines.events.on_tick, check_line_age)

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