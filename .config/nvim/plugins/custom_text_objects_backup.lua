local in_symbol = function(start_symbol, end_symbol, mode)
  local v = vim.api
  local currentLineNum = v.nvim_win_get_cursor(0)[1]
  local end_match = vim.api.nvim_call_function("searchpos", {start_symbol, "", currentLineNum})
  local start_match = vim.api.nvim_call_function("searchpos", {start_symbol, "b", currentLineNum})
  if start_match[1] == 0 then
	return
  end
  if end_match[1] == 0 then
	end_match = vim.api.nvim_call_function("searchpos", {start_symbol, "n", currentLineNum})
  end
  if end_match[1] == 0 then
	return
  end
  local end_symbol_length = string.len(end_symbol)
  local end_offset = mode == 'i' and end_match[2] - end_symbol_length - 1 or end_match[2] - 1

  local start_symbol_length = string.len(start_symbol)
  local start_offset = mode == 'i' and start_match[2] or start_match[2]
  if end_match[2] - start_match[2] == 1 then
	v.nvim_win_set_cursor(0, { currentLineNum, start_offset - 1})
	print('no content')
	return
  end
  v.nvim_win_set_cursor(0, { currentLineNum, start_offset})
  vim.cmd('normal! v')
  v.nvim_win_set_cursor(0, { currentLineNum, end_offset})
end

return {
  in_symbol = in_symbol,
}
