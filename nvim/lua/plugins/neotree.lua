return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,

    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },

        window = {
          mappings = {
            ["<Right>"] = "open",
          }
        }
      },
    },
  },
}
