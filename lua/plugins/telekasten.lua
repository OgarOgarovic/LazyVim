return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = {"nvim-telescope/telescope.nvim"},
    config = function()
      local home = vim.fn.expand("~/secbr")
      require("telekasten").setup({
        home = home,
        dailies = home .. "/daily",
        weeklies = home .. "/weekly",
        templates = home .. "/templates",
        extension = ".md",
        template_new_note = home .. "/templates/new_note",
        template_new_daily = home .. "/templates/new_daily",
        template_new_weekly = home .. "/templates/new_weekly",
      })
    end,
    keys = {
      {
        "<leader>kn",
        function() require("telekasten").new_note() end,
        desc = "New telekastenote",
      },
    },
  },
}
