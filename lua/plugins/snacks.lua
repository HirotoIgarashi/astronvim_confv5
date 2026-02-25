return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- Pickerのカスタマイズ設定
    },
    bigfile = { enabled = true },
    explorer = { enabled = true }, -- エクスプローラーを有効化
    quickfile = { enabled = true },
    words = { enabled = true },
    terminal = {
      win = {
        keys = {},
      },
    },
    ---@class snacks.picker.db.Config
    db = {
      -- path to the sqlite3 library
      -- If not set, it will try to load the library by name.
      -- On Windows it will download the library from the internet.
      -- sqlite3_path = "usr/bin/sqlite3",
    },
  },
}
