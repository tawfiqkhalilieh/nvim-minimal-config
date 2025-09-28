require("taw")


vim.keymap.set("n", "j", "v:count ? 'jzz' : 'j'", { expr = true, noremap = true, silent = true })
vim.keymap.set("n", "k", "v:count ? 'kzz' : 'k'", { expr = true, noremap = true, silent = true })
