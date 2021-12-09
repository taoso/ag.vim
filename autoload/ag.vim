let s:cmd = ""

function! s:show(...) 
	let lines = a:000[1]
	if lines == [""] | return | end
	call setqflist([], 'a', { 'title': s:cmd, 'lines': lines, 'efm':'%f:%l:%c:%m'})
	copen
endfunction

function! ag#search(args)
	call setqflist([], 'f')
	let ag = get(g:, 'ag_cli', 'ag')
	let s:cmd = ag.' --vimgrep '.a:args
	call jobstart(s:cmd, { 'on_stdout':function('s:show'), 'stdin': "null" })
endfunction
