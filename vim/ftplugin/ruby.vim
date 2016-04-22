"Rspec mappings
" Run Ruby's bundle exec rspec
map <leader>t :!clear; bundle exec rspec<CR>
"map <leader>t :Dispatch rspec %<CR>

"run vim-dispatch on all specs
map <leader>dt :Dispatch rspec %<CR>

" Run vim-dispatch for the specific test where the line cursor is on
map <leader>ds :execute "Dispatch rspec %:" . line(".")<CR>
