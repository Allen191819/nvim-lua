require('dap')
vim.fn.sign_define('DapBreakpoint',{text='☛ ',texthl='',linehl='',numhl=''})
vim.fn.sign_define('DapStopped',{text='🔶',texthl='',linehl='',numhl=''})
local dap_install = require("dap-install")

dap_install.setup({
    installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
    verbosely_call_debuggers = false,
})
dap_install.config("python_dbg", {})

vim.api.nvim_set_keymap('n','<F9>',':lua require\'dap\'.toggle_breakpoint()<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F5>',':lua require\'dap\'.continue()<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F6>',':lua require\'dap\'.step_over()<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F7>',':lua require\'dap\'.step_out()<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F8>',':lua require\'dap\'.repl.open({height=10})<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F10>',':lua require\'dap\'.run_last()<CR>',{noremap=true,silent=true})
