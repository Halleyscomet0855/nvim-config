return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "jbyuki/one-small-step-for-vimkind",
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
    
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end

            vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
            vim.keymap.set("n", "<Leader>dc", dap.continue, {})
        end,
    },
    {
    "mfussenegger/nvim-dap-python",
        dependencies = {
            "mfussenegger/nvim-dap"
        },
        config = function ()
            local dap = require"dap"

                dap.adapters.python = function(cb, config)
                    if config.request == 'attach' then
                        ---@diagnostic disable-next-line: undefined-field
                        local port = (config.connect or config).port
                            ---@diagnostic disable-next-line: undefined-field
                        local host = (config.connect or config).host or '127.0.0.1'
                        cb({
                            type = 'server',
                            port = assert(port, '`connect.port` is required for a python `attach` configuration'),
                            host = host,
                            options = {
                            source_filetype = 'python',
                            },
                        })
                    else
                        cb({
                            type = 'executable',
                            command = '.virtualenvs/debugpy/bin/python',
                            args = { '-m', 'debugpy.adapter' },
                            options = {
                            source_filetype = 'python',
                            },
                        })
                    end
                end
                dap.configurations.python = {
                    {
                        type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
                        request = 'launch';
                        name = "Launch file";
                        program = "${file}"; -- This configuration will launch the current file if used.
                        pythonPath = function()
                            local cwd = vim.fn.getcwd()
                            if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                                return cwd .. '/venv/bin/python'
                            elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                                return cwd .. '/.venv/bin/python'
                            else
                                return '/usr/bin/python'
                          end
                        end;
                      },
                    }
            end,


},
}
