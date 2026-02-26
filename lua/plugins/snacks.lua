return {
  "folke/snacks.nvim",

  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      -- Pickerのカスタマイズ設定
    },
    bigfile = { enabled = true },
    explorer = { enabled = true }, -- エクスプローラーを有効化
    quickfile = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    terminal = {
      win = {
        keys = {},
      },
    },
  },
  config = function(_, opts)
    require("snacks").setup(opts)
    -- ここで明示的にセットする
    -- Heirline の後に実行されるように少し遅らせて適用、
    -- または明示的に snacks の関数をセットする
    vim.schedule(function() vim.opt.statuscolumn = [[%!v:lua.require'snacks.statuscolumn'.get()]] end)
  end,
}
