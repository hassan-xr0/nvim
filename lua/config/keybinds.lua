vim.g.mapleader = " "
local map = vim.keymap.set
map("i", "jj", "<Esc>")
map("n", "<C-s>", ":w<CR>")
map("n", "<leader>l", "<cmd>Lazy<CR>")
-- map("n", "<leader>e", "<cmd>Ex<CR>")

-- LSP
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gd", vim.lsp.buf.definition, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Telescope
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", {})
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", {})
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", {})
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", {})
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", {})
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", {})

map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map("n","<S-tab>", "<cmd>BufferLineCyclePrev<cr>", {})
map("n","<tab>", "<cmd>BufferLineCycleNext<cr>", {})
map("n","<leader>bw", "<cmd>BufferLineCloseOthers<cr>", {})
map("n","<leader>w", "<cmd>bdelete<cr>", {})
map("n","1", "<cmd>BufferLineGoToBuffer 1<cr>", {})
map("n","2", "<cmd>BufferLineGoToBuffer 2<cr>", {})
map("n","3", "<cmd>BufferLineGoToBuffer 3<cr>", {})
map("n","4", "<cmd>BufferLineGoToBuffer 4<cr>", {})
map("n","5", "<cmd>BufferLineGoToBuffer 5<cr>", {})
map("n","6", "<cmd>BufferLineGoToBuffer 6<cr>", {})
map("n","7", "<cmd>BufferLineGoToBuffer 7<cr>", {})
map("n","8", "<cmd>BufferLineGoToBuffer 8<cr>", {})
map("n","9", "<cmd>BufferLineGoToBuffer 9<cr>", {})
