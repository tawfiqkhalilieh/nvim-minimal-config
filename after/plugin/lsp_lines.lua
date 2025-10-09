vim.diagnostic.config({ virtual_lines = true })

vim.keymap.set( "", "<leader>h", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
