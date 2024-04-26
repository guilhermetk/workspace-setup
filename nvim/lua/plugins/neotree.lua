return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				hijack_netrw_behavior = "open_default",
				close_if_last_window = true,
				window = {
					position = "float"
				},
				git_status = {
					symbols = {
						-- Change type
						added     = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
						modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
						deleted   = "✖", -- this can only be used in the git_status source
						renamed   = "󰁕", -- this can only be used in the git_status source
						-- Status type
						untracked = "",
						ignored   = "",
						unstaged  = "󰄱",
						staged    = "",
						conflict  = "",
					}
				}
			})
			vim.api.nvim_set_keymap("n", "<leader>o", ":Neotree toggle reveal float<CR>", { noremap = true, silent = true })
		end,
	},
}
