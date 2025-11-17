return {
  -- Target the rustaceanvim plugin
  {
    "mrcjkb/rustaceanvim",
    opts = function(_, opts)
      -- Ensure the server settings structure exists
      opts.server = opts.server or {}
      opts.server.settings = opts.server.settings or {}
      opts.server.settings["rust-analyzer"] = opts.server.settings["rust-analyzer"] or {}

      -- Set the specific diagnostic to be disabled
      opts.server.settings["rust-analyzer"].diagnostics = opts.server.settings["rust-analyzer"].diagnostics or {}
      opts.server.settings["rust-analyzer"].diagnostics.disabled = { "unresolved-proc-macro" }
    end,
  },
}
