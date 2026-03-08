-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shift+Enter inserts a newline in terminal mode (e.g. sidekick.nvim chat input)
vim.keymap.set("t", "<S-CR>", "\n", { desc = "Insert newline in terminal" })

-- Navigate to tmux panes from terminal mode (consistent with snacks explorer behavior).
-- Uses buffer-local keymaps via TermOpen so they can't be overridden by plugins.
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.keymap.set("t", "<C-j>", function()
      if vim.env.TMUX then
        vim.fn.system("tmux select-pane -D")
      end
    end, { buffer = 0, desc = "Navigate to tmux pane below" })

    vim.keymap.set("t", "<C-k>", function()
      if vim.env.TMUX then
        vim.fn.system("tmux select-pane -U")
      end
    end, { buffer = 0, desc = "Navigate to tmux pane above" })
  end,
})
