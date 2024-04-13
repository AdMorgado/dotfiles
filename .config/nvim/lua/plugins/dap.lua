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
        "theHamsta/nvim-dap-virtual-text",
        opts = { }
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap"
        },
        config = function ()
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)
        end
    }
}
