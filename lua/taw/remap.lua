vim.keymap.set("n", "<leader>p", vim.cmd.Ex)


-- vim.keymap.set("n", "j", "v:count ? 'jzz' : 'j'", { expr = true, noremap = true, silent = true })
-- vim.keymap.set("n", "k", "v:count ? 'kzz' : 'k'", { expr = true, noremap = true, silent = true })
-- vim.keymap.set("n", "j", "v:count == 0 ? 'jzz' : 'j'", { expr = true, noremap = true, silent = true })
-- vim.keymap.set("n", "k", "v:count == 0 ? 'kzz' : 'k'", { expr = true, noremap = true, silent = true })

-- Center after using a count with 'j' or 'k'
vim.keymap.set('n', 'j', function()
	return 'jzz'
end, { expr = true, silent = true })

vim.keymap.set('n', 'k', function()
	return 'kzz'
end, { expr = true, silent = true })

vim.keymap.set('n', '}', function() return '}zz' end, { expr = true, silent = true })
vim.keymap.set('n', '{', function() return '{zz' end, { expr = true, silent = true })

vim.keymap.set('n', 'm', function()
    vim.cmd('normal gcc')   -- runs instantly
end, { silent = false })    -- expr = true removed

vim.keymap.set('x', 'm', '<Plug>Commentary', { silent = true })

vim.keymap.set('n', ' e', 'oif err != nil {<CR>return err <CR>} <CR> <Esc>', { silent = true })

