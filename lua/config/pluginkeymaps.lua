vim.cmd('colorscheme rose-pine')

--Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "file search" })
vim.keymap.set("n", "<leader>pp", builtin.git_files, { desc = "git file search" })
vim.keymap.set("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep ") })
end, { desc = "grep in directory"})

--Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "mark file harpoon"})
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "open harpoon" })
vim.keymap.set("n", "<C-1>", function()
  ui.nav_file(1)
end, { desc = "harpoon hotkeys" })
vim.keymap.set("n", "<C-2>", function()
  ui.nav_file(2)
end, { desc = "harpoon hotkeys" })
vim.keymap.set("n", "<C-3>", function()
  ui.nav_file(3)
end, { desc = "harpoon hotkeys" })
vim.keymap.set("n", "<C-4>", function()
  ui.nav_file(4)
end, { desc = "harpoon hotkeys" })


--Highlight on yank
vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]

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
  ensure_installed = {'pyright'},
  handlers = {
    lsp_zero.default_setup,
  },
})
require('lspconfig').pyright.setup {
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "standard",
			},
		},
	},
}

require('autoclose').setup({
	   keys = {
      ["("] = { escape = false, close = true, pair = "()" },
      ["["] = { escape = false, close = true, pair = "[]" },
      ["{"] = { escape = false, close = true, pair = "{}" },

      [">"] = { escape = true, close = false, pair = "<>" },
      [")"] = { escape = true, close = false, pair = "()" },
      ["]"] = { escape = true, close = false, pair = "[]" },
      ["}"] = { escape = true, close = false, pair = "{}" },

      ['"'] = { escape = true, close = true, pair = '""' },
      ["'"] = { escape = true, close = true, pair = "''" },
      ["`"] = { escape = true, close = true, pair = "``" },
   },
   options = {
      disabled_filetypes = { "text" },
      disable_when_touch = false,
      pair_spaces = true,
      auto_indent = true,
      disable_command_mode = false,
   },
})

