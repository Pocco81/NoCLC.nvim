


local M = {}



function M.main(state)

	if (state == true) then

		-- activate/deactivate it when entering/exiting window/buffer
		vim.api.nvim_exec([[
			augroup noclc_active_window_buffer_cursorcolumn
				autocmd!
				autocmd WinEnter * setlocal cursorcolumn
				autocmd BufEnter * setlocal cursorcolumn
				autocmd WinLeave * setlocal nocursorcolumn
				autocmd BufLeave * setlocal nocursorcolumn
			augroup END
		]], false)
	end
	
end



return M
