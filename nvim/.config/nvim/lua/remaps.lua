-- Remaps and Options
--
-- Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Clipboard
vim.o.clipboard = 'unnamedplus'
-- Options
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.bo.softtabstop = 2
vim.o.termguicolors = true
vim.o.mouse = 'a'
-- Remaps
local opts = {noremap = true}
vim.keymap.set("n", "<leader>n", vim.cmd.Ex, opts)
vim.keymap.set("i", "jj", "<ESC>", opts)

