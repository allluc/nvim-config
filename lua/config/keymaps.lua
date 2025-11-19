-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Glance
vim.keymap.set('n', 'gD', '<CMD>Glance definitions<CR>')
vim.keymap.set('n', 'gR', '<CMD>Glance references<CR>')
vim.keymap.set('n', 'gY', '<CMD>Glance type_definitions<CR>')
vim.keymap.set('n', 'gM', '<CMD>Glance implementations<CR>')

-- Multicursors
vim.keymap.set({ 'n', 'v' }, 'gl', '<CMD>MCstart<CR>', { desc = 'Multi-select next match' })
vim.keymap.set({ 'n', 'v' }, 'ga', '<CMD>MCunderCursor<CR>', { desc = 'Select all instances' })
