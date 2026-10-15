require('vis')

local modes = vis.modes

local motion = vis:motion_register(function(win,pos) 
	return pos - 1	
end)

vis:map(modes.INSERT, '<Escape>', function()
	vis:feedkeys("<vis-mode-normal>")

	vis:motion(motion)
end)



