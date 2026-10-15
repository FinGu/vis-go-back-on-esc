require('vis')

vis:map(vis.modes.INSERT, '<Escape>', function()
	vis:feedkeys('<vis-mode-normal>')
	
	if vis.win.selection.col == 1 then -- ignore when at start of the line
		return
	end
	
	vis:feedkeys('<Left>')
end)
