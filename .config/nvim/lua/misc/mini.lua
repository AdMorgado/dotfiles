return {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
        require("mini.ai").setup { n_lines = 500 }
        require("mini.surround").setup()
        require("mini.cursorword").setup()
        require("mini.pairs").setup()
    end
}
