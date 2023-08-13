syntax on

"settings
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Show line numbers
set number

" Select colorcsheme
colo desert

set mouse=a

"#pragma GCC target("avx2")<Esc>o<Esc>o //intel instrisink
nnoremap cpf i#include <iostream><Esc>o#include <vector><Esc>o#include <cmath><Esc>o#include <algorithm><Esc>o#include <deque><Esc>o#include <ios><Esc>o#include <climits><Esc>o<Esc>o#define ll long long<Esc>o#define ld long double<Esc>o#define pii std::pair <int, int><Esc>o#define INF 1e9<Esc>o#define SZ 1e5<Esc>o#define EPS 1e-6<Esc>o<Esc>o<CR>int main(){<Esc>ostd::ios_base::sync_with_stdio(0);<Esc>ostd::cin.tie(0);<Esc>ostd::cout.tie(0);<Esc>o<Esc>o}<Esc>ki

nnoremap int128 istd::ostream&<Esc>ooperator<<( std::ostream& dest, __int128_t value )<Esc>o{<Esc>ostd::ostream::sentry s( dest );<Esc>oif ( s ) {<Esc>o __uint128_t tmp = value < 0 ? -value : value;<Esc>ochar buffer[ 128 ];<Esc>ochar* d = std::end( buffer );<Esc>odo<Esc>o{<Esc>o-- d;<Esc>o*d = "0123456789"[ tmp % 10 ];<Esc>otmp /= 10;<Esc>o} while ( tmp != 0 );<Esc>oif ( value < 0 ) {<Esc>o -- d;<Esc>o*d = '-';<Esc>o}<Esc>oint len = std::end( buffer ) - d;<Esc>oif ( dest.rdbuf()->sputn( d, len ) != len ) {<Esc>odest.setstate( std::ios_base::badbit );<Esc>o}<Esc>o}<Esc>oreturn dest;<Esc>o}

nnoremap yyy :%y+<CR>

nnoremap cpp :!make all<CR>

"inoremap { {}<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i

call plug#begin()

Plug 'luochen1990/rainbow'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
"Plug 'vim-scripts/c.vim'

call plug#end()

let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
let g:ycm_always_populate_location_list = 1
"let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
