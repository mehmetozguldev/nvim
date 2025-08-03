require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader><leader>", "<cmd>Telescope find_files<CR>", { desc = "Find Files (Telescope)" })

-- GitHub Copilot mappings
map("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true, desc = "Accept Copilot suggestion" })
map("i", "<C-]>", "<Plug>(copilot-next)", { desc = "Next Copilot suggestion" })
-- map("i", "<C-[>", "<Plug>(copilot-previous)", { desc = "Previous Copilot suggestion" })

-- Git mappings
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview git hunk" })
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", { desc = "Git blame line" })

-- Comment mappings (handled by Comment.nvim plugin automatically)

-- Terminal mappings
map("n", "<C-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
map("t", "<C-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

-- Theme switching
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "Change theme" })

