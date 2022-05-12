local wk = require("which-key")
wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = {enabled = false, suggestions = 20},
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      z = false,
      g = false
    }
  }
}
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function ()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

local toggle_lazygit = function ()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
  return lazygit:toggle()
end


local mappings = {
  e = {":NvimTreeToggle<cr>, NvimTreeToggle"},
  f = {":Telescope find_files<cr>", "Telescope Find Files"},
  r = {":Telescope live_grep<cr>", "Telescope Live Grep"},
  t = {
    t = {":ToggleTerm<cr>", "Split Below"},
    f = {toggle_float, "Floating Terminal"},
    l = {toggle_lazygit, "Lazygit"},
  }
}



local opts = {prefix= '<leader>'}
  
wk.register(mappings, opts)

