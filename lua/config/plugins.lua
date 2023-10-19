local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- vim.cmd [[packadd packer.nvim]]

require('lazy').setup({
    {
        "bluz71/vim-moonfly-colors",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme moonfly")
        end,
        lazy = false,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ':TSUpdate',
        priority = 999,
        lazy = false,
    },
    "nvim-treesitter/playground",
    {
        "neovim/nvim-lspconfig",
        priority = 200,
        lazy = false,
    },
    {
        "williamboman/mason.nvim",
        priority = 150,
        lazy = false,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        priority = 150,
        lazy = false,
    },
    -- use ("hrsh7th/cmp-nvim-lsp")
    { 'echasnovski/mini.nvim', version = 'false' },
    "saccarosium/neomarks",
})

