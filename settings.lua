data:extend{
    --[[{
    type = "bool-setting",
    name = "gl-use-player-color",
    order = "a",
    setting_type = "runtime-per-user",
    default_value = "true",
  },]]--
  {
    type = "string-setting",
    name = "gl-line-color",
    order = "b",
    setting_type = "runtime-per-user",
    default_value = "yellow",
    allowed_values = { "red", "green", "blue", "yellow", "pink", "cyan", "white" }
  },
  {
      type = "int-setting",
      name = "gl-lifetime",
      order = "c",
      setting_type = "runtime-per-user",
      default_value = 60,
      minimum_value = 1,
      maximum_value = 3600
  },
  {
      type = "int-setting",
      name = "gl-distance",
      order = "d",
      setting_type = "runtime-per-user",
      default_value = 25,
      minimum_value = 1,
      maximum_value = 150
  },
}