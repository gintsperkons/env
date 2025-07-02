return {
  {
    "EdenEast/nightfox.nvim",
    priority = 1000, -- Load first
    config = function()
      vim.cmd("colorscheme carbonfox")
    end,
  },
}
