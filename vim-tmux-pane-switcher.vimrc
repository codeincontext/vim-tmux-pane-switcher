function! TmuxPaneJumpForKey(key)
  " defines the window to jump to based on the number of windows and the key pressed
  " 1st row: 1 window open. 2nd row: 2 windows. 3rd row: 3 windows
  let l:key_to_window_mapping = [
  \   {},
  \   { "u": 1, "o": 2, },
  \   { "u": 1, "i": 2, "o": 3, },
  \ ]

  " temporarily dismiss syntastic errors list (interferes with pane count)
  lclose

  let l:max_win_count = len(l:key_to_window_mapping)
  let l:win_count = min([winnr('$'), l:max_win_count])
  let l:mapping_for_win_count = l:key_to_window_mapping[l:win_count - 1]

  if (has_key(l:mapping_for_win_count, a:key))
    :call s:JumpToWindow(l:mapping_for_win_count[a:key])
  endif
endfunction

function! s:JumpToWindow(new_window)
  if (a:new_window !=# winnr())
    execute a:new_window . "wincmd w"
  endif
endfunction
