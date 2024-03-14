return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },
  {
    "phaazon/hop.nvim",
    branch = 'v2',
    config =function ()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
    		"LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
    	},
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
  }
}
