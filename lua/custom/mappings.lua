local M = {}

M.hop = {
	n = {
		["<Leader>w"] = {"<cmd>HopWord<CR>", "Easy motion"}
	}
}

M.dap = {
	plugin = true,
	n = {
		["<leader>db"] = {
			 "<cmd>DapToggleBreakpoint<CR>",
			"Add breakpoint at line",
		},
		["<leader>dr"] = {
			"<cmd> DapContinue<CR>",
			"Run or continue the debugger"
		}
	}
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<F4>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  },
}

M.comment_additional = {
  -- toggle comment in both modes
  n = {
    ["gcc"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },
  },

  v = {
    ["gcc"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },
}

M.tabs = {
  n = {
    -- cycle through buffers
    ["gt"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["gT"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["gx"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

M.ctrl_p = {
   n = {
		["<C-p>"] = { "<cmd> Telescope find_files <CR>", "find files" },
   }
}

return M
