local k = vim.keymap;

local norm_opts = { noremap=true, silent=true };
local expr_opts = { expr = true, silent = true };

k.set("t", "<Esc>", [[<C-\><C-n>]], norm_opts);

-- Save And Close
k.set("n", "<C-s>", ":w<CR>", norm_opts);

-- Remap for dealing with word wrap
k.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", expr_opts);
k.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", expr_opts);

-- Move lines up and down
k.set("n", "<A-k>", ":m .-2<CR>", norm_opts);
k.set("n", "<A-j>", ":m .+1<CR>", norm_opts);

-- Diagnostic keymaps 
k.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' });
k.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' });
k.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' });
k.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' });

-- Neo-Tree keymaps

-- Trouble keymaps
k.set("n", "<leader>t", ":TodoTelescope<CR>", { desc = "Open TodoTelescope", table.unpack(norm_opts)});

-- Function keymaps
k.set("n", "<F1>", function ()

end);

k.set("n", "<F2>", function ()
    
end);

k.set("n", "<F3>", function ()
    
end);

k.set("n", "<F4>", function ()
    
end);

k.set("n", "<F5>", function ()

end);

