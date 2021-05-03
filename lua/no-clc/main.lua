



local opts = require("no-clc.config").options
local M = {}




function M.main(start)
	if (opts["load_at_startup"] == true) then
		require("no-clc.modules.cursorcolumn.init").main(opts["cursorcolumn"])
		require("no-clc.modules.cursorline.init").main(opts["cursorline"])
	else
		if (start == nil or start == false) then
			require("no-clc.init").setup_start_command()
		else		-- is true
			opts["load_at_startup"] = true
			M.main()
		end
	end
end



return M



