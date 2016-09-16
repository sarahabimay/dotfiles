#!/usr/bin/env ruby
# source: http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/

git_bundles = [
  "https://github.com/chriskempson/base16-vim.git",
  "https://github.com/kien/ctrlp.vim.git",
  "https://github.com/scrooloose/nerdtree.git",
  #"https://github.com/guns/vim-clojure-static.git",
  "https://github.com/kien/rainbow_parentheses.vim.git",
  "https://github.com/altercation/vim-colors-solarized.git",
  "https://github.com/elixir-lang/vim-elixir.git",
  "https://github.com/tpope/vim-dispatch.git",
  "https://github.com/tpope/vim-endwise.git",
  "https://github.com/thoughtbot/vim-rspec.git",
  "git@github.com:junegunn/fzf.git"
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(ENV["HOME"], ".vim", "bundle")

FileUtils.cd(bundles_dir)

puts "trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end
