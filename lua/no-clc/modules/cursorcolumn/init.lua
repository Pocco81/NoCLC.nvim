local M = {}

local api = vim.api

function M.main(state)
    if (state == true) then
        -- activate/deactivate it when entering/exiting window/buffer
        api.nvim_exec(
            [[
			augroup noclc_active_window_buffer_cursorcolumn
				autocmd!
				autocmd WinEnter * setlocal cursorcolumn
				autocmd BufEnter * setlocal cursorcolumn
				autocmd WinLeave * setlocal nocursorcolumn
				autocmd BufLeave * setlocal nocursorcolumn
			augroup END
		]],
            false
        )
    elseif (state == false) then
        api.nvim_exec(
            [[
			augroup noclc_active_window_buffer_cursorcolumn
				autocmd!
			augroup END
		]],
            false
        )
    end
end

return M
