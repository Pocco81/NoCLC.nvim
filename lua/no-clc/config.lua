

local config = {}

config.options = {
	load_at_startup = true,
	cursorline = false,
	cursorcolumn = false
}



function config.set_options(opts)
    opts = opts or {}

    for opt, _ in pairs(opts) do

		-- check if option exists in the config's table
		if (config.options[opt] ~= nil) then		-- not nil
			config.options[opt] = opts[opt]
		else		-- nil
			-- nothing
		end
	end
		
end




return config
