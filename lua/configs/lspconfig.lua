require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ast_grep", "rust_analyzer", "gopls", "zls" }
vim.lsp.enable(servers)

-- Configure autoimport keymaps
vim.keymap.set("n", "<leader>io", "<cmd>LspImportCurrent<CR>", { desc = "Import symbol under cursor" })
vim.keymap.set("n", "<leader>ia", "<cmd>LspImportAll<CR>", { desc = "Import all missing symbols" })

-- TypeScript specific keymaps (handled by typescript-tools.nvim)
vim.keymap.set("n", "<leader>to", "<cmd>TSToolsOrganizeImports<CR>", { desc = "Organize imports" })
vim.keymap.set("n", "<leader>ts", "<cmd>TSToolsSortImports<CR>", { desc = "Sort imports" })
vim.keymap.set("n", "<leader>tr", "<cmd>TSToolsRemoveUnusedImports<CR>", { desc = "Remove unused imports" })
vim.keymap.set("n", "<leader>tf", "<cmd>TSToolsFixAll<CR>", { desc = "Fix all issues" })
vim.keymap.set("n", "<leader>ti", "<cmd>TSToolsAddMissingImports<CR>", { desc = "Add missing imports" })

-- read :h vim.lsp.config for changing options of lsp servers 
