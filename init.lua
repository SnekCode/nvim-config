vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then
  require("core.options")
  require("core.commands")
  require("core.keymaps")
else
  require("core.plugins")
  require("core.options")
  require("core.commands")
  require("core.keymaps")
end

