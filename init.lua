require('vis')

local M = {}

function M.run()
        vis:feedkeys('<vis-mode-normal>')
	
	if vis.win.selection.col == 1 then -- ignore when at start of the line
		return
	end
	
	vis:feedkeys('<Left>')
end

function M.setup(opts)
        opts = opts or {hook = true}

        if opts.hook then
                vis:map(vis.modes.INSERT, '<Escape>', M.run)
        end
end

return M
