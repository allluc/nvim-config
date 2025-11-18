return {
  -- Code navigation with glance
  {
    "dnlhc/glance.nvim",
    event = "LspAttach",
    config = function()
      require("glance").setup({
        border = {
          enable = true,
        },
      })
    end,
    keys = {
      { "gD", "<cmd>Glance definitions<cr>", desc = "Glance Definitions" },
      { "gR", "<cmd>Glance references<cr>", desc = "Glance References" },
      { "gY", "<cmd>Glance type_definitions<cr>", desc = "Glance Type Definitions" },
      { "gM", "<cmd>Glance implementations<cr>", desc = "Glance Implementations" },
    },
  },
}
