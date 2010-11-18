#!/usr/bin/env ruby

# Ref: http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen
# 2010/11

git_bundles = [ 
  "git://github.com/scrooloose/nerdtree.git", ### Marty Grenfell
  "git://github.com/scrooloose/nerdcommenter.git",
  # "git://github.com/scrooloose/syntastic.git",
  # "git://github.com/scrooloose/snipmate-snippets.git",
  "git://github.com/tpope/vim-repeat.git", ### Tim Pope
  "git://github.com/tpope/vim-surround.git",
  "git://github.com/tpope/vim-unimpaired.git",
  "git://github.com/tpope/vim-speeddating.git",
  "git://github.com/tpope/vim-endwise.git",
  "git://github.com/tpope/vim-fugitive.git",
  "git://github.com/tpope/vim-rails.git",
  "git://github.com/tpope/vim-ragtag.git",
  # "git://github.com/tpope/vim-git.git",
  # "git://github.com/tpope/vim-haml.git",
  # "git://github.com/tpope/vim-markdown.git",
  # "git://github.com/tpope/vim-cucumber.git",
  # "git://github.com/tsaleh/vim-align.git",
  # "git://github.com/tsaleh/vim-shoulda.git",
  # "git://github.com/tsaleh/vim-supertab.git",
  # "git://github.com/tsaleh/vim-tcomment.git",
  # "git://github.com/vim-ruby/vim-ruby.git",
  # "git://github.com/astashov/vim-ruby-debugger.git",
  # "git://github.com/msanders/snipmate.vim.git",
  # "git://github.com/timcharper/textile.vim.git",
  # # "git://github.com/tpope/vim-vividchalk.git", ### Colorschemes
  "git://github.com/mileszs/ack.vim.git",
]

hg_bundles = [ 
  "https://bitbucket.org/ns9tks/vim-autocomplpop",
  "https://bitbucket.org/ns9tks/vim-l9",
# "https://bitbucket.org/ns9tks/vim-fuzzyfinder",
]

vim_org_scripts = [
      ["css",             "8846",   "syntax"],
      ["nagios",          "8770",   "syntax"],
      ["increment",       "469",    "plugin"],
      ["vimbuddy",        "7481",   "plugin"],
      ["indexedsearch",   "7062",   "plugin"], #
      ["searchcomplete",  "1388",   "plugin"], #
#     ["autoclose",       "9223",   "plugin"], # ta
      ["autoclose",       "10873",  "plugin"], # kg
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.cd(bundles_dir)

puts "Trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "  Unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
  puts "--" * 20
end

hg_bundles.each do |url|
  dir = url.split('/').last
  puts "  Unpacking #{url} into #{dir}"
  `hg clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".hg"))
  puts "--" * 20
end

vim_org_scripts.each do |name, script_id, script_type|
  puts "  Downloading #{name}"
  local_file = File.join(name, script_type, "#{name}.vim")
  FileUtils.mkdir_p(File.dirname(local_file))
  File.open(local_file, "w") do |file|
    file << open("http://www.vim.org/scripts/download_script.php?src_id=#{script_id}").read
  end
end

