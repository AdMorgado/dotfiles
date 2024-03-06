return {
    {
        "mfussenegger/nvim-dap"
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap"
        },
        opts = {
            automatic_installation = true,
            ensure_installed = {
                -- "codelldb"
                -- "cpptools"
            },
            handlers = {
                -- codelldb = { }
                -- cpptools = { }
            }
        }
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = {
            "mfussenegger/nvim-dap"
        },
        opts = {

        }
    },
    {
        "theHamsta/nvim-dap-virtual-text"
        -- TODO: enable this later
    }
}
