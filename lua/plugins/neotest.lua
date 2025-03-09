return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-dotnet",
      },
      output = {
        enabled = true,
        open_on_run = "short",
      },
      diagnostic = {
        enabled = true,
        severity = 1,
      },

      status = {
        enabled = true,
        signs = true,
        virtual_text = false,
      },
      summary = {
        animated = true,
        count = true,
        enabled = true,
        expand_errors = true,
      },
    }
  end,
}
