-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"


local telescope = require("telescope")

vim.keymap.set("n", "<leader>js", function () pcall(telescope.extensions.jj.files, opts) end, {})
vim.keymap.set("n", "<leader>jc", function () pcall(telescope.extensions.jj.conflicts, opts) end, {})
vim.keymap.set("n", "<leader>jd", function () pcall(telescope.extensions.jj.diff, opts) end, {})

local Terminal  = require('toggleterm.terminal').Terminal
local lazyjj = Terminal:new({ cmd = "lazyjj", hidden = true , direction = "float", float_opts = { border = "double" }})

function _lazyjj_toggle()
  lazyjj:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>jl", "<cmd>lua _lazyjj_toggle()<CR>", {noremap = true, silent = true})

vim.opt.fileformat = "unix"
vim.opt.fileformats = "unix,dos"
