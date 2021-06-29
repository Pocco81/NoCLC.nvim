


local M = {}



function M.main(state)

	if (state == true) then

		-- activate/deactivate it when entering/exiting window/buffer
		vim.api.nvim_exec([[
			augroup noclc_active_window_buffer_cursorline
				autocmd!
				autocmd WinEnter * setlocal cursorline
				autocmd BufEnter * setlocal cursorline
				autocmd WinLeave * setlocal nocursorline
				autocmd BufLeave * setlocal nocursorline
			augroup END
		]], false)
	end
	
end



return M
