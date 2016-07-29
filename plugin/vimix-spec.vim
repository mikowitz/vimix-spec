if !exists("g:loaded_vimix")
  finish
endif

if !exists('g:vimix_spec_map_keys')
  let g:vimix_spec_map_keys = 0
endif

if g:vimix_map_keys
  nnoremap <Leader>es :call VimixSpecAll()<CR>
  nnoremap <Leader>ef :call VimixSpecCurrentFile()<CR>
  nnoremap <Leader>el :call VimixSpecCurrentLine()<CR>
endif

function! VimixSpecAll()
  call s:VimixSpecRunCommand("")
endfunction

function! VimixSpecCurrentLine()
  let test_file_with_line = s:VimixSpecWithLineFor(expand('%:p'))
  call s:VimixSpecRunCommand(test_file_with_line)
endfunction

function! VimixSpecCurrentFile()
  let test_file = s:VimixSpecFor(expand('%:p'))
  call s:VimixSpecRunCommand(test_file)
endfunction

function! s:VimixSpecRunCommand(command)
  call VimuxRunCommand(g:vimix_mix_command . " espec " . a:command)
endfunction

function! s:VimixSpecFor(file)
  if a:file =~# '_spec.exs$'
    return a:file
  else
    call <SID>error("You're not in a spec file.")
  endif
endfunction

function! s:VimixSpecWithLineFor(file)
  let l:test_file = s:VimixSpecFor(a:file)
  if a:file =~# '_spec.exs$'
    return l:test_file . ":" . line(".")
  else
    call <SID>error("Uh-oh")
  endif
endfunction
