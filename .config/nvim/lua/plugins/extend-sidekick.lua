return {
  {
    "folke/sidekick.nvim",
    opts = {
      cli = {
        win = {
          keys = {
            -- Disable sidekick's nav_down/nav_up so global terminal keymaps
            -- in keymaps.lua can handle C-j/C-k for tmux pane navigation
            nav_down = false,
            nav_up = false,
          },
        },
      },
    },
  },
}
