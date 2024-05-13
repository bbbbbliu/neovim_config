
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
local plugins = {
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "folke/lazy.nvim",
  "dracula/vim",
  "williamboman/mason.nvim",
  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
  {
   "folke/which-key.nvim",
   event = "VeryLazy",
   init = function()
     vim.o.timeout = true
     vim.o.timeoutlen = 300
   end,
   opts = {
     -- your configuration comes here
     -- or leave it empty to use the default settings
     -- refer to the configuration section below
   }
  },

  -- Cmp
  "hrsh7th/nvim-cmp",  -- The completion plugin
  "hrsh7th/cmp-nvim-lua", 
  "hrsh7th/cmp-path", -- path completions
	"saadparwaiz1/cmp_luasnip",  -- snippet completions
	"hrsh7th/cmp-nvim-lsp", 
	"hrsh7th/cmp-nvim-lua",
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

  -- snippets
  {
  	"L3MON4D3/LuaSnip",
	  -- follow latest release.
	  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  	-- install jsregexp (optional!).
   	build = "make install_jsregexp",
  dependencies = { "rafamadriz/friendly-snippets" }
  }

  }
require("lazy").setup(plugins, opts)
