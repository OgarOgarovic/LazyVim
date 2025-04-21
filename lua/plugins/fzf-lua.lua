return {
  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      opts.actions = opts.actions or {}
      opts.actions.files = opts.actions.files or {}
      opts.actions.files["enter"] = {
        fn = function(sel, o)
          require("fzf-lua").hide()
          require("fzf-lua.actions").file_edit_or_qf(sel, o)
        end,
        exec_silent = true,
      }
      return opts
    end,
  },
}
