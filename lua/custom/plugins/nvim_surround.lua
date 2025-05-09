-- nvim-surround
-- https://github.com/kylechui/nvim-surround
--

return {
  'kylechui/nvim-surround',
  version = '^3.0.0', -- Use for stability; omit to use `main` branch for the latest features
  event = 'VeryLazy',
  config = function()
    require('nvim-surround').setup {
      keymaps = {
        insert = '<C-g>z',
        insert_line = '<C-g>Z',
        normal = 'yz',
        normal_cur = 'yzz',
        normal_line = 'yZ',
        normal_cur_line = 'yZZ',
        visual = 'Z',
        visual_line = 'gZ',
        delete = 'dz',
        change = 'cz',
        change_line = 'cZ',
      },
    }
  end,
}
