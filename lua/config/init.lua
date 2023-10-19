require("config.set")
require("config.remap")
require("config.plugins")

local augroup = vim.api.nvim_create_augroup
local AlxGroup = augroup('alx', {})

local autocmd = vim.api.nvim_create_autocmd
autocmd({"BufWritePre"}, {
    group = AlxGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winzie = 25
