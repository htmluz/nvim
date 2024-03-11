vim.cmd('colorscheme rose-pine')

--Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "file search" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "git file search" })
vim.keymap.set("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep ") })
end, { desc = "grep in directory"})

--Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "mark file harpoon"})
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-h>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-t>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-n>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-s>", function()
  ui.nav_file(4)
end)

--Undotree
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { desc = "Undotree" })

--LSP
local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "goto prev diagnostic"})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "goto next diagnostic"})

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'tsserver', 'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
  },
})
