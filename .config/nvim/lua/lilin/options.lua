-- Basics
vim.o.tabstop = 3
vim.o.shiftwidth = 3

-- Cursors
vim.o.guicursor = "i-c-ci:ver25-Cursor/lCursor"


-- Change cursors back to underline on exit
vim.cmd([[
  augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * lua vim.o.guicursor='a:hor20'
  augroup END
]])


-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true


-- For files without extentions, set textwidth to half a terminal width, with line numbers turned off
-- vim.cmd([[autocmd BufRead,BufNewFile * if expand('%:e') == '' | setlocal nonumber norelativenumber textwidth=75 | endif]])

