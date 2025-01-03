-- lua/config/keymaps.lua

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Tab navigation keybindings
map('n', '<C-PageUp>', ':tabprevious<CR>', { silent = true })
map('n', '<C-PageDown>', ':tabnext<CR>', { silent = true })

-- Split navigation keybindings
map('n', '<C-Up>', '<C-w>k', { silent = true })
map('n', '<C-Down>', '<C-w>j', { silent = true })
map('n', '<C-Left>', '<C-w>h', { silent = true })
map('n', '<C-Right>', '<C-w>l', { silent = true })
