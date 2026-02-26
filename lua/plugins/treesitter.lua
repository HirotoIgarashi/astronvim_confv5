-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
      "latex",
      "norg",
      "svelte",
      "typst",
      "vue",
    },
    -- List of languages to ensure that the parser is installed
    -- ensure_installed = { "c", "lua", "vim", "javascript", "typescript", "html", "css" },

    -- Install parsers synchronously (only applied when running :TSInstall in Neovim)
    sync_install = false,

    -- Automatically install missing parsers when entering a buffer
    auto_install = true,

    -- Configuration of specific features
    highlight = {
      enable = true, -- Enables syntax highlighting
      disable = { "csv" }, -- list of language parsers to disable
    },
    indent = { enable = true }, -- Enables indentation
    -- You can also configure other modules like `incremental_selection`, `textobjects`, etc.
  },
}
