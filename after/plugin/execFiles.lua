vim.cmd[[autocmd FileType python nnoremap <buffer> <F8> :w \| sp \| hor resize 10 \| term python % <CR>]]
vim.cmd[[autocmd FileType r nnoremap <buffer> <F8> :w \| Dispatch r  % <CR>]]
vim.cmd[[autocmd FileType tex nnoremap <buffer> <F8> :w  <CR> :VimtexView <CR> ]]
vim.cmd[[autocmd FileType html nnoremap <buffer> <F8> :w  <CR>  ]]
vim.cmd[[autocmd FileType css nnoremap <buffer> <F8> :w  <CR>  ]]
vim.cmd[[autocmd FileType sh nnoremap <buffer> <F8> :w  \|sp \| hor resize 10 \| term ./% <CR>]]
vim.cmd[[autocmd FileType sh nnoremap <buffer> <F9> :w  \|sp \| hor resize 10 \| term ./% ]]

