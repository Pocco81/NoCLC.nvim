


local opts = require("no-clc.config").options
local M = {}


function M.setup_start_command()
	-- mapping {{{
	vim.cmd("command! NoCLC lua require'no-clc.main'.main(true)")
	-- }}}
end

function M.setup(custome_opts)
	require("no-clc.config").set_options(custome_opts)
end


return M



