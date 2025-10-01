vim.keymap.set("n", "<leader>p", vim.cmd.Ex)


-- vim.keymap.set("n", "j", "v:count ? 'jzz' : 'j'", { expr = true, noremap = true, silent = true })
-- vim.keymap.set("n", "k", "v:count ? 'kzz' : 'k'", { expr = true, noremap = true, silent = true })
-- vim.keymap.set("n", "j", "v:count == 0 ? 'jzz' : 'j'", { expr = true, noremap = true, silent = true })
-- vim.keymap.set("n", "k", "v:count == 0 ? 'kzz' : 'k'", { expr = true, noremap = true, silent = true })

-- Center after using a count with 'j' or 'k'
vim.keymap.set('n', 'j', function()
	if vim.v.count > 0 then
		return 'jzz'
	else
		return 'j'
	end
end, { expr = true, silent = true })

vim.keymap.set('n', 'k', function()
	if vim.v.count > 0 then
		return 'kzz'
	else
		return 'k'
	end
end, { expr = true, silent = true })

vim.keymap.set('n', '}', function() return '}zz' end, { expr = true, silent = true })
vim.keymap.set('n', '{', function() return '{zz' end, { expr = true, silent = true })

