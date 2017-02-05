"load plug vim if we do not have it yet
if empty(glob('~/.vim/autoload/plug.vim'))
	!mkdir -p ~/.vim/autoload/
	!curl -fLo ~/.vim/autoload/plug.vim
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug ('Valloric/YouCompleteMe')
Plug ('chriskempson/base16-vim')
Plug ('vim-airline/vim-airline')
Plug ('vim-airline/vim-airline-themes')

call plug#end()

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
