-- nvim-surround
-- https://github.com/kylechui/nvim-surround
--

return {
  'kylechui/nvim-surround',
  version = '^4.0.0', -- Use for stability; omit to use `main` branch for the latest features
  keys = {
    -- Insert Mode
    { '<C-g>z', '<Plug>(nvim-surround-insert)', remap = true, mode = 'i', desc = 'Add surrounding (insert)' },
    { '<C-g>Z', '<Plug>(nvim-surround-insert-line)', remap = true, mode = 'i', desc = 'Add surrounding line (insert)' },

    -- Normal Mode
    { 'yz', '<Plug>(nvim-surround-normal)', remap = true, mode = 'n', desc = 'Add surrounding' },
    { 'yzz', '<Plug>(nvim-surround-normal-cur)', remap = true, mode = 'n', desc = 'Add surrounding current line' },
    { 'yZ', '<Plug>(nvim-surround-normal-line)', remap = true, mode = 'n', desc = 'Add surrounding line' },
    { 'yZZ', '<Plug>(nvim-surround-normal-cur-line)', remap = true, mode = 'n', desc = 'Add surrounding current line vertical' },
    { 'dz', '<Plug>(nvim-surround-delete)', remap = true, mode = 'n', desc = 'Delete surrounding' },
    { 'cz', '<Plug>(nvim-surround-change)', remap = true, mode = 'n', desc = 'Change surrounding' },
    { 'cZ', '<Plug>(nvim-surround-change-line)', remap = true, mode = 'n', desc = 'Change surrounding line' },

    -- Visual Mode
    { 'Z', '<Plug>(nvim-surround-visual)', remap = true, mode = 'x', desc = 'Add surrounding (visual)' },
    { 'gZ', '<Plug>(nvim-surround-visual-line)', remap = true, mode = 'x', desc = 'Add surrounding line (visual)' },
  },
  config = function()
    -- See `:h nvim-surround.options
    vim.g.nvim_surround_no_normal_mappings = true
    require('nvim-surround').setup {}
  end,
}
