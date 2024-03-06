local k = vim.keymap;

local norm_opts = { noremap = true, silent = true };
local expr_opts = { expr = true, silent = true };

-- Save And Close
k.set("n", "<C-s>", ":w<CR>", norm_opts);

-- Remap for dealing with word wrap
k.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", expr_opts);
k.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", expr_opts);

-- Move lines up and down
k.set("n", "<A-k>", ":m .-2<CR>", norm_opts);
k.set("n", "<A-j>", ":m .+1<CR>", norm_opts);

-- Keymaps for better default experience
-- See `:help k.set()`reve
k.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
k.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
k.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Git related
k.set("n", "gb",
    function ()
        local gs = package.loaded.gitsigns;
        gs.blame_line { full = false }
    end,
    { desc = "[g]it [b]lame"}
)



-- Neotree related
k.set("n", "<CR>", ":Neotree toggle<CR>", { desc = "Toggle Neotree" })
k.set(
    "n",
    "<leader>nr",
    ":Neotree reveal<CR>",
{ desc = "Reveal file location" }
)

-- Diagnostic keymaps
require("which-key").register {
  ['<leader>l'] = { name = "[L]SP stuff", _ = "which_key_ignore" }
};

k.set('n', '<leader>lp', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
k.set('n', '<leader>ln', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })

k.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
k.set('n', '<leader>le', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
k.set('n', '<leader>ll', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

local status = false;
local function toggle_inline_diagnostics()
    vim.diagnostic.config({
        virtual_text = status,
        virtual_lines = status,
        signs = status,
    });
    status = not status;
end

k.set("n", "<leader>lt", toggle_inline_diagnostics, { desc = "Toggle Diagnostic Hints" })

-- Diagnostic Keymaps
require("which-key").register {
    ["<leader>d"] = { name = "[Debug] keys", _ = "which_key_ignore" }
}

k.set("n", "<leader>dt", function ()
        require("dapui").toggle { reset = true }
    end,
    { noremap = true, desc = "Toggle Diagnostic UI"}
)
k.set("n", "<leader>db",
    require("dap").toggle_breakpoint,
    { desc = "Toggle breakpoint" }
)
k.set("n", "<leader>dc",
    require("dap").continue,
    { desc = "Debug: Continue"}
)
k.set("n", "<leader>do",
    require("dap").step_over,
    { desc = "Debug: Step Over"}
)
k.set("n", "<leader>di", require("dap").continue,
    { desc = "Debug: Step Into"}
)

-- Toggleterm keybinds
k.set("n", "<leader>tt", ":ToggleTerm direction=float<CR>", { desc = "Open Terminal Float" })
k.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { desc = "Open Terminal Vertical" })
k.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Open Terminal Horizontal" })
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]);

