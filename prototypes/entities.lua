local function beam(name, tint)
	data:extend({
		{
			type = "beam",
			width = 0.5,
			name = "guiding-line-line-"..name,
			damage_interval = 1000,
			random_target_offset = false,
			flags = { "not-on-map" },
			body = {
				{
					animation_speed = 0.5,
					blend_mode = "additive",
					filename = "__guiding-line__/graphics/guiding-line-body.png",
					flags = {"mipmap"},
					frame_count = 8,
					height = 12,
					line_length = 8,
					scale = 0.5,
					width = 64,
					tint = tint,
				}
			},
			head = {
				animation_speed = 0.5,
				blend_mode = "additive",
        filename = "__guiding-line__/graphics/guiding-line-body.png",
				flags = {"mipmap"},
				frame_count = 8,
				height = 12,
				line_length = 8,
				scale = 0.5,
				width = 64,
				tint = tint,
			},
			tail = {
				animation_speed = 0.5,
				blend_mode = "additive",
        filename = "__guiding-line__/graphics/guiding-line-body.png",
				flags = {"mipmap"},
				frame_count = 8,
				height = 12,
				line_length = 8,
				scale = 0.5,
				width = 64,
				tint = tint,
			},
		},
	})
end

beam("red", { r = 0.4, g = 0, b = 0, a = 1.0 })
beam("green", { r = 0, g = 0.3, b = 0, a = 1.0 })
beam("blue", { r = 0.1, g = 0.1, b = 1, a = 1.0 })
beam("yellow", { r = 0.3, g = 0.3, b = 0, a = 1.0 })
beam("pink", { r = 0.6, g = 0.1, b = 0.3, a = 1.0 })
beam("cyan", { r = 0.0, g = 0.3, b = 0.3, a = 1.0 })
beam("white", { r = 0.3, g = 0.3, b = 0.3, a = 1.0 })
