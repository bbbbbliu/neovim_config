local builtin =require("telescope.builtin")
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
