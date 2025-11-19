return {
  { 'dnlhc/glance.nvim', cmd = 'Glance' },
  { 'nmac427/guess-indent.nvim' },
  { 'tzachar/highlight-undo.nvim' },
  { 'saecki/live-rename.nvim' },
  { 'kevinhwang91/nvim-hlslens' },
  { 'chrisgrieser/nvim-spider' },
  { 'danielfalk/smart-open.nvim', branch = '0.2.x' },
  { 'mbbill/undotree', cmd = 'UndotreeToggle' },
  {
    'smoka7/multicursors.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'smoka7/hydra.nvim',
    },
    opts = {},
  },
}
