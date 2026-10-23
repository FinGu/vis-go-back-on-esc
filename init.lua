require('vis')

local last_mode = vis.modes.NORMAL -- trick i found

local function go_back()
        vis:feedkeys('<vis-mode-normal>')

	if vis.win.selection.col == 1 then -- ignore when at start of the line
		return
	end

	vis:feedkeys('<Left>')
end

vis.events.subscribe(vis.events.UI_DRAW, function()
        local mode = vis.mode

        if last_mode == vis.modes.INSERT and mode == vis.modes.NORMAL then
                go_back()
        end

        last_mode = mode
end)
