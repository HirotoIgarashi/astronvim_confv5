return {
  {
    "whitestarrain/md-section-number.nvim",
    ft = "markdown",
    opts = {
      max_level = 4, -- stop to add section number after max_level
      min_level = 1, -- start to add section number after min_level
      ignore_pairs = { -- the markdown content in these pairs will be ignored
        { "```", "```" },
        { "\\~\\~\\~", "\\~\\~\\~" },
        { "<!--", "-->" },
      },
      toc = { -- toc sidebar config
        width = 30,
        position = "right",
        indent_space_number = 2,
        header_prefix = "- ",
      },
    },
  },
}
