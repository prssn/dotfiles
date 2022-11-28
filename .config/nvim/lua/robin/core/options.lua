
local opt = vim.opt
local g = vim.g

opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = "utf-8"
opt.fileformats = "unix,dos,mac"
opt.hidden = true
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.mouse = "a"
opt.mousemodel = "popup"
opt.number = true
opt.ruler = true
opt.scl = "yes"
opt.shiftwidth = 4
opt.smartcase = true
opt.softtabstop = 0
opt.tabstop = 4
opt.termguicolors = true
opt.wildmenu = true
opt.wrap = false -- disable line wrapping
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.cursorline = true -- highlight the current cursor line

g.better_whitespace_enabled=1
g.strip_whitespace_on_save=1
g.strip_whitespace_confirm=0
g.show_spaces_that_precede_tabs=1
g.NERDCreateDefaultMappings = 1
g.NERDSpaceDelims = 1
g.NERDDefaultAlign = "left"
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1
g.oscyank_term = "kitty"
g.oscyank_silent = "v:true"