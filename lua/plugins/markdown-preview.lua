return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    lazy = true,
    -- build = function() vim.fn["mkdp#util#install"]() end,
    build = "cd app && npm install && git reset --hard",
  },
}
