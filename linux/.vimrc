colorscheme desert

set ignorecase
set smartcase " search for any combination of upper and lower case text
set clipboard=unnamedplus " using the clipboard as the default register
set paste
set number
set scrolloff=3 " сколько строк внизу и вверху экрана показывать при скроллинге
set wrap " (no)wrap - динамический (не)перенос длинных строк
set linebreak " переносить целые слова
set nocompatible " отключить режим совместимости с классическим Vi
set hidden " не выгружать буфер когда переключаешься на другой
set mouse=a " включает поддержку мыши при работе в терминале (без GUI)
set autoread " перечитывать изменённые файлы автоматически
set t_Co=256 " использовать больше цветов в терминале
set noswapfile " не использовать своп-файл (в него скидываются открытые буферы)
set visualbell " вместо писка бипером мигать курсором при ошибках ввода
" При вставке фрагмента сохраняет отступ
set pastetoggle=
set fileformat=unix
"Парадак кадзіровак і фармату файлаў
set termencoding=utf-8
set ffs=unix,dos,mac
set fileencodings=utf-8,cp1251,sjis,koi8-r,ucs-2,cp866

syntax on " включить подсветку синтаксиса

set shiftwidth=4 " размер отступов (нажатие на << или >>)
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина 'мягкого' таба
set autoindent " ai - включить автоотступы (копируется отступ предыдущей строки)
set expandtab " преобразовать табуляцию в пробелы
set smartindent " Умные отступы (например, автоотступ после {)
set wildmenu " Аўта-дапаўненне над камандным радком
" Для указанных типов файлов отключает замену табов пробелами и меняет ширину отступа
au FileType crontab,fstab,make set noexpandtab tabstop=8 shiftwidth=8

set nospell

set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set langmap=!\\"№\\;%?*ёйцукенгшўзх'фывапролджэячсмітьбюЁЙЦУКЕHГШЎЗХ'ФЫВАПРОЛДЖЭЯЧСМІТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

"set spell spelllang=en_us,en_gb,by,be,ru
"подсвечивает все слова, которые совпадают со словом под курсором.
"autocmd CursorMoved * silent! exe printf("match Search /\\<%s\\>/", expand('<cword>'))
" let c_syntax_for_h="" " необходимо установить для того, чтобы *.h файлам присваивался тип c, а не cpp

:nmap <C-s> <Esc>:w<CR>
:nmap <F2> <Esc>:w<CR>
:imap <C-s> <Esc>:w<CR>
:imap <F2> <Esc>:w<CR>
:vmap <C-s> <Esc>:w<CR>
:vmap <F2> <Esc>:w<CR>
