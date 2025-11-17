-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
return {
  -- expand the path for the filename a bit
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    table.remove(opts.sections.lualine_c, 1)
    table.remove(opts.sections.lualine_c, #opts.sections.lualine_c)
    table.insert(opts.sections.lualine_c, {
      "filename",
      path = 6,
    })
  end,
}
