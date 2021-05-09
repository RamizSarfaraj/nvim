
" move between buffers
nnoremap <TAB> :bNext<CR>
nnoremap <S-TAB> :bprevious<CR>
" Airline "
let g:airline_powerline_fonts=0
let g:airline_theme='one'
let g:airlie#extension#tabline#enabled=0 
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=0
let NERDTreeDisArrows=0
""""""""""""""""""""""""""""""""""""""""
" NERDCommenter
""""""""""""""""""""""""""""""""""""""""
nmap == <Plug>NERDCommenterToggle
vmap == <Plug>NERDCommenterToggle<CR>gv


" highlighter nvim
" let g:highlighter#disabled_languages = ['c', 'cpp'] " set `filetype`s
let g:highlighter#auto_update = 0 " 0: disable (default), 1: after saving the file, 2: after saving and opening the file
let g:highlighter#project_root_signs = ['.git']

" for python
let g:highlighter#syntax_python = [
      \ { 'hlgroup'       : 'HighlighterPythonFunction',
      \   'hlgroup_link'  : 'Function',
      \   'tagkinds'      : 'f',
      \   'syntax_type'   : 'match',
      \   'syntax_suffix' : '(\@=',
      \ },
      \ { 'hlgroup'       : 'HighlighterPythonMethod',
      \   'hlgroup_link'  : 'Function',
      \   'tagkinds'      : 'm',
      \   'syntax_type'   : 'match',
      \   'syntax_prefix' : '\.\@<=',
      \ },
      \ { 'hlgroup'       : 'HighlighterPythonClass',
      \   'hlgroup_link'  : 'Type',
      \   'tagkinds'      : 'c',
      \ }]



""""""""""""""""""""""""""""""""""""""
" Markdown
""""""""""""""""""""""""""""""""""""""

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
