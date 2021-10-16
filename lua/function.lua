vim.api.nvim_set_keymap("n", "R", ":call CompileRunGcc()<CR>", {silent = true, noremap = true})
vim.cmd(
    [[
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
    elseif &filetype == 'lua'
		:FloatermNew time lua %
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:FloatermNew python3 %
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
        silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'javascript'
		:FloatermNew export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		:FloatermNew go run %
	endif
endfunc
]]
)

