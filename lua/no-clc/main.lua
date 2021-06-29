local opts = require("no-clc.config").options
local M = {}

function M.main(start)
    if (opts["load_at_startup"] == true) then
		if (opts["cursorcolumn"]) then require("no-clc.modules.cursorcolumn.init").main(true) end
        if (opts["cursorline"]) then require("no-clc.modules.cursorline.init").main(true) end
    else
        if (start == nil or start == false) then
            require("no-clc.init").setup_start_command()
        else -- is true
            opts["load_at_startup"] = true
            M.main()
        end
    end
end

return M
