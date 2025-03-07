return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
		      ["<leader>T"] = {
		        desc = "Run tests" 
		      },
          ["<leader>Td"] = { 
		        function()
              require("neotest").run.run({ strategy = "dap" })
		        end, 
		        desc = "Debug nearest test"
		      },
		      ["<leader>Tr"] = { 
		        function()
		          require("neotest").run.run({ strategy = "dap" })
		        end, 
		        desc = "Run nearest test"
		      },
		      ["<leader>Tf"] = { 
		        function()
              require("neotest").run.run(vim.fn.expand("%"))
		        end, 
		        desc = "Run all tests in current file"
		      },
		      ["<leader>Tc"] = { 
		        function()
              require("neotest").run.run(vim.fn.expand("%:p:h"))
		        end, 
		        desc = "Run all tests in current directory"
		      },
		      ["<leader>Ta"] = { 
		        function()
              require("neotest").run.run(vim.fn.getcwd())
		        end, 
		        desc = "Run all tests"
		      },
		      ["<leader>Ts"] = { 
		        function()
              require("neotest").summary.toggle()
		        end, 
		        desc = "Show tests summary"
		      },
		      ["<leader>o"] = {
		        desc = "Run configs with overseer"
		      }, 
		      ["<leader>ot"] = {
		        function()
		          require("overseer").toggle()
		        end,
		        desc = "Toggle overseer"
		      }
        },
      },
    },
  }
}
