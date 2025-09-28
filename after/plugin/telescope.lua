local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fg', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = 'Telescope find files in git' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
