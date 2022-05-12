require('plugins')
require('keybinding')
require('options')
require('bufferline-config')
require('nvim-tree-config')
require('lualine-config')
--vim.cmd('colorscheme onedark')
require('autopairs-config')
require('keybinding')
require('whichkey-config')
require('telescope-config')
require('lsp')
--require('colorizer-config')
require('dashboard-conf')
require('blankline-config')
require('toggleterm-conf')
require('comment-conf')
--require('null-ls-conf')

---- Setting up Neon
--vim.g.neon_style = "dark"
--vim.g.neon_italic_keyword = true
--vim.g.neon_italic_function = true
--vim.g.neon_transparent = true
--vim.cmd[[colorscheme neon]]

---- Setting up tokyodark
--vim.g.tokyodark_transparent_background = false
-- vim.g.tokyodark_enable_italic_comment = true
-- vim.g.tokyodark_enable_italic = true
-- vim.g.tokyodark_color_gamma = "1.0"
-- vim.cmd("colorscheme tokyodark")

---- ToktoNight Config
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
