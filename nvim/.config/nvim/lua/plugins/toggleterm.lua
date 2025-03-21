return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup()

      vim.keymap.set({ "n", "t" }, "<leader>`", "<C-\\><C-n>:ToggleTerm direction=vertical size=70<CR>")
    end,
  },
}
