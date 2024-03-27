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
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require'lspconfig'.pyright.setup{}
      require'lspconfig'.tsserver.setup{}  -- Für TypeScript
      require'lspconfig'.eslint.setup{} --Für JavaScript (ESLint als LSP)
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "neovim/nvim-lspconfig" },
  },
  {
    "jose-elias-alvarez/nvim-lsp-ts-utils",
    requires = { "neovim/nvim-lspconfig", "jose-elias-alvarez/null-ls.nvim" },
  },
  {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({})
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter' -- optional
    }
  },
  {
    "RRethy/vim-illuminate",
    config = function()
      vim.cmd([[autocmd CursorHold * lua require('illuminate').on_cursor_hold()]])
    end,
  },
}
