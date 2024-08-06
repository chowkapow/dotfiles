return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
	      hide_dotfiles = false,
	      hide_gitignored = false,
	      hide_by_name = {
	        '.git',
          'node_modules'
	        -- '.DS_Store',
	        -- 'thumbs.db',
	      },
	      never_show = {},
      },
    }
  }
}
