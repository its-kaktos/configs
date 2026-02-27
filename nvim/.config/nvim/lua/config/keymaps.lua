-- Move selected lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected line down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected line up' })

vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d', {
  desc = 'Delete in the blackhole register',
})

vim.keymap.set('n', 'x', '"_x', { desc = 'Delete character without copying' })

-- Window resizing
vim.keymap.set('n', '<M-j>', '<C-w>-', { desc = 'Decrease window height' })
vim.keymap.set('n', '<M-k>', '<C-w>+', { desc = 'Increase window height' })
vim.keymap.set('n', '<M-l>', '<Cmd>vertical resize +5<CR>', { desc = 'Increase window width' })
vim.keymap.set('n', '<M-h>', '<Cmd>vertical resize -5<CR>', { desc = 'Decrease window width' })

vim.keymap.set('n', '<leader>tt', '<Cmd>tab split<CR>', {
  desc = 'Open window in a new tab',
})

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Toggle hlsearch if it's on, otherwise just do "enter"
vim.keymap.set('n', '<CR>', function()
  ---@diagnostic disable-next-line: undefined-field
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ''
  else
    return vim.keycode '<CR>'
  end
end, { expr = true })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Move between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>ts', function()
  vim.cmd.vnew() -- Open a new vertical window
  vim.cmd.wincmd 'J' -- moves the new terminal window all the way to the bottom
  vim.api.nvim_win_set_height(0, 15) -- sets the height of the window, obviously.
  vim.wo.winfixheight = true -- Prevent the height from being changed
  vim.cmd.term() -- opens terminal
end, { desc = 'Open [t]erminal [s]mall window' })

vim.keymap.set('n', '<leader>td', function()
  local filename = vim.api.nvim_buf_get_name(0)
  local dir = vim.fn.fnamemodify(filename, ':p:h')
  print(dir)
end, { desc = 'Open [t]erminal small window and change [d]irectory to buffer directory' })

-- Comment
vim.keymap.set('n', '<g-c>', '<Plug>(comment_toggle_line)', { desc = 'Toggle comment line' })
vim.keymap.set('v', '<g-c>', '<Plug>(comment_toggle_linewise_visual)', { desc = 'Toggle comment selection' })

-- Split window
vim.keymap.set('n', '<c-s>', ':split<Return>', { desc = 'Create split window' })
vim.keymap.set('n', '<c-v>', ':vsplit<Return>', { desc = 'Create split window' })
