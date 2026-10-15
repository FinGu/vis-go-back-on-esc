require('vis')

vis:map(vis.modes.INSERT, '<Escape>', function()
	vis:feedkeys('<vis-mode-normal>')
	vis:feedkeys('<Left>')
end)
