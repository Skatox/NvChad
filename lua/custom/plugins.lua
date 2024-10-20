local plugins = {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"eslint-lsp",
				"js-debug-adapter",
				"prettier",
				"typescript-language-server"
			}
		}
	},
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "phaazon/hop.nvim",
    lazy=false,
    config = function()
      require'hop'.setup {}
      require "custom.configs.hop-config"
    end,
  },
  { "michaeljsmith/vim-indent-object" },
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "christoomey/vim-tmux-navigator",
    config = function()
      require "custom.configs.tmux"
    end,
  },

  -- IDE
  -- {
  --   "amiorin/vim-project",
  --   lazy = false,
  --   config = function()
  --       vim.cmd("source ~/.config/nvim/lua/custom/configs/vim-project.nvim")
  --   end,
  -- },
  {
    "coffebar/neovim-project",
    opts = {
      projects = { -- define project roots
        "~/Sites/*",
        "/var/www/*",
      },
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,  
  },
  {
    "tpope/vim-obsession",
    lazy = false,
  },
  { "dyng/ctrlsf.vim" },
  { "Yggdroot/indentLine"},
  { "inkarkat/vim-ReplaceWithRegister" },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false,
    config = function()
      require "custom.configs.visual-multi"
    end,
  },
	{
		"mhartington/formatter.nvim",
		event = "VeryLazy",
		opts = function (options)
			return require "custom.configs.formatter"
		end
	},
  { "mhinz/vim-signify" },
	{
		"mfussenegger/nvim-dap",
		config = function ()
			require "custom.configs.dap"
		end
	},
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = "mfussenegger/nvim-dap",
		config = function ()
			local dap = require("dap")
			local dapui = require("dapui")
			require("dapui").setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function ()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function ()
				dapui.close()
			end
		end
	},
  {
    "tommcdo/vim-exchange",
    lazy = false,
  },
  -- {
  --   "codota/tabnine-nvim",
  --   lazy = false,
  --   build = "./dl_binaries.sh",
  --   config = function()
  --     require('tabnine').setup({
  --        disable_auto_comment=true,
  --        accept_keymap="<Tab>",
  --        dismiss_keymap = "<C-]>",
  --        debounce_ms = 800,
  --        suggestion_color = {gui = "#808080", cterm = 244},
  --        exclude_filetypes = {"TelescopePrompt"}
  --     })
  --   end,
  -- },
  {
    "github/copilot.vim",
    lazy = false
  },
  {
	'mvllow/modes.nvim',
	tag = 'v0.2.0',
	lazy = false,
	config = function()
	   require('modes').setup()
	end
  },
  -- Overrides default config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- PHP
  { "adoy/vim-php-refactoring-toolbox" },
  {
    "stephpy/vim-php-cs-fixer",
    ft = "php"
  },

  -- JS
  { "maxmellon/vim-jsx-pretty" },
	{
		"mfussenegger/nvim-lint",
		event = "VeryLazy",
		config = function()
			require "custom.configs.lint"
		end
	},
  {
    "Galooshi/vim-import-js",
    lazy = false,
  }
}

return plugins
