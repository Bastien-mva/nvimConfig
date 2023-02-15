vim.opt.guicursor = ""

vim.cmd[[set nocompatible]]
vim.cmd[[let g:neoformat_try_node_exe = 1]]

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.scrolloff = 7

-- Set statusbar
vim.g.lightline = {
	    colorscheme = 'codedark',
	      active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
	        component_function = { gitbranch = 'gitbranch#name'},
	}

-- remove auto-commentary at the next line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")


vim.cmd[[let g:neoformat_enabled_python = ["black"] ]]
vim.g.neoformat_try_node_exe = 1
vim.cmd[[augroup fmt
  autocmd!
    autocmd BufWritePre * undojoin | Neoformat
    augroup END]]


vim.cmd[[call neomake#configure#automake('nrw', 1)]]

vim.cmd[[let g:neomake_python_enabled_makers = ['pylint'] ]]
-- remove unwanted errors
vim.cmd[[let g:neomake_python_pylint_maker = {
\ 'args': [
\ '-d', 'E1101','C0114','C0116','C0103',
\ '-f', 'text',
\ '--msg-template="{path}:{line}:{column}:{C}: [{symbol}] {msg}"',
\ '-r', 'n'
\ ],
\ 'errorformat':
\ '%A%f:%l:%c:%t: %m,' .
\ '%A%f:%l: %m,' .
\ '%A%f:(%l): %m,' .
\ '%-Z%p^%.%#,' .
\ '%-G%.%#',
\ }
]]
-- C0103, C0111',
