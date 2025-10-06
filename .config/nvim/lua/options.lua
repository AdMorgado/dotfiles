local o = vim.o;
local api = vim.api

o.number = true;
o.clipboard = "unnamedplus";
o.autoindent = true;
o.expandtab = true;

-- Update the Title
o.title = true;

-- Search Options
o.hlsearch = true;
o.ignorecase = true;
o.smartcase = true;

o.breakindent = true;
o.shiftwidth = 4;
o.tabstop = 4;
o.smartindent = true;
o.expandtab = true;

-- Decrease update time
o.updatetime = 200;
o.timeoutlen = 300;

-- disable swap files
o.swapfile = false;

-- Keep signcolumn on by default
o.signcolumn = 'yes'

-- Decrease update time
o.updatetime = 150
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = 'menu,menuone,preview,noinsert,noselect'

-- NOTE: You should make sure your terminal supports this
o.termguicolors = true

api.nvim_create_autocmd({ "BufEnter", "BufNewFile", "BufRead" }, {
    pattern = "*",
    callback = function()
        vim.cmd("setlocal formatoptions-=ro")
    end
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.hl.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

o.shell = "/bin/zsh"

