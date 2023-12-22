marks = require("neomarks")
marks.setup({
    storagefile = vim.fn.stdpath("data") .. "/neomarks.json",
    menu = {
        title = "Marks",
        title_pos = "center",
        border = "rounded",
        width = 60,
        height = 10,
    }
})

vim.keymap.set("n", "<leader>a", marks.mark_file)
vim.keymap.set("n", "<C-e>", marks.menu_toggle)

vim.keymap.set("n", "<C-h>", function() marks.jump_to(1) end)
vim.keymap.set("n", "<C-j>", function() marks.jump_to(2) end)
vim.keymap.set("n", "<C-k>", function() marks.jump_to(3) end)
vim.keymap.set("n", "<C-l>", function() marks.jump_to(4) end)
