return {
		'EvWilson/spelunk.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',           -- For window drawing utilities
			'nvim-telescope/telescope.nvim',   -- Optional: for fuzzy search capabilities
		},
		config = function()
			require('spelunk').setup({
				enable_persist = true,
				enable_status_col_display = true,
			})
		end
	}
