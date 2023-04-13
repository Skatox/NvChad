local plugins = {
  { "tpope/vim-fugitive" },
  { "easymotion/vim-easymotion" },
  { "michaeljsmith/vim-indent-object" },
  { "tpope/vim-surround"},

  -- IDE
  {
    "amiorin/vim-project",
    lazy = false,
    config = function()
        vim.cmd("source ~/.config/nvim/lua/custom/configs/vim-project.nvim")
    end,
  },
  { "tpope/vim-obsession" },
  { "dyng/ctrlsf.vim" },
  { "Yggdroot/indentLine"},
  { "inkarkat/vim-ReplaceWithRegister" },
  {
    "mg979/vim-visual-multi",
    branch = "master"
  },
  { "mhinz/vim-signify" },
  { "tommcdo/vim-exchange" },
  {
    "codota/tabnine-nvim",
    lazy = false,
    build = "./dl_binaries.sh",
    config = function()
      require('tabnine').setup({
         disable_auto_comment=true,
         accept_keymap="<Tab>",
         dismiss_keymap = "<C-]>",
         debounce_ms = 800,
         suggestion_color = {gui = "#808080", cterm = 244},
         exclude_filetypes = {"TelescopePrompt"}
      })
    end,
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
}

return plugins
