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
        "eemed/sitruuna.vim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme sitruuna")
        end,
        lazy = false,
    },
    {
        "neanias/everforest-nvim",
        priority = 1000,
        config = function()
            vim.cmd("set background=light")
            vim.cmd("colorscheme everforest")
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
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
      priority = 130,
      lazy = false,
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
    { 'echasnovski/mini.nvim', version = 'false' },
    "saccarosium/neomarks",
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = true,
    },
})

