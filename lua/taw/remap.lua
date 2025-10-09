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
	vim.cmd('normal gcc') -- runs instantly
end, { silent = false }) -- expr = true removed

vim.keymap.set('x', 'm', '<Plug>Commentary', { silent = true })

vim.keymap.set('n', ' e', 'oif err != nil {<CR>return err <CR>} <CR> <Esc>', { silent = true })


-- prettier
-- Format current buffer using LSP
vim.keymap.set('n', '<M-f>', function()
	vim.lsp.buf.format()
end, { noremap = true, silent = true, desc = "LSP: Format Buffer" })

-- Optional: also allow formatting in visual mode
vim.keymap.set('v', '<M-f>', function()
	vim.lsp.buf.format()
end, { noremap = true, silent = true, desc = "LSP: Format Selection" })

-- -- Toggle LSP on/off for the current buffer
-- vim.keymap.set('n', '<c-l>', function()
--     local clients = vim.lsp.get_active_clients({bufnr = 0})
--     if #clients == 0 then
--         -- No clients: start all attached LSPs for this buffer
--         for name, config in pairs(vim.lsp.config) do
--             local ft = vim.bo.filetype
--             if vim.tbl_contains(config.filetypes or {}, ft) then
--                 vim.lsp.start(config)
--             end
--         end
--         print("LSP started for buffer")
--     else
--         -- Detach all LSP clients from this buffer
--         for _, client in ipairs(clients) do
--             client.stop()
--         end
--         print("LSP stopped for buffer")
--     end
-- end, { noremap = true, silent = true, desc = "Toggle LSP" })

