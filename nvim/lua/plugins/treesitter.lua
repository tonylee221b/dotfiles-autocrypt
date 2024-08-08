return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cmake",
        "cpp",
        "css",
        "gitignore",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "http",
        "java",
        "rust",
        "scss",
        "sql",
        "svelte",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      require("nvim-treesitter.install").compilers = { "gcc" }

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
  {
    "folke/which-key.nvim",
    opts = {
      layout = {
        height = {
          min = 4,
          max = 35,
        },
      },
    },
  },
}
