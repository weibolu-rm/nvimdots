local opts = {noremap = true, silent = true}

local term_opts = {silent = true}
-- shorthand
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--     normal_mode = "n"
--     insert_mode = "i"
--     visual_mode = "v"
--     visual_block_mode = "x"
--     term_mode = "t"
--     command_mode = "c"

-- NORMAL --
-- vanilla nvim-tree
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts
-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- resize with vim bindings
keymap("n", "<C-k>", ":resize +2<CR>", opts)
keymap("n", "<C-j>", ":resize -2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize +2<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- INSERT --


-- VISUAL --
-- stop yanking on paste in visual mode
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK --


-- Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
