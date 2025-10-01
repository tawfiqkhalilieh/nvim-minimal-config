function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	
	-- text colors
	vim.api.nvim_set_hl(0, "Comment", { fg = "#9d4edd", italic = true })
	-- vim.api.nvim_set_hl(0, "Keyword", { fg = "#bc13fe", bold = true })
	-- vim.api.nvim_set_hl(0, "String", { fg = "#ff77ff" })
	vim.opt.number = true          -- show absolute line number on the current line
	vim.opt.relativenumber = true  -- show relative line numbers on all other lines

end


ColorMyPencils()

