return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {},
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },
    },
    keys = {
      {
        "\\",
        function()
          require("snacks").explorer({ cwd = LazyVim.root() })
        end,
        desc = "Snacks Explorer",
      },
    },
  },
}
