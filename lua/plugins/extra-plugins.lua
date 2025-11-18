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

  -- Auto-detect indentation
  {
    "nmac427/guess-indent.nvim",
    event = "BufReadPre",
    config = function()
      require("guess-indent").setup({})
    end,
  },

  -- Highlight undo/redo changes
  {
    "tzachar/highlight-undo.nvim",
    event = "VeryLazy",
    config = function()
      require("highlight-undo").setup({})
    end,
  },

  -- Live LSP rename with preview
  {
    "saecki/live-rename.nvim",
    event = "LspAttach",
    config = function()
      require("live-rename").setup({})
    end,
  },

  -- Enhanced search results
  {
    "kevinhwang91/nvim-hlslens",
    event = "VeryLazy",
    config = function()
      require("hlslens").setup()
    end,
    keys = {
      { "n", [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], desc = "Next search result" },
      { "N", [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], desc = "Prev search result" },
      { "*", [[*<Cmd>lua require('hlslens').start()<CR>]], desc = "Search word under cursor" },
      { "#", [[#<Cmd>lua require('hlslens').start()<CR>]], desc = "Search word under cursor (backward)" },
    },
  },

  -- Enhanced word motions (w, e, b)
  {
    "chrisgrieser/nvim-spider",
    event = "VeryLazy",
    config = function()
      require("spider").setup({})
    end,
    keys = {
      { "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x" }, desc = "Spider-w" },
      { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x" }, desc = "Spider-e" },
      { "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x" }, desc = "Spider-b" },
    },
  },

  -- Smart file opener with frecency
  {
    "danielfalk/smart-open.nvim",
    branch = "0.2.x",
    dependencies = {
      "kkharji/sqlite.lua",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").load_extension("smart_open")
    end,
    keys = {
      { "<leader>fo", "<cmd>Telescope smart_open<cr>", desc = "Smart Open" },
    },
  },

  -- Visual undo tree
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undotree" },
    },
  },
}
