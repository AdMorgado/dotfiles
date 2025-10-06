return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = '',
                    [vim.diagnostic.severity.WARN] = '',
                    [vim.diagnostic.severity.INFO] = '',
                    [vim.diagnostic.severity.HINT] = '󰌵',
                },
            }
        })

        require("neo-tree").setup({
            close_if_last_window = false,
            enable_git_status = true,
            enable_diagnostics = true,
            window = {
                mappings = {
                    ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = false } }
                },
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                },
                follow_current_file = {
                    -- enabled = true,
                    leave_dirs_open = false,
                },
                use_libuv_file_watcher = true,

            },
            source_selector = {
                winbar = true,
            },
            git_status = {
                window = {
                    mappings = {
                        ["A"]  = "git_add_all",
                        ["gu"] = "git_unstage_file",
                        ["ga"] = "git_add_file",
                        ["gr"] = "git_revert_file",
                        ["gc"] = "git_commit",
                        ["gp"] = "git_push",
                        ["gg"] = "git_commit_and_push",
                        ["o"]  = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
                        ["oc"] = { "order_by_created", nowait = false },
                        ["od"] = { "order_by_diagnostics", nowait = false },
                        ["om"] = { "order_by_modified", nowait = false },
                        ["on"] = { "order_by_name", nowait = false },
                        ["os"] = { "order_by_size", nowait = false },
                        ["ot"] = { "order_by_type", nowait = false },
                    }
                }
            }
        });

        vim.keymap.set("n", "<CR>", ":Neotree toggle<CR>", { desc = "Toggle Neotree" })
        vim.keymap.set("n", "<leader>nr", ":Neotree reveal<CR>",
            { desc = "Reveal file location" }
        )
    end
}
