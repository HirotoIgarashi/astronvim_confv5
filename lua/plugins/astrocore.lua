-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        -- カーソル行からの相対的な行番号を表示する
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        -- テキストの表示方法を変更します。バッファ内のテキストは変更されません。
        -- trueにすると、ウィンドウの幅より長い行が折り返され、表示が次の行に 続きます。
        -- falseの場合、行は折り返されず、長い行の一部のみが表示されます。
        wrap = true, -- sets vim.opt.wrap
        -- wrap = false, -- sets vim.opt.wrap

        -- 以下は自分で設定
        -- trueならタブキーを入力時にタブを数文字分のスペースに置き換える
        expandtab = true,
        -- タブ文字の幅を４文字分として表示する
        tabstop = 4,
        -- インデントのスペース幅を４文字とする
        shiftwidth = 4,
        -- smarttab = false,

        -- カーソルが存在する行にハイライトを当ててくれます。
        cursorline = true,

        -- 80文字目にラインを入れる
        colorcolumn = "80",

        -- 挿入されるテキストの最大幅。長い行は、この幅を得るために空白の後に
        -- 分割されます。値をゼロにすると、これが無効になります。
        -- 「textwidth」がゼロの場合、「wrapmargin」が使用される可能性が
        -- あります。
        textwidth = 80,

        -- formatoptions = "tcqj" <- default
        -- t: 'textwidth'が設定されている場合、自動的にテキスト部分を改行する。
        -- c: 自動的にコメントを改行。自動的にコメントリーダーを挿入する。
        -- q: gqコマンドでコメントをフォーマットする。
        --    Note that formatting will not change blank lines or lines
        --    containing only the comment leader. A new paragraph starts after
        --    such a line, or when the comment leader changes.
        -- j: 複数行のコメントを連結する際に、余計なコメントリーダーを消す
        -- r: 新しい行が挿入されるコメントにおけるコメントリーダーを挿入する。
        --    automatically insert the current comment leader after hitting
        --    <Enter> in Insert mode.
        -- o: Oやoを使用して新しい行が作られるコメントにおいて、
        --    コメントリーダーを挿入する。
        --    automatically insert the current comment leader after hitting
        --    'o' or 'O' in Normal mode. In case comment is unwanted in a
        --    specific place use CTRL-U to quickly delete it. i_CTRL_U
        -- local_vim.opt.formatoptions:append { m = true, M = true }
        -- local_vim.opt.formatoptions = "tcqjrolmM"
        -- formatoptions = "tcqjromM",
        formatoptions = "tcqjn",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file

        -- 以下は自分で設定
        python3_host_prog = "/usr/bin/python3",
        -- enable or disable auto formatting at start
        -- (lsp.formatting.format_on_save must be enabled)
        autoformat_enabled = true,
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
    },
  },
}
