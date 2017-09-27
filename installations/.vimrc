" vimrc
"
" I've taken from several sources, and did my own stuff.  I started here:
" 	URL: http://vim.wikia.com/wiki/Example_vimrc
"
"

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
	" KS 8/15 I didn't like this.  See a Python file
"filetype indent plugin on

" Enable syntax highlighting
syntax on
set number

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).  " Alternatives include using tabs or split windows instead of re-using the same
" window for multiple buffers, and/or:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

set incsearch
set hlsearch


" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=eol,start,indent
" set bs=2 "same as above

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
set smartindent

"set smarttab
"set expandtab

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
"set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
"set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
"set cmdheight=2

" Display line numbers on the left
"set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F2> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" automatically save/load fold state
":au BufWinLeave * mkview
":au! BufWinEnter * silent loadview

set background=dark
set smd		" showmode
set sm		" showmatch
set tw=120	" textwidth
set ffs=unix	" fileformats
set wildmode=longest,list


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

set shiftwidth=2
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
"set softtabstop=2
"set expandtab
" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set tabstop=2


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

	" Map Y to act like D and C, rather than yy
map Y y$

	" also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

" to avoid hitting "help" rather than escape
map <F1> <Esc>
imap <F1> <Esc>

"set listchars=tab:»\ ,trail:·

map <F3> :set invlist<CR>


"------------------------------------------------------------
" Misc (my leftover original stuff) {{{1
"

au FileType mail set tw=65

if &t_Co > 1
	syntax enable
endif

if has( "gui_running" )
	color darkblue
endif

"set spell

"------------------------------------------------------------
" TODO {{{1
" Saved for later, figure out its use
"execute pathogen#infect()
" 70 Char Warning (Not sure if this is actually working)
"au BufRead,BufNewFile *.twig set syntax=htmljinja
"augroup LongLines
"	autocmd!
"	autocmd FileType * match none
"	autocmd FileType python,javascript,c,sh,php match ColorColumn /\%>70v.\+/
"augroup END

