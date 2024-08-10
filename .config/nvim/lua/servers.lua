local dap = require("dap")

dap.configurations.cpp = {
    {
        name = "Launch",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd(), "file");
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
        runInTerminal = true
    }
}
