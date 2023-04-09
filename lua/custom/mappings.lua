local M = {}

M.easymotion = {
	n = {
		["<Leader>s"] = {"<cmd>easymotion-bd-f2", "Easy motion"}
	}
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
