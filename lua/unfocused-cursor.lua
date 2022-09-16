main = {}

local api = vim.api

api.nvim_create_augroup("NumbersAutocmds", { clear = true })

local function autocmd(events, ...)
	api.nvim_create_autocmd(events,
		{ group = "NumbersAutocmds", callback = ... })
end

local o = vim.o
local opt = vim.opt

function main.setup()
	autocmd("VimEnter", function ()
		old_guicursor = o.guicursor
		old_cursorline = o.cursorline
	end)

	autocmd({ "WinLeave", "FocusLost" }, function ()
		opt.guicursor = "a:noCursor"
		opt.cursorline = false
	end)

	autocmd({ "WinEnter", "FocusGained" }, function ()
		opt.guicursor = old_guicursor
		opt.cursorline = old_cursorline
	end)
end

return main
