require('mini.trailspace').setup()
local builtin = require('mini.pick').builtin
vim.keymap.set("n", "<leader>pf", builtin.files, {})

vim.keymap.set("n", "<leader>pg", function()
    builtin.files({ tool = 'git' })
end)

vim.keymap.set("n", "<leader>ps", builtin.grep)

-- vim.keymap.set("n", "<leader>ps", function()
--     builtin.grep({ pattern = vim.fn.input("Grep > ")})
-- end)

