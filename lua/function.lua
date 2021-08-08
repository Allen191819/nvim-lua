vim.api.nvim_set_keymap('n','<F4>',':call CompileRunGcc()<CR>',{ silent=true,noremap=true })
vim.cmd([[
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %< -g"
		:FloatermNew time ./%<
	elseif &filetype == 'cpp'
		exec "!g++ -std=c++11 % -Wall -o %< -g"
		:FloatermNew time ./%<
	elseif &filetype == 'java'
		:FloatermNew javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:FloatermNew python3 %
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'vimwiki'
		exec "MarkdownPreview"
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'javascript'
		:FloatermNew export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		:FloatermNew go run .
	endif
endfunc
]])
vim.cmd([[
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.asm,*.go exec ":call SetTitle()"

func SetTitle()
	"如果文件类型为.sh文件
	if &filetype == 'sh'
		call setline(1, "##########################################################################")
		call append(line("."), "# File Name: ".expand("%"))
		call append(line(".")+1, "# Author: ersheng")
		call append(line(".")+2, "# mail: 2020302191891@whu..edu.cn")
		call append(line(".")+3, "# Created Time: ".strftime("%c"))
		call append(line(".")+4, "#########################################################################")
		call append(line(".")+5, "#!/bin/sh")
		call append(line(".")+6, "")
	elseif &filetype == 'asm'
		call setline(1, ";/*************************************************************************")
		call append(line("."), ";	> File Name: ".expand("%"))
		call append(line(".")+1, ";	> Author: Allen Ma")
		call append(line(".")+2, ";	> Mail: 2020302191891@whu.edu.cn ")
		call append(line(".")+3, ";	> Created Time: ".strftime("%c"))
		call append(line(".")+4, "; ************************************************************************/")
		call append(line(".")+5, "")
	elseif &filetype == 'go'
		call setline(1, "package main")
		call append(line("."),"")
		call append(line(".")+1,"import (")
		call append(line(".")+2,"       \"fmt\"")
		call append(line(".")+3,"     )")
		call append(line(".")+4,"")
		call append(line(".")+5,"")
	else
		call setline(1, "/*************************************************************************")
		call append(line("."), "	> File Name: ".expand("%"))
		call append(line(".")+1, "	> Author: Allen Ma")
		call append(line(".")+2, "	> Mail: 2020302191891@whu.edu.cn ")
		call append(line(".")+3, "	> Created Time: ".strftime("%c"))
		call append(line(".")+4, " ************************************************************************/")
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%"))
		call append(line(".")+7,"")
	endif
	autocmd BufNewFile * nore G
endfunc
]])
