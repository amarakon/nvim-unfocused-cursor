main = {}

local api = vim.api

local function autocmd(events, ...)
	api.nvim_create_autocmd(events, { callback = ... })
end

local o = vim.o
local opt = vim.opt

function main.setup()
	local old_guicursor,old_cursorline,old_cursorcolumn
	autocmd("VimEnter", function ()
		old_guicursor = o.guicursor
		old_cursorline = o.cursorline
		old_cursorcolumn = o.cursorcolumn
	end)

	autocmd({ "WinLeave", "FocusLost" }, function ()
		opt.guicursor = "a:noCursor"
		opt.cursorline = false
		opt.cursorcolumn = false
	end)

	autocmd({ "WinEnter", "FocusGained" }, function ()
		opt.guicursor = old_guicursor
		opt.cursorline = old_cursorline
		opt.cursorcolumn = old_cursorcolumn
	end)
end

return main
