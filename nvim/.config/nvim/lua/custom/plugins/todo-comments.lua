-- Highlight todo, notes, etc in comments
return {
  'folke/todo-comments.nvim',
  cmd = { 'TodoTelescope' },
  event = { 'VimEnter' },
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false, highlight = { multiline = true, multiline_pattern = '^.', multiline_context = 10 } },
  keys = {
    { '<leader>st', '<cmd>TodoTelescope keywords=TODO<cr>', desc = 'TODO' },
  },
}
