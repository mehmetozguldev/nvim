-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

-- Function to detect macOS appearance
local function get_macos_appearance()
  local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
  if handle then
    local result = handle:read("*a"):gsub("%s+", "") -- remove whitespace
    handle:close()
    return result == "Dark" and "dark" or "light"
  end
  return "light" -- fallback to light mode
end

-- Set theme based on macOS appearance
local appearance = get_macos_appearance()
local theme = appearance == "light" and "one_light" or "monekai"

-- Debug: print current appearance and theme
-- vim.notify("macOS appearance: " .. appearance .. ", theme: " .. theme)

M.base46 = {
	theme = theme,

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
	cmp = {
		icons = true,
		lspkind_text = true,
		style = "default", -- default/flat_light/flat_dark/atom/atom_colored
	},
	
	telescope = { style = "borderless" }, -- borderless / bordered
	
	statusline = {
		theme = "default", -- default/vscode/vscode_colored/minimal
		-- default/round/block/arrow separators work only for default statusline theme
		-- round and block will work for minimal theme only
		separator_style = "default",
		order = nil,
		modules = nil,
	},
	
	-- NvChad handles terminal font through the terminal emulator
	-- but we can set some UI font preferences
	tabufline = {
		enabled = true,
		lazyload = true,
		order = { "treeOffset", "buffers", "tabs", "btns" },
		modules = nil,
	},
}

-- Set font configuration
vim.opt.guifont = "JetBrains Mono:h14"

-- M.nvdash = { load_on_startup = true }

return M
