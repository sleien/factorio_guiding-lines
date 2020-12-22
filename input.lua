local data_util = require("data_util")

data:extend{
    {
        type = 'custom-input',
        name = data_util.mod_prefix .. 'generate-drawing-tool',
        key_sequence = 'O',
        enabled_while_spectating = true,
    }
}
