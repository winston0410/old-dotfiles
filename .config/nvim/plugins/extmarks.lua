local function setup()
	local v = vim.api
	local ns = v.nvim_create_namespace("search")
	-- v.nvim_buf_set_extmark(0, ns, 1, 2, { id = 1, end_line = 1, end_col = 3, virt_text = 'bye'})
	print(ns)
end

return {
	setup = setup
}


