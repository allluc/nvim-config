return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        zig = { "zigfmt" },
      },
      formatters = {
        zigfmt = {
          command = "zig",
          args = { "fmt", "--stdin" },
          stdin = true,
        },
      },
    },
  },
}
