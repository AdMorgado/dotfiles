local function setup()
    -- vim.cmd ":colorscheme catppuccin-macchiato"
    vim.cmd ":colorscheme dark_flat"
    -- vim.cmd ":colorscheme carbonfox"
    -- vim.cmd ":colorscheme one_monokai"
end

return {
    {
        "catppuccin/nvim",
        priority = 1000,
        lazy = false,
        config = setup
    },
    {
        "sekke276/dark_flat.nvim",
        priority = 1000,
        lazy = false,
        config = setup,
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        lazy = false,
        config = setup,
    },
    {
        "cpea2506/one_monokai.nvim",
        priority = 1000,
        lazy = false,
        config = setup
    }
}
