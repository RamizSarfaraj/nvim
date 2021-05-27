

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" move between buffers
nnoremap <TAB> :bNext<CR>
nnoremap <S-TAB> :bprevious<CR>
" Airline "
let g:airline_powerline_fonts=0
let g:airline_theme='gruvbox'
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


""""""""""""""""""""""""""""""""""""""""
" netrw
"""""""""""""""""""""""""""""""""""""""""
" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-n> :call ToggleVExplorer()<CR>

"let g:netrw_browse_split = 1
"let g:netrw_banner = 1
"let g:netrw_winsize = 25
"let g:netrw_localrmdir='rm -r'


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
