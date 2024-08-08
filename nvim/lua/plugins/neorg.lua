return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.completion"] = {
            config = { engine = "nvim-cmp", name = "[Norg]" },
          },
          ["core.integrations.nvim-cmp"] = {},
          ["core.concealer"] = { config = { icon_preset = "diamond" } },
          ["core.summary"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                auto_notes = "~/workspace/notes",
              },
              default_workspace = "auto_notes",
            },
          },
        },
        ["core.esupports.metagen"] = { config = { type = "auto", update_date = true } },
        ["core.qol.toc"] = {},
        ["core.qol.todo_items"] = {},
        ["core.looking-glass"] = {},
        ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
        ["core.export"] = {},
        ["core.export.markdown"] = { config = { extensions = "all" } },
        ["core.summary"] = {},
        ["core.tangle"] = { config = { report_on_empty = false } },
        ["core.ui.calendar"] = {},
        ["core.journal"] = {
          config = {
            strategy = "flat",
            workspace = "Notes",
          },
        },
      })
    end,
  },
}
