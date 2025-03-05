return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
		      ["<leader>lj"] = { 
		        function()
			        -- Get the directory of the current file
			        local current_dir = vim.fn.expand('%:p:h')
			        -- Run the command in that directory
			        vim.cmd(string.format('terminal cd %s && powershell -c "lazyjj"', current_dir))
		        end, 
		        desc = "Run lazyjj PowerShell command in current file directory" 
		      },
        },
      },
    },
  }
 }
