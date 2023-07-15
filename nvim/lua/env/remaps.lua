vim.g.mapleader = " "

vim.keymap.set("n", "<leader>n", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>m", ":TagbarToggle<CR>")
vim.keymap.set("n", "<leader>no", ":nohlsearch<CR>")

vim.keymap.set("n", "<leader>v", "<C-w>v<C-w>")
vim.keymap.set("n", "<leader>r", ":res +10<CR>")
vim.keymap.set("n", "<leader>R", ":res -10<CR>")
vim.keymap.set("n", "<leader>vr", ":vert res +5<CR>")
vim.keymap.set("n", "<leader>vR", ":vert res -5<CR>")

-- "sedding" the word under the cursor
vim.keymap.set("n", "<leader>c", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>gs", ":Gstatus<CR>")
vim.keymap.set("n", "<leader>gc", ":Gcommit<CR>")
vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>")
vim.keymap.set("n", "<leader>gdd", ":Gvdiffsplit!<CR>")
vim.keymap.set("n", "<leader>gp", ":GitGutterPreviewHunk<CR>")
vim.keymap.set("n", "<leader>gf", ":GitGutterFold<CR>")
vim.keymap.set("n", "<leader>gy", ":GitGutterStageHunk<CR>")
vim.keymap.set("n", "<leader>gu", ":GitGutterUndoHunk<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
