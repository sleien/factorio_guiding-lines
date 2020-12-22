data:extend(
{
  {
    type = "optimized-decorative",
    name = "draw-line-dot",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__guiding-line__/graphics/dot.png",
    subgroup = "grass",
    order = "z",
    collisionBox = {{-0, -0}, {0, 0}},
	  collisionMask = {"ghost-layer"},
    selectable_in_game = false,
    render_layer = "decorative",
    --autoplace = autoplace_settings(nil, 0.05, {{{35, 1}, {0, 0.7}}}),
    pictures =
    {
      {
        filename = "__guiding-line__/graphics/dot.png",
        width = 5,
        height = 5,
      }
    }
  }
}
)