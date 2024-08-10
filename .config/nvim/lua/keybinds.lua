local k = vim.keymap;

local norm_opts = { noremap = true, silent = true };
local expr_opts = { expr = true, silent = true };

require("which-key").add {
    { '<leader>l', group = "[L]SP keymaps" },
    { "<leader>d", group = "[D]ebug keymaps" },
    { '<leader>c', group = '[C]ode' },
    { '<leader>g', group = '[G]it' },
    { '<leader>h', group = 'Git [H]unk' },
    { '<leader>r', group = '[R]ename' },
    { '<leader>s', group = '[S]earch' },
    { '<leader>t', group = '[T]oggle' },
    { '<leader>w', group = '[W]orkspace' },
    { '<leader>',  group = 'VISUAL <leader>', mode = { "v" } },
    { '<leader>h', group = 'Git [H]unk',      mode = { "v" } },
    { 'gp',        group = '[G]oto [P]review' }
};

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

-- Buffer Related
k.set("n", "<Tab>", "")
-- k.set("n", "<C-w>", ":BufferClose <CR>");

-- Git related
k.set("n", "gb",
    function()
        local gs = package.loaded.gitsigns;
        gs.blame_line { full = false }
    end,
    { desc = "[g]it [b]lame" }
)

-- Diagnostic keymaps
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
        underline = status,
        signs = status,
    });
    status = not status;
end

k.set("n", "<leader>lt", toggle_inline_diagnostics, { desc = "Toggle Diagnostic Hints" })

k.set("n", "<leader>f", vim.lsp.buf.format, {
    desc = "[F]ormat buffer"
})

-- Debug Keymaps
k.set("n", "<leader>dt", require("dapui").toggle,
    { noremap = true, desc = "Toggle Diagnostic UI" }
)
k.set("n", "<leader>db",
    require("dap").toggle_breakpoint,
    { desc = "Toggle breakpoint" }
)
k.set("n", "<leader>dc",
    require("dap").continue,
    { desc = "Debug: Continue" }
)
k.set("n", "<leader>do",
    require("dap").step_over,
    { desc = "Debug: Step Over" }
)
k.set("n", "<leader>di",
    require("dap").step_into,
    { desc = "Debug: Step Into" }
)

-- goto-preview keybinds
local goto_preview = require("goto-preview");
k.set("n", "gpd", goto_preview.goto_preview_definition, { desc = "Preview Definition" });
k.set("n", "gpt", goto_preview.goto_preview_type_definition, { desc = "Type Definition" });
k.set("n", "gpi", goto_preview.goto_preview_implementation, { desc = "Preview Implementation" });
k.set("n", "gpD", goto_preview.goto_preview_declaration, { desc = "Preview Declaration" });
k.set("n", "gP", goto_preview.close_all_win, { desc = "Close all preview Windows" });
k.set("n", "gpr", goto_preview.goto_preview_references, { desc = "Preview References" });

-- Toggleterm keybinds
k.set("n", "<leader>tt", ":ToggleTerm direction=float<CR>", { desc = "Open Terminal Float" })
k.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { desc = "Open Terminal Vertical" })
k.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Open Terminal Horizontal" })
vim.keymap.set('t', "<Esc><Esc>", "<C-\\><C-n>");

-- Trouble and todo comments
local trouble = require("trouble")
k.set("n", "<leader>xx", function() trouble.toggle() end)
k.set("n", "<leader>xw", function() trouble.toggle("workspace_diagnostics") end)
k.set("n", "<leader>xd", function() trouble.toggle("document_diagnostics") end)
k.set("n", "<leader>xq", function() trouble.toggle("quickfix") end)
k.set("n", "<leader>xl", function() trouble.toggle("loclist") end)
k.set("n", "gR", function() trouble.toggle("lsp_references") end)
