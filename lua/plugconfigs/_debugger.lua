require('dap-go').setup({
    delve = {
        path = "/usr/bin/dlv",
        initialize_timeout_sec = 20,
        port = "${port}"
    }
})

local dap, dapui =require("dap"),require("dapui")
dap.listeners.after.event_initialized["dapui_config"]=function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"]=function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"]=function()
  dapui.close()
end

vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})

vim.keymap.set('n', '<F1>', dap.continue)
vim.keymap.set('n', '<F2>', dap.step_into)
vim.keymap.set('n', '<F3>', dap.step_over)
vim.keymap.set('n', '<F4>', dap.step_out)
vim.keymap.set('n', '<F5>', dap.step_back)
vim.keymap.set('n', '<F9>', dap.restart)
vim.keymap.set('n', '<F6>', function()
    require('dapui').close()
end)
vim.keymap.set('n', '<F7>', function()
    require('dapui').open()
end)
vim.keymap.set('n', '<F8>', function()
    dap.terminate()
end)
vim.keymap.set('n', '<C-b>', dap.toggle_breakpoint)
