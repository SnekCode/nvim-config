local dap, dapui, dap_python = require("dap"), require("dapui"), require('dap-python')
dap_python.setup('/usr/local/bin/python3')
-- table.insert(dap.configurations.python, {
--   type = 'python',
--   request = 'launch',
--   name = 'My custom launch configuration',
--   program = '${file}',
--   -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
-- })

dap_python.test_runner = "pytest"

dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
  -- dapui.console()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
