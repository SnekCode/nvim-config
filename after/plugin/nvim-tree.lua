vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        {key = "-", action = "dir_up"},
        {key = "", action = "cd"}
      }
    }
  }
})

vim.keymap.set('n', '<leader>n', ':NvimTreeFindFileToggle<CR>')

