local data_util = require("data_util")

data:extend{
    {
        type = 'custom-input',
        name = data_util.mod_prefix .. 'draw-lines',
        key_sequence = 'O',
        enabled_while_spectating = true,
    }
}
