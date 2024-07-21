-- settings after setup of plugins

local api = require 'nvim-tree.api'

local function opts(desc)
  return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end

-- custom mappings
vim.keymap.set('n', '<leader>te', api.tree.toggle, opts 'Toggle explorer')
vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts 'Up')
