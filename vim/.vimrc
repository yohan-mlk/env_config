" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

filetype on
syntax on
set background=dark     " Adapte les couleurs pour un fond noir (idéeal dans PuTTY)
set linebreak           " Coupe les lignes au dernier mot et pas au caractère (requier Wrap lines, actif par défaut)
set visualbell          " Utilisation du clignotement à la place du "beep"
set showmatch           " Surligne le mots recherchés dans le texte
set hlsearch            " Surligne tous les résultats de la recherche
set autoindent          " Auto-indentation des nouvelles lignes
set expandtab           " Remplace les "Tabulation" par des espaces
set shiftwidth=4        " (auto) Indentation de 4 espaces
set smartindent         " Active "smart-indent" (améliore l'auto-indentation, notamment en collant du texte déjà indenté)
set smarttab            " Active "smart-tabs" (améliore l'auto-indentation, Gestion des espaces en début de ligne pour l'auto-indentation)
set softtabstop=4       " Tabulation = 4 espaces
set mouse=a             " Active la souris, dans tous les modes (note il faudra alors d'appuyer sur "shift" pour faire les sélections de copier-coller dans l'éditeur)
set number relativenumber "Active les numéros de lignes absolus et relatifs ---> mode hybride
set showcmd
set wildmenu            " Ajoute un menu ( : et tab pour activer )
"set cursorline          " Permet de voir la ligne courante
set ignorecase          " Case insensitve, sauf si set smartcase est aussi activé
set smartcase           " Active le case sensitive si lettre majuscule dans la recherche
set incsearch           " Chercher pendant que l'on tape la recherche
"set laststatus=2        " Afficher en permanence le status du fichier 
set confirm             " Demander confirmation avant de quitter un fichier sans sauvegarder
set nrformats-=octal    " Lorsque que l'on incrémente chiffre commençant par 0 ( 01 par exemple ), empêche vim de compter en octal



"Permute automatiquement en lignes relatives et absolues
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"Alias"
"Ouvre le fichier de notes pour vim
:command Vn tabnew ~/mynotes/cheatnotes/vim_shortcut.txt

"Sauvegarde et charge automatiquement les foldings
autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent loadview

"Escape dans insert mode lorsque les lettres jk sont pressés rapidement
:inoremap jk <esc>


"Snippets"
nnoremap çbb :-1read $HOME/.vim/snippets/bash/skeleton.sh<CR>22j
nnoremap çbi :-1read $HOME/.vim/snippets/bash/if_test.sh<CR>6li
nnoremap çbI :-1read $HOME/.vim/snippets/bash/if_command.sh<CR>3li
nnoremap çbw :-1read $HOME/.vim/snippets/bash/while_test.sh<CR>9li
nnoremap çbf :-1read $HOME/.vim/snippets/bash/for_test.sh<CR>4li
nnoremap çbv :-1read $HOME/.vim/snippets/bash/variable.sh<CR>3li
nnoremap çbp :-1read $HOME/.vim/snippets/bash/printf.sh<CR>10li
