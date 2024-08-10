return {
    "folke/zen-mode.nvim",
    config = function()
        require("zen-mode").setup {
            window = {
                width = 0.33,
                options = {
                    number = true,
                }
            },
        }

        vim.keymap.set("n", "<leader>zz",
            function()
                require("zen-mode").toggle()
                vim.wo.wrap = false
            end
        )
    end
}
