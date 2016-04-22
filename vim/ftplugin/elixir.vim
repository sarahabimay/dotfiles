"Mix Test mappings
"run mix test
map <leader>t :!clear; mix test<CR>

"run vim-dispatch on all specs
map <leader>dt :Dispatch mix test %<CR>

" Run vim-dispatch for the specific test where the line cursor is on
map <leader>ds :exeute /"Dispatch mix test %:" . line(".")<CR>
