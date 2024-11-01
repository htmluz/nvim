vim.g.mapleader = " "
vim.g.netrw_banner = 0
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
vim.opt.laststatus = 3
vim.opt.signcolumn = "auto"
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.showcmd = false
vim.opt.cmdheight = 0
vim.opt.showmode = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.clipboard = unnamedplus
vim.opt.completeopt= { "menuone", "noselect" }
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.wo.signcolumn = "no"
vim.opt.switchbuf	= "usetab,uselast"
vim.opt.colorcolumn = "132"

--statusline
vim.cmd "highlight StatusType guibg=none guifg=#f2f4f8"
vim.cmd "highlight StatusFile guibg=#333333 guifg=#f2f4f8"
vim.cmd "highlight StatusModified guibg=#333333 guifg=#f2f4f8"
vim.cmd "highlight StatusBuffer guibg=#333333 guifg=#f2f4f8"
vim.cmd "highlight StatusLocation guibg=#333333 guifg=#f2f4f8"
vim.cmd "highlight StatusNorm guibg=none guifg=white"
vim.o.statusline = ""
				.. "%#StatusFile#"
				.. "%F "
				.. "%#StatusBuffer#"
				.. "%a"
				.. "🥀%n"
				.. "%#StatusModified#"
				.. " %m"
				.. "%#StatusNorm#"
				.. "%="
--				.. "%#StatusLocation#"
--				.. " %l,%c"


				
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "open file tree" })

--Tabs
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew, { desc = "new tab" })
vim.keymap.set("n", "<leader>q", vim.cmd.tabclose, { desc = "close tab" })
vim.keymap.set("n", "<leader>h", vim.cmd.tabprevious, { desc = "previous tab" })	
vim.keymap.set("n", "<leader>l", vim.cmd.tabnext, { desc = "next tab" })

--Split
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit, { desc = "new vertical split" })
vim.keymap.set("n", "<leader>s", vim.cmd.split, { desc = "new horizontal split" })
vim.keymap.set("n", "<C-Left>", ":vertical resize +3<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize -3<CR>")

--Buffers
vim.keymap.set("n", "<Tab>", vim.cmd.bnext, { desc = "next buffer" })
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious, { desc = "prev buffer" })
vim.keymap.set("n", "<leader>d", ":bd!<CR>", { desc = "delete buffer" })

vim.keymap.set("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>", { desc = "replaces all highlighted words" })
vim.keymap.set("v", "<C-s>", ":sort<CR>", { desc = "sorts highlighted text in vmode" })	
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves line down"})
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "moves line up"})

vim.keymap.set("n", "<C-d", "<C-d>zz", { desc = "better scrolling" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "better scrolling"})
vim.keymap.set("n", "<C-a>", ":lua vim.lsp.buf.code_action()<CR>", { desc = "code action" })
vim.keymap.set("n", "<C-s>", ":lua vim.lsp.buf.definition()<CR>", { desc = "go-to definition" })

vim.keymap.set("n", "<leader>L", ":Lazy<CR>", { desc = "open Lazy" })
vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "open Mason" })
