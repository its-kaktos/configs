return {
  'alexghergh/nvim-tmux-navigation',
  init = function()
    vim.g.tmux_navigator_save_on_switch = 2
  end,
  config = function(_, opts)
    require('nvim-tmux-navigation').setup {
      disable_when_zoomed = true, -- defaults to false
      save_on_switch = 2,
      keybindings = {
        left = '<C-h>',
        down = '<C-j>',
        up = '<C-k>',
        right = '<C-l>',
        --next = "<C-Space>",
        --last_active = "<C-\\>",
      },
    }
  end,
}
