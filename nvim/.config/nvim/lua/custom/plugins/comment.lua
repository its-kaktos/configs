-- Comments the lines usning the mapped keys
return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup {
      mappings = false, -- disable basic mappings
    }
  end,
}
