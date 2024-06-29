

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set clipboard=unnamed

#komentarz z ~/.vimrc

if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif
