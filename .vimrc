" makes true vim exp
set nocompatible
        
set term=$TERM

" indent options
set autoindent smartindent
set expandtab
set smarttab tabstop=4
set shiftround shiftwidth=4

" search options
set nohlsearch incsearch
set ignorecase smartcase

" rendering options
set encoding=utf-8
set linebreak
set scrolloff=7

" interface options
set wildmenu
set number relativenumber

set clipboard="unnamed,unnamedplus"

" ukrainian keymap
set langmap=іs,ІS,ї],Ї},ґ\\,Ґ\|,є\',Є\",йЙцЦуУкКеЕнНгГшШщЩзЗхХъЪфФыЫвВаАпПрРоОлЛдДжЖэЭяЯчЧсСмМиИтТьЬбБюЮ.\\,;qQwWeErRtTyYuUiIoOpP[{]}aAsSdDfFgGhHjJkKlL;:'\"zZxXcCvVbBnNmM\\,<.>/?

" enables syntax-highlighting
syntax on
