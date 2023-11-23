
return {
        -- TODO dfgdinhrhin 
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
                        pattern= [[\b(KEYWORDS)]],
                },
        },
};
