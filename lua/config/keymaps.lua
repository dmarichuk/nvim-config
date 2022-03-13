local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NORMAL

-- Window navigation
keymap("n", "<C-s>v", ":vsplit<cr>", opts)
keymap("n", "<C-s>h", ":split<cr>", opts)

-- Nvimtree
keymap("n", "<leader>p", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
-- keymap("n", "<C-=>", ":resize +2<CR>", opts)
-- keymap("n", "<C-->", ":resize -2<CR>", opts)
-- keymap("n", "<S-[>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<ESC-Left>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>w", ":Bdelete!<CR>", opts)

-- INSERT

-- enter normal mode
keymap("i", "jj", "<ESC>", opts)

-- VISUAL

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK

-- Move text up and down
keymap("x", "<S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<S-k>", ":move '<-2<CR>gv-gv", opts)

-- TERMINAL
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- TELESCOPE
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
