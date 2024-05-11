
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
  "nvim-treesitter/nvim-treesitter"

}
require("lazy").setup(plugins, opts)
