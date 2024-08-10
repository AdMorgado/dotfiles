return {
    "stevearc/oil.nvim",
    enabled = false,
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup {
            default_file_explorer = true,
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
            columns = { "icon" },
            view_options = {
                show_hidden = true,
                natural_order= true,
            },
            keymaps = {
                ["p"] = "actions.preview",
                ["q"] = "actions.close",
                ["s"] = "actions.select_vsplit",
                ["S"] = "actions.select_split",
            },

        }

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end
}
