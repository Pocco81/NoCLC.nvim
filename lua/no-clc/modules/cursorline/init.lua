local M = {}

local api = vim.api

function M.main(state)
    if (state == true) then
        -- activate/deactivate it when entering/exiting window/buffer
        api.nvim_exec(
            [[
			augroup noclc_active_window_buffer_cursorline
				autocmd!
				autocmd WinEnter * setlocal cursorline
				autocmd BufEnter * setlocal cursorline
				autocmd WinLeave * setlocal nocursorline
				autocmd BufLeave * setlocal nocursorline
			augroup END
		]],
            false
        )
	elseif (state == false) then
        api.nvim_exec(
            [[
			augroup noclc_active_window_buffer_cursorline
				autocmd!
			augroup END
		]],
            false
        )
    end
end

return M
