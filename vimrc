" vi 互換ではなくVim のデフォルト設定にする
set nocompatible
" 一旦ファイルタイプ関連を無効化
filetype off
" neobundleでプラグインを管理
" if has('vim_starting')
" set runtimepath+=~/.vim/bundle/neobundle.vim/
" endif
" call neobundle#rc(expand('~/.vim/bundle'))
" call pathogen#infect()
" call pathogen#helptags()
" NeoBundle 'Shougo/neobundle.vim'
" 
" " 以下のプラグインをバンドル
" NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Shougo/vimfiler'
" NeoBundle 'Shougo/vimproc'
" NeoBundle 'VimClojure'
" NeoBundle 'Shougo/vimshell'
" NeoBundle 'jpalardy/vim-slime'
" NeoBundle 'scrooloose/syntastic'
" NeoBundle 'scrooloose/nerdtree'
" NeoBundle 'mattn/zencoding-vim'
" NeoBundle 'open-browser.vim'
" NeoBundle 'mattn/webapi-vim'
" NeoBundle 'tell-k/vim-browsereload-mac'
" NeoBundle 'hail2u/vim-css3-syntax'
" NeoBundle 'taichouchou2/html5.vim'
" NeoBundle 'taichouchou2/vim-javascript'
" NeoBundle 'kchmck/vim-coffee-script'
" NeoBundle 'tpope/vim-endwise.git' 
" NeoBundle 'ruby-matchit'
" NeoBundle 'vim-scripts/dbext.vim'
" NeoBundle 'taichouchou2/vim-rsense'
" NeoBundle 'tomtom/tcomment_vim'
" NeoBundle 'taichouchou2/vim-rails'
" NeoBundle 'romanvbabenko/rails.vim'
" NeoBundle 'ujihisa/unite-rake'
" NeoBundle 'basyura/unite-rails'
" NeoBundle 'thinca/vim-ref'
" "NeoBundle 'taichouchou2/vim-ref-ri'
" NeoBundle 'taq/vim-rspec'
" NeoBundle 'scrooloose/nerdtree'
" NeoBundle 'Lokaltog/powerline'
" 
" " Arduino
" NeoBundle 'sudar/vim-arduino-syntax'
" 
" " シンタックス系プラグインをバンドル
" NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'Shougo/neosnippet-snippets'
" 
" " http://kkabetani.hatenablog.com/entry/2014/03/17/224046
" let g:neocomplcache_force_overwrite_completefunc=1
" 
" " 実行プラグインをバンドル
" NeoBundle 'thinca/vim-quickrun'
" 
" " 編集履歴管理
" NeoBundle "sjl/gundo.vim"
set t_Co=256

" ファイラー関連
nnoremap <Leader>e :VimFilerExplorer<CR>
nnoremap <Leader>g :GundoToggle<CR>
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_as_default_explorer = 1

"mru,reg,buf
noremap :um :Unite file_mru -buffer-name=file_mru
noremap :ur :Unite register -buffer-name=register
noremap :ub :Unite buffer -buffer-name=buffer

" 環境設定系

" :eの補間
set wildmode=list,full

" ノーマルモードで改行
noremap <CR> o<ESC>

" 自動インデント
set autoindent

" TABの設定(表示幅4)
set tabstop=4
set shiftwidth=4
set noexpandtab

" シンタックスハイライト
syntax on

" エンコード
set encoding=utf8

" ファイルエンコード
set fileencoding=utf-8

" スクロールする時に下が見えるようにする
set scrolloff=5

" .swapファイルを作らない
set noswapfile

" バックアップファイルを作らない
set nowritebackup

" バックアップをしない
set nobackup

" バックスペースで各種消せるようにする
set backspace=indent,eol,start

" ビープ音を消す
set vb t_vb=
set novisualbell

" デフォルトで折り返さない
set nowrap

" OSのクリップボードを使う
set clipboard+=unnamed
set clipboard=unnamed

" 不可視文字を表示
set list

" 行番号を表示
set number

" 右下に表示される行・列の番号を表示する
set ruler

" compatibleオプションをオフにする
set nocompatible

" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" 対応括弧に<と>のペアを追加
"set matchpairs& matchpairs+=<:>

" 対応括弧をハイライト表示する
set showmatch

" 対応括弧の表示秒数を3秒にする
set matchtime=3

" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap

" 入力されているテキストの最大幅を無効にする
set textwidth=0

" 不可視文字を表示
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

" インデントをshiftwidthの倍数に丸める
set shiftround

" 補完の際の大文字小文字の区別しない
set infercase

" 文字がない場所にもカーソルを移動できるようにする
set virtualedit=all

" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden

" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen

" 小文字の検索でも大文字も見つかるようにする
set ignorecase

" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase

" インクリメンタルサーチを行う
set incsearch

" 検索結果をハイライト表示
set hlsearch

" コマンド、検索パターンを10000個まで履歴に残す
set history=10000

" マウスモード有効
set mouse=a

" xtermとscreen対応
set ttymouse=xterm2

" コマンドを画面最下部に表示する
set showcmd

" 現在の行のハイライト
set cursorline
 
" 自動コメントの除去
autocmd FileType * setlocal formatoptions-=ro
" w!! でスーパーユーザーとして保存（sudoが使える環境限定）
cmap w!! w !sudo tee > /dev/null %

" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>

" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" vを二回で行末まで選択
vnoremap v $h

" TABにて対応ペアにジャンプ
nnoremap &lt;Tab&gt; %
vnoremap &lt;Tab&gt; %

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-t> <C-w>w
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

" T + ? で各種設定をトグル
nnoremap [toggle] <Nop>
nmap T [toggle]
nnoremap <silent> [toggle]s :setl spell!<CR>:setl spell?<CR>
nnoremap <silent> [toggle]l :setl list!<CR>:setl list?<CR>
nnoremap <silent> [toggle]t :setl expandtab!<CR>:setl expandtab?<CR>
nnoremap <silent> [toggle]w :setl wrap!<CR>:setl wrap?<CR>
 
" :e などでファイルを開く際にフォルダが存在しない場合は自動作成
function! s:mkdir(dir, force)
  if !isdirectory(a:dir) && (a:force ||
        \ input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
    call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
  endif
endfunction
 
" vim 起動時のみカレントディレクトリを開いたファイルの親ディレクトリに指定 
function! s:ChangeCurrentDir(directory, bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif
 
    if a:bang == ''
        pwd
    endif
endfunction
 
" ~/.vimrc.localが存在する場合のみ設定を読み込む
let s:local_vimrc = expand('~/.vimrc.local')
if filereadable(s:local_vimrc)
    execute 'source ' . s:local_vimrc
endif
 
" /{pattern}の入力中は「/」をタイプすると自動で「\/」が、
" ?{pattern}の入力中は「?」をタイプすると自動で「\?」が 入力されるようになる
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
if has('unnamedplus')
    set clipboard& clipboard+=unnamedplus
else
    set clipboard& clipboard+=unnamed,autoselect
endif
 
"表示行単位で行移動する
nnoremap <silent> j gj
nnoremap <silent> k gk

"emacsのキーバインド
"インサートモードでも移動
inoremap <c-h> <BS>
inoremap <c-n> <down>
inoremap <c-d> <delete>
inoremap <c-p> <up>
inoremap <c-b> <left>
inoremap <c-f> <right>
inoremap <c-j> <Enter>
"inoremap <c-k> <ESC>d$i
inoremap <expr> <C-k> "\<C-g>u".(col('.') == col('$') ? '<C-o>gJ' : '<C-o>D')
inoremap <c-y> <ESC>pi
inoremap <c-a> <Home>
inoremap <c-e> <End>

"画面切り替え
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
"<space>j, <space>kで画面送り
noremap [Prefix]j <c-f><cr><cr>
noremap [Prefix]k <c-b><cr><cr>
 
" PHP用設定
" PHP辞書ファイル指定
autocmd FileType php,ctp :set dictionary=~/.vim/dict/php.dict
" :makeでPHP構文チェック
au FileType php setlocal makeprg=php\ -l\ %
au FileType php setlocal errorformat=%m\ in\ %f\ on\ line\ %l
" PHPの関数やクラスの折りたたみ
let php_folding = 0
" 文字列の中のSQLをハイライト
let php_sql_query = 1
" Baselibメソッドのハイライト
let php_baselib = 1
" HTMLもハイライト
let php_htmlInStrings = 1
" <? を無効にする→ハイライト除外にする
let php_noShortTags = 1
" ] や ) の対応エラーをハイライト
let php_parent_error_close = 1
let php_parent_error_open = 1
" SQLのPHP文字リテラルへの整形(:Sqltop, :Sqlfromp)
function! SQLToPHP()
%s/^\(.\+\)$/"\1 " \./g
 
normal G$
execute "normal ?.&lt;CR&gt;"
normal xxggVG
echo "Convert to PHP String is finished."
endfunction
command! Sqltop :call SQLToPHP()
function! SQLFromPHP()
%s/^"\(.\+\) " *\.*$/\1/g
 
normal ggVG
echo "Convert from PHP String is finished."
endfunction
command! Sqlfromp :call SQLFromPHP()
" ハイライト色設定
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4
 
" neocomplcacheを起動時に有効化する
let g:neocomplcache_enable_at_startup = 1
" 大文字を区切りとしたワイルドカードのように振る舞う機能
let g:neocomplcache_enable_camel_case_completion = 1
" _区切りの補完を有効化
let g:neocomplcache_enable_underbar_completion = 1
" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_smart_case = 1
" シンタックスをキャッシュするときの最小文字長を3に
let g:neocomplcache_min_syntax_length = 3
"手動補完時に補完を行う入力数を制御
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'
 
" Perl用設定
autocmd BufNewFile,BufRead *.psgi   set filetype=perl
autocmd BufNewFile,BufRead *.t      set filetype=perl
" Enable snipMate compatibility feature.↲
let g:neosnippet#enable_snipmate_compatibility = 1
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
 
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets/snippets'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = { 'default'    : '', 'perl'       : $HOME . '/.vim/dict/perl.dict' }
 
" Java用設定
"SQLのJava文字リテラルへの整形(:Sqltoj, :Sqlfromj)
function! SQLToJava()
%s/^\(.\+\)$/"\1 " \+/g
 
normal G$
execute "normal ?+\&lt;CR&gt;"
normal xxggVG
echo "Convert to Java String is finished."
endfunction
command! Sqltoj :call SQLToJava()
function! SQLFromJava()
%s/^"\(.\+\) " *+*$/\1/g
 
normal ggVG
echo "Convert from Java String is finished."
endfunction
command! Sqlfromj :call SQLFromJava()
 
" Ruby用設定
" :makeでRuby構文チェック
au FileType ruby setlocal makeprg=ruby\ -c\ %
au FileType ruby setlocal errorformat=%m\ in\ %f\ on\ line\ %l
 
" Scala用設定
" ファイルタイプの追加
augroup filetypedetect
autocmd! BufNewFile,BufRead *.scala setfiletype scala
autocmd! BufNewFile,BufRead *.sbt setfiletype scala
augroup END
autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif
   
" \ + rでスクリプト実行
nmap <Leader>r <plug>(quickrun)
 
" 全角スペースのハイライトを設定
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction
 
if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpaceをカラーファイルで設定するなら次の行は削除
    autocmd ColorScheme       * call ZenkakuSpace()
    " 全角スペースのハイライト指定
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif
" https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""
" ステータス行に現在のgitブランチを表示する
" set statusline+=%{fugitive#statusline()}
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
