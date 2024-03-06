local o = vim.o;
local api = vim.api

o.number = true;
o.clipboard = "unnamedplus";
o.autoindent = true;
o.expandtab = true;
o.title = true;


-- Search Options
o.hlsearch = true;
o.ignorecase = true;
o.smartcase = true;
o.termguicolors = true;

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
vim.wo.signcolumn = 'yes'

-- Decrease update time
o.updatetime = 250
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = 'menu,menuone,preview,noinsert,noselect'

-- NOTE: You should make sure your terminal supports this
o.termguicolors = true

api.nvim_create_autocmd({"BufEnter", "BufNewFile", "BufRead"}, {
    pattern = "*",
    callback = function()
        vim.cmd("setlocal formatoptions-=ro")
    end
})
