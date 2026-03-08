-- ~/.config/nvim/lua/plugins/snacks_explorer.lua
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            -- force-show these even if hidden/ignored
            include = {
              ".env",
            },
            win = {
              list = {
                keys = {
                  -- Bypass vim-tmux-navigator's vim-first logic and go straight to tmux,
                  -- because wincmd j/k from a vertical split (explorer) moves to the
                  -- buffer window instead of recognizing we're at the edge.
                  ["<C-j>"] = function()
                    if vim.env.TMUX then
                      vim.fn.system("tmux select-pane -D")
                    end
                  end,
                  ["<C-k>"] = function()
                    if vim.env.TMUX then
                      vim.fn.system("tmux select-pane -U")
                    end
                  end,
                },
              },
            },
          },

          files = {
            hidden = true,
            ignored = true,

            exclude = {
              ".github",
              ".venv",
              ".husky",
              "node_modules",
            },

            include = {
              ".env",
            },
          },

          grep = {
            hidden = true,
            ignored = true,
            args = { "--no-ignore" },

            exclude = {
              ".github",
              ".venv",
              ".husky",
              "node_modules",
            },

            include = {
              ".env",
            },
          },
        },
      },
    },
  },
}
