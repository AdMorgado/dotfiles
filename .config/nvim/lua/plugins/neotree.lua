
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config=function()

        vim.fn.sign_define("DiagnosticSignError",
            {text = " ", texthl = "DiagnosticSignError"})
        vim.fn.sign_define("DiagnosticSignWarn",
            {text = " ", texthl = "DiagnosticSignWarn"})
        vim.fn.sign_define("DiagnosticSignInfo",
            {text = " ", texthl = "DiagnosticSignInfo"})
        vim.fn.sign_define("DiagnosticSignHint",
            {text = "󰌵", texthl = "DiagnosticSignHint"})

        require("neo-tree").setup({
            close_if_last_window = false,
            enable_git_status = true,
            enable_diagnostics = true,
            window = {
                mappings = {
                    ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = false } }
                },
            },
            filesystem={
                filtered_items={
                    visible=true,
                },
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },

            },
            source_selector = {
                winbar = true,
            }
        });
    end
}
