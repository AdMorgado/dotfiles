return {
    "folke/todo-comments.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        highlight = {
            keyword = "bg",
            after = "fg",
            pattern = [[.*<(KEYWORDS)\s*]]
        },
        search = {
            args = {
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--max-filesize",
                "1M",
                "--glob=!node_modules",
            },
            pattern = [[\b(KEYWORDS)]],
        },
    },
};
