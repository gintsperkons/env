return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  --@module "neo-tree"
  --@type neotree.Config?
  opts = {
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          require("neo-tree").close_all()
        end,
      },
    },
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    window = {
      width = 30,
    },
  },
  keys = require("Thalune.core.keymaps").neo_tree,
}
