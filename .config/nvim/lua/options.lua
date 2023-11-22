local global = vim.g;
local o = vim.o;

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

o.shiftwidth = 4;
o.tabstop = 4;
o.smartindent = true;
o.expandtab = true;

vim.api.nvim_create_autocmd({"BufEnter", "BufNewFile", "BufRead"}, {
    pattern = "*",
    callback = function()
        vim.cmd("setlocal formatoptions-=ro")
    end
})
