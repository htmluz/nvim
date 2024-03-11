vim.g.mapleader = " "
vim.g.netrw_banner = 1
vim.g.netrw_liststyle = 0
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrap = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.fileencoding = "utf-8"
vim.opt.pumheight = 10
vim.opt.laststatus = 2
vim.opt.signcolumn = "auto"
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.showmode = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.clipboard = unnamedplus
vim.opt.completeopt= { "menuone", "noselect" }
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true

--statusline
vim.cmd "highlight StatusType guibg=#919191 guifg=#1d2021"
vim.cmd "highlight StatusFile guibg=#e0da92 guifg=#1d2021"
vim.cmd "highlight StatusModified guibg=#e0da92 guifg=#1d2021"
vim.cmd "highlight StatusBuffer guibg=#e0da92 guifg=#1d2021"
vim.cmd "highlight StatusLocation guibg=#919191 guifg=#1d2021"
vim.cmd "highlight StatusPercent guibg=#1d2021 guifg=#ebdbb2"
vim.cmd "highlight StatusNorm guibg=none guifg=white"
vim.o.statusline = " "
				.. "%#StatusType#"
				.. " %y " 
				.. "%#StatusFile#"
				.. " %F"
				.. "%#StatusModified#"
				.. "%m"
				.. "%#StatusNorm#"
				.. "%="
				.. "%#StatusBuffer#"
				.. " %n "
				.. "%#StatusLocation#"
				.. " %l,%c "

				
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "open file tree" })

--Tabs
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew, { desc = "new tab" })
vim.keymap.set("n", "<leader>q", vim.cmd.tabclose, { desc = "close tab" })
vim.keymap.set("n", "<leader>h", vim.cmd.tabprevious, { desc = "previous tab" })	
vim.keymap.set("n", "<leader>l", vim.cmd.tabnext, { desc = "next tab" })

--Split
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit, { desc = "new vertical split" })
vim.keymap.set("n", "<leader>s", vim.cmd.split, { desc = "new horizontal split" })
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-Left>", ":vertical resize +3<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize -3<CR>")

--Buffers
vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>d", vim.cmd.bd, { desc = "delete buffer" })

--Autoclosing brackets
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")

vim.keymap.set("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>", { desc = "replaces all highlighted words" })
vim.keymap.set("v", "<C-s>", ":sort<CR>", { desc = "sorts highlighted text in vmode" })	
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves line down"})
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "moves line up"})
