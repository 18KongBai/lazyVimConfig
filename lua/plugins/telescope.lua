local actions = require("telescope.actions")
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-media-files.nvim",
      config = function()
        require("telescope").load_extension("media_files")
      end,
    },
    {
      "nvim-lua/popup.nvim",
    },
    {
      "nvim-lua/plenary.nvim",
    },
  },

  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "webp", "jpg", "jpeg" },
      -- find command (defaults to `fd`)
      find_cmd = "rg",
    },
  },

  keys = {
    {
      "<leader>fi",
      function()
        require("telescope").extensions.media_files.media_files()
      end,
      desc = "Find all img",
    },
  },

  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = {
            actions.move_selection_next,
            type = "action",
            opts = { nowait = true, silent = true },
          },
          ["<C-k>"] = {
            actions.move_selection_previous,
            type = "action",
            opts = { nowait = true, silent = true },
          },
        },
      },
    },
  },
}
