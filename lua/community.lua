-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  -- BAR/LINE PLUGINS
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  -- CODE RUNNER PLUGINS
  -- COLOR PLUGINS
  -- COLORSCHEMES
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- COMMENT PLUGINS
  -- COMPLETION PLUGINS
  -- DEBUGGIN PLUGINS
  -- DIAGNOSTICS PLUGINS
  -- EDITOR PLUGINS
  { import = "astrocommunity.editing-support.treesj" },
  -- FILE EXPLORE PLUGINS
  -- GIT PLUGINS
  -- INDENT PLUGINS
  -- LSP PLUGINS
  -- MARKDOWN/LATEX PLUGINS
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.markmap-nvim" },
  { import = "astrocommunity.markdown-and-latex.markview-nvim" },
  -- MEDIA PLUGINS
  -- MOTION PLUGINS
  { import = "astrocommunity.motion.nvim-surround" },
  -- NOTE TAKING PLUGINS
  { import = "astrocommunity.note-taking.global-note-nvim" },
  -- PROGRAMMING LANGUAGE SUPPORT PLUGINS
  -- PROJECT PLUGINS
  -- REGISTER PLUGINS
  -- REMOTE DEVELOPMENT PLUGINS
  -- SCROLLING PLUGINS
  -- SEARCH PLUGINS
  -- SPLIT/WINDOWS PLUGINS
  -- STARTUP PLUGINS
  -- SYNTAX PLUGINS
  -- TERMINAL INTEGRATION PLUGINS
  -- TEST PLUGINS
  -- UTILITY PLUGINS
  -- WORKFLOW PLUGINS
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
}
