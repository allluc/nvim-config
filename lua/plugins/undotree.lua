vim.keymap.set("n", "<leader><r>", function()
  vim.cmd.UndotreeToggle()
  vim.cmd.UndotreeFocus()
end)
